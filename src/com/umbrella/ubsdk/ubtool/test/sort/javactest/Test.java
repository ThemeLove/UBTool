package com.umbrella.ubsdk.ubtool.test.sort.javactest;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

import org.dom4j.DocumentException;

import com.umbrella.ubsdk.ubtool.utils.MulDexUtil;
import com.umbrella.ubsdk.ubtool.utils.TextUtil;


public class Test {
	
	public static void main(String[] args) throws IOException, DocumentException {
		//		/E:/UBSDK/UBSDKTool/bin/
		//因为当前类会被编译到/E:/UBSDK/UBSDKTool/bin/下
//		String path = Class.class.getClass().getResource("/").getPath() ;
//		String packageName = Test.class.getPackage().getName();
//		System.out.println(packageName);
//		System.out.println(path);
//		String basePath = System.getProperty("user.dir");
//		System.out.println(basePath);
//		
//		String packageFullPath=(basePath+File.separator+"src"+File.separator+packageName).replace(".",File.separator);
//		
//		String girlPath=packageFullPath+File.separator+"FairyGirl.java";
//		System.out.println(girlPath);
//		
////		String javacCommand="javac -source 1.7 -target 1.7 -encoding UTF-8 Girl.java";
////		String javacCommand="javac -source 1.7 -target 1.7 -encoding UTF-8 FairyGirl.java";
//		String javacCommand="javac -source 1.7 -target 1.7 -encoding UTF-8 FairyGirl.java Girl.java";
//		
//		File currentPackageFile = new File(packageFullPath);
//		Runtime.getRuntime().exec(javacCommand,null,currentPackageFile);
		initPath();
		TEMP_PATH=WORK_PATH+File.separator+"temp";			
//		 String gameManifestPath=TEMP_PATH+File.separator+"AndroidManifest.xml";
//		 System.out.println(gameManifestPath);
//		 SAXReader saxReader = new SAXReader();
//		 FileInputStream fileInputStream = new FileInputStream(new File(gameManifestPath));
//		 Document manifestDOM1 = saxReader.read(fileInputStream);
//		 String oldGamePackageName = manifestDOM1.getRootElement().attributeValue("package");
//		 replacePackageName(new File(gameManifestPath), new String[]{oldGamePackageName,"{PACKAGENAME}"},"com.game.sgz.pptv");
		 
		 MulDexUtil.mulDex(TEMP_PATH+File.separator+"smali");
	}
	private static String BASE_PATH="";			//当前项目的根目录
	private static String TOOLS_PATH="";		//tools目录
	private static String CONFIG_PATH="";		//config目录
	private static String GAMES_PATH="";		//games目录
	private static String WORK_PATH="";			//work目录
	private static String BAK_PATH="";			//work/bak目录，游戏母包反编译备份目录
	private static String TEMP_PATH="";			//work/temp目录，合并游戏母包和渠道资源时的临时目录
	private static String OUT_PATH="";			//out目录
	private static void initPath(){
		BASE_PATH=System.getProperty("user.dir");
		TOOLS_PATH=BASE_PATH+File.separator+"apktool";
		CONFIG_PATH=BASE_PATH+File.separator+"config";
		GAMES_PATH=BASE_PATH+File.separator+"games";
		WORK_PATH=BASE_PATH+File.separator+"work";
		BAK_PATH=WORK_PATH+File.separator+"bak";
		TEMP_PATH=WORK_PATH+File.separator+"temp";
		OUT_PATH=BASE_PATH+File.separator+"out";
	}
	private static String LINE_SEPARATOR=System.getProperty("line.separator", "\r\n");
	private static void replacePackageName(File file,String[] fromStrArr,String toStr) throws IOException{
//		先读
		FileReader fileReader = new FileReader(file);
		BufferedReader br = new BufferedReader(fileReader);
		StringBuffer sb = new StringBuffer();
		String str="";
		while ((str=br.readLine())!=null) {
			if (!TextUtil.isEmpty(str)) {
				for (String fromStr : fromStrArr) {
					str = str.replace(fromStr, toStr);
				}
				sb.append(str);
				sb.append(LINE_SEPARATOR);
			}
		}
		br.close();
//		后写
		FileWriter fileWriter = new FileWriter(file);
		BufferedWriter bw = new BufferedWriter(fileWriter);
		bw.write(sb.toString());
		bw.close();
	}
}
