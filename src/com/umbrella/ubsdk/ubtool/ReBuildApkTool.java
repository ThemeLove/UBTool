package com.umbrella.ubsdk.ubtool;

import java.io.File;

public class ReBuildApkTool {
	private static String BASE_PATH;
	private static String WORK_PATH;
	private static String BAK_PATH;
	private static String TEMP_PATH;
	private static String TOOLS_PATH;

	public static void main(String[] args) {
		initPath();
	}

	private static void initPath() {
		BASE_PATH = System.getProperty("user.dir");
		TOOLS_PATH=BASE_PATH+File.separator+"tool";
		WORK_PATH = BASE_PATH+File.separator+"work";
		BAK_PATH = WORK_PATH+File.separator+"bak";
		TEMP_PATH = WORK_PATH+File.separator+"temp";
		String unSignApkPath=BASE_PATH+File.separator+"unSignApk.apk";
//		String final=BASE_PATH+File.separator+"unSignApk.apk";
		
	}
}
