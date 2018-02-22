package com.umbrella.ubsdk.ubtool.test.sort.javactest;

import java.io.File;
import java.io.IOException;

public class Test {
	public static void main(String[] args) throws IOException {
		//		/E:/UBSDK/UBSDKTool/bin/
		//因为当前类会被编译到/E:/UBSDK/UBSDKTool/bin/下
		String path = Class.class.getClass().getResource("/").getPath() ;
		String packageName = Test.class.getPackage().getName();
		System.out.println(packageName);
		System.out.println(path);
		String basePath = System.getProperty("user.dir");
		System.out.println(basePath);
		
		String packageFullPath=(basePath+File.separator+"src"+File.separator+packageName).replace(".",File.separator);
		
		String girlPath=packageFullPath+File.separator+"FairyGirl.java";
		System.out.println(girlPath);
		
//		String javacCommand="javac -source 1.7 -target 1.7 -encoding UTF-8 Girl.java";
//		String javacCommand="javac -source 1.7 -target 1.7 -encoding UTF-8 FairyGirl.java";
		String javacCommand="javac -source 1.7 -target 1.7 -encoding UTF-8 FairyGirl.java Girl.java";
		
		File currentPackageFile = new File(packageFullPath);
		Runtime.getRuntime().exec(javacCommand,null,currentPackageFile);
	}
}
