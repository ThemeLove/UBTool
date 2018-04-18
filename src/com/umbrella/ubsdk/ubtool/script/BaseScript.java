package com.umbrella.ubsdk.ubtool.script;

import java.io.File;
import java.io.IOException;

import com.umbrella.ubsdk.ubtool.bean.Channel;
import com.umbrella.ubsdk.ubtool.bean.Game;

/**
 * 脚本基类
 * @author qingshanliao
 */
public abstract class BaseScript {
	public static String BASE_PATH="";			//当前项目的根目录
	public static String TOOLS_PATH="";		//tools目录
	public static String CONFIG_PATH="";		//config目录
	public static String GAMES_PATH="";		//games目录
	public static String WORK_PATH="";			//work目录
	public static String BAK_PATH="";			//work/bak目录，游戏母包反编译备份目录
	public static String TEMP_PATH="";			//work/temp目录，合并游戏母包和渠道资源时的临时目录
	public static String OUT_PATH="";			//out目录
	static {
		BASE_PATH=System.getProperty("user.dir");
		TOOLS_PATH=BASE_PATH+File.separator+"tools";
		CONFIG_PATH=BASE_PATH+File.separator+"config";
		GAMES_PATH=BASE_PATH+File.separator+"games";
		WORK_PATH=BASE_PATH+File.separator+"work";
		BAK_PATH=WORK_PATH+File.separator+"bak";
		TEMP_PATH=WORK_PATH+File.separator+"temp";
		OUT_PATH=BASE_PATH+File.separator+"out";
	}
	
	public abstract void execute(Game game,Channel channel) throws IOException;
}
