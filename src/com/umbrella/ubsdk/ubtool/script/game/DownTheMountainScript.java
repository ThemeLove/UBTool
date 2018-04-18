package com.umbrella.ubsdk.ubtool.script.game;

import java.io.IOException;

import com.umbrella.ubsdk.ubtool.bean.Channel;
import com.umbrella.ubsdk.ubtool.bean.Game;
import com.umbrella.ubsdk.ubtool.script.BaseScript;

public class DownTheMountainScript extends BaseScript{
	private static final String TAG=DownTheMountainScript.class.getSimpleName();
	@Override
	public void execute(Game game, Channel channel) throws IOException {
		System.out.println(TAG+"----->execute");
	}
}
