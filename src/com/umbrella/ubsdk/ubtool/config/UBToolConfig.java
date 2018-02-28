package com.umbrella.ubsdk.ubtool.config;

import java.util.HashMap;

public class UBToolConfig {
	public static final String DEFAULT_APKTOOL_VERSION="2-3-0";
	public static final String[] jinArr=new String[]{"armeabi","arm64-v8a","armeabi-v7a","mips","mips64","x86","x86_64"};
	public static final HashMap<String,Integer> iconMap=new HashMap<String,Integer>();
	static {
		iconMap.put("drawable-ldpi",32 );
		iconMap.put("drawable-mdpi",48);
		iconMap.put("drawable-hdpi",72);
		iconMap.put("drawable-xhdpi",96);
		iconMap.put("drawable-xxhdpi",144);
		iconMap.put("drawable-xxxhdpi",192);
		iconMap.put("mipmap-ldpi", 32);
		iconMap.put("mipmap-mdpi", 48);
		iconMap.put("mipmap-hdpi", 72);
		iconMap.put("mipmap-xhdpi", 96);
		iconMap.put("mipmap-xxhdpi", 144);
		iconMap.put("mipmap-xxxhdpi", 192);
	}
}
