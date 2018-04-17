package com.umbrella.ubsdk.ubtool.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

/**
 *java实现的MulDex分包
 *[这里主要是当一个smali目录里方法数超出65535的时候，分到第二个smali_classes2里，以此类推
 *！！！！！这里当游戏本身就有第二个smali目录的时候，可能出问题，因为这里只是读取第一个smali目录的方法数然后超过部分直接拷贝到第二个，currentMethodCount的计数没有包含第二个smali目录里本来就有的方法数;
 *一般第二个smali_classes2目录里的smali文件的方法数比较少，不会出问题。待优化！！！！！
 *这样在apk回编的时候会对应生成classes.dex、classes2.dex
 *@author:qingshanliao
 *@date	 :2018年2月27日
 */
public class MulDexUtil {
	private static int currentDexIndex=1;//当前smali目录个数的index
	private static int maxMethodCount=65000;//65535,单个smali目录最多方法数的上限
	private static int currentMethodCount=0;//当前重新计数的方法数
	private static int totalMethodCount=0;//累计的方法数
	public static ArrayList<String> allMethodList=new ArrayList<>();
	
	private static String TEMP_PATH=System.getProperty("user.dir")+File.separator+"work"+File.separator+"temp";
	
	public static int mulDex(String smaliDirPath) throws IOException{
		ArrayList<File> smaliFileList = new ArrayList<File>();
		getDirSmaliFileList(smaliDirPath, smaliFileList);
		
		for (File file : smaliFileList) {//先遍历一遍将"/com/umbrella/game/ubsdk" 和 "/android/support/multidex" 计数
			if (file.getAbsolutePath().contains("/com/umbrella/game/ubsdk")||file.getAbsolutePath().contains("/android/support/multidex")) {
				int smaliFileMethodCount = getSmaliFileMethodCount(file);
				currentMethodCount+=smaliFileMethodCount;
				totalMethodCount+=smaliFileMethodCount;
//				System.out.println(file.getName()+" methodCount----->"+smaliFileMethodCount);
			}
		}
		
		
		for (File file : smaliFileList) {
//			这样确保"/com/umbrella/game/ubsdk" 和 "/android/support/multidex"留在第一个smali里，不被拷贝到其他smali目录里
			if (file.getAbsolutePath().contains("/com/umbrella/game/ubsdk")||file.getAbsolutePath().contains("/android/support/multidex"))continue;
			
			int smaliFileMethodCount = getSmaliFileMethodCount(file);
			currentMethodCount+=smaliFileMethodCount;
			totalMethodCount+=smaliFileMethodCount;
//			System.out.println(file.getName()+" methodCount----->"+smaliFileMethodCount);
			if (totalMethodCount>=maxMethodCount) {//当第一个smali目录里的方法数超出maxMethodCount后，剩下的文件都需要copy到其他smali目录
				if (currentMethodCount>=maxMethodCount) {
					currentDexIndex++;
					currentMethodCount=smaliFileMethodCount;
					System.out.println("SmaliDirChange----->"+"smali_classes"+currentDexIndex);
				}
				
//				copy当前smali文件到下一个smali目录
				String targetDexPath=TEMP_PATH+File.separator+"smali_classes"+currentDexIndex;
				String baseDexPath=TEMP_PATH+File.separator+"smali";
				String targetSmaliPath=file.getAbsolutePath().substring(baseDexPath.length());
//				System.out.println("sourceFilePath:"+file.getAbsolutePath());
//				System.out.println("targetSmaliPath:"+targetSmaliPath);
				String targetPath=targetDexPath+targetSmaliPath;
//				System.out.println("targetPath:"+targetPath);
				File targetFile = new File(targetPath);
				if (!targetFile.exists()) {
					new File(targetFile.getParent()).mkdirs();
					targetFile.createNewFile();
				}
				FileUtil.copyFile(file, targetFile);
				
//				拷贝完成，删除原文件
				file.delete();
			}
		}
		
		return totalMethodCount;
	}
	
	@SuppressWarnings("resource")
	public static int getSmaliFileMethodCount(File smaliFile) throws IOException{
		int methodCount=0;
		FileReader fr = new FileReader(smaliFile);
		BufferedReader br = new BufferedReader(fr);
		int lineIndex=0;
		String str=null;
		String className="";
		while((str=br.readLine())!=null){
			
//			1.解析.smali文件的第一行	
			if (lineIndex==0) {
				String classLine=str.trim();
				if (!classLine.startsWith(".class")) {
//					System.out.println(smaliFile.getName()+" not startswith .class");
					return 0;
				};
//				2.获取当前.smali文件的类名
				String[] strArr = classLine.split("\\s+");//用一个或多个空格分割
				className=strArr[strArr.length-1];
			}else{
				String methodName="";
				str=str.trim();
				if (str.startsWith(".method")) {
					String[] strArr = str.split("\\s+");
					methodName=className+"-->"+strArr[strArr.length-1];
				}else if (str.startsWith("invoke-")) {
					String[] strArr = str.split("\\s+");
					methodName=strArr[strArr.length-1];
				}else{
//					System.out.println(smaliFile.getName()+" this line is not startswith .method or invoke-");
				}
				if (!allMethodList.contains(methodName)) {
					allMethodList.add(methodName);
					methodCount++;
				}
			}
			lineIndex++;
		}
		
		fr.close();
		br.close();
		
		return methodCount;
	}
	
	/**
	 * 获取一个目录里所有.smali结尾的文件集合
	 * @param smaliDirPath
	 * @param smaliList
	 */
	public static void getDirSmaliFileList(String smaliDirPath,ArrayList<File> smaliFileList){
		File smaliFile = new File(smaliDirPath);
		File[] listFiles = smaliFile.listFiles();
		for (File file : listFiles) {
			if (file.exists()) {
				if (file.isDirectory()) {//如果是目录
					getDirSmaliFileList(file.getAbsolutePath(), smaliFileList);
				}else{//如果是文件
					if (file.getName().endsWith(".smali")) {
						smaliFileList.add(file);
					}
				}
			}
		}
	}
}
