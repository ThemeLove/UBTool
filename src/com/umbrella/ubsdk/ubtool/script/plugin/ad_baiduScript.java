package com.umbrella.ubsdk.ubtool.script.plugin;

import java.io.File;
import java.io.IOException;

import com.umbrella.ubsdk.ubtool.bean.Channel;
import com.umbrella.ubsdk.ubtool.bean.Game;
import com.umbrella.ubsdk.ubtool.script.BaseScript;
import com.umbrella.ubsdk.ubtool.utils.FileUtil;

/**
 * 百度广告插件自定义插件
 * @author qingshanliao
 */
public class ad_baiduScript extends BaseScript{
	private static final String TAG=ad_baiduScript.class.getSimpleName();
	/**
	 * 百度广告插件要将assets/adhmcfg拷贝到游戏assets/adhmcfg目录下
	 */
	@Override
	public void execute(Game game, Channel channel) throws IOException {
		System.out.println(TAG+"----->execute");
		System.out.println(TAG+"----->execute");
		String sourcePath=GAMES_PATH+File.separator+game.getName()+File.separator+"plugin"+File.separator+"ad_baidu"+File.separator+"adhmcfg";
		String targetPath=TEMP_PATH+File.separator+"assets"+File.separator+"adhmcfg";
		File sourceFile = new File(sourcePath);
		if (!sourceFile.exists()) {
			String parent = sourceFile.getParent();
			new File(parent).mkdirs();
			sourceFile.createNewFile();
		}
		File targetFile = new File(targetPath);
		if (!targetFile.exists()) {
			String parent = targetFile.getParent();
			new File(parent).mkdirs();
			targetFile.createNewFile();
		}
		FileUtil.copyFile(sourceFile, targetFile);
	}
}
