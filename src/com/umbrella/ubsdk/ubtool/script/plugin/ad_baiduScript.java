package com.umbrella.ubsdk.ubtool.script.plugin;

import java.io.IOException;

import com.umbrella.ubsdk.ubtool.bean.Channel;
import com.umbrella.ubsdk.ubtool.bean.Game;
import com.umbrella.ubsdk.ubtool.script.BaseScript;

/**
 * 百度广告插件自定义插件
 * @author qingshanliao
 */
public class ad_baiduScript extends BaseScript{
	private static final String TAG=ad_baiduScript.class.getSimpleName();
	@Override
	public void execute(Game game, Channel channel) throws IOException {
		System.out.println(TAG+"----->execute");
	}
}
