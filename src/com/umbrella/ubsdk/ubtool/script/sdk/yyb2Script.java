package com.umbrella.ubsdk.ubtool.script.sdk;

import java.io.File;
import java.io.IOException;

import com.umbrella.ubsdk.ubtool.bean.Channel;
import com.umbrella.ubsdk.ubtool.bean.Game;
import com.umbrella.ubsdk.ubtool.script.BaseScript;
import com.umbrella.ubsdk.ubtool.utils.FileUtil;

/**
 * 应用宝渠道自定义插件
 * @author qingshanliao
 *
 */
public class yyb2Script extends BaseScript{
	private final String TAG=yyb2Script.class.getSimpleName();
	/**
	 * YYB渠道
	 * 1.要将game/sdk/yyb/ysdkconf.ini中的ysdk配置文件copy到打包过程中的Temp/assets/目录下;
	 */
	@Override
	public void execute(Game game, Channel channel) throws IOException {
		System.out.println(TAG+"----->execute");
		String ysdkConfSourcePath=GAMES_PATH+File.separator+game.getName()+File.separator+"sdk"+File.separator+"yyb2"+File.separator+"ysdkconf.ini";
		String ysdkConfTargetPath=TEMP_PATH+File.separator+"assets"+File.separator+"ysdkconf.ini";
		File ysdkConfSourceFile = new File(ysdkConfSourcePath);
		if (!ysdkConfSourceFile.exists()) {
			String parent = ysdkConfSourceFile.getParent();
			new File(parent).mkdirs();
			ysdkConfSourceFile.createNewFile();
		}
		File ysdkConfTargetFile = new File(ysdkConfTargetPath);
		if (!ysdkConfTargetFile.exists()) {
			String parent = ysdkConfTargetFile.getParent();
			new File(parent).mkdirs();
			ysdkConfTargetFile.createNewFile();
		}
		FileUtil.copyFile(ysdkConfSourceFile, ysdkConfTargetFile);
		
	}
}
