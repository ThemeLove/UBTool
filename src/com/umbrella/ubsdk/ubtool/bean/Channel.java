package com.umbrella.ubsdk.ubtool.bean;

import java.util.ArrayList;
import java.util.Map;

public class Channel {
	
	private String ID ="";							//渠道号
	private String name ="";						//渠道名称 例如 baidu、meizu
	private String game ="";						//该渠道要打包的游戏
	private String icon ="rb";						//渠道自定义icon位置 lt、lb、rt、rb
	private String suffix ="";						//包名后缀
	private String keystore ="false";				//渠道自定义签名默认不支持
	private String splash = "false";				//是否开启闪屏，默认不开启
	private String script = "false";				//是否支持渠道自定义脚本
	private String desc	= "渠道描述字段";			//渠道描述字段
	private Map<String, String> channelParamMap;	//渠道参数，最后生成到ubsdk_config.xml中的map元素
	private Map<String, String> metaDataMap;		//渠道参数，最后生成到AndroidManifest.xml中的meta-data元素
	private ArrayList<String>   pluginList;			//该渠道要集成的插件集合

	
	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGame() {
		return game;
	}

	public void setGame(String game) {
		this.game = game;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public String getSuffix() {
		return suffix;
	}

	public void setSuffix(String suffix) {
		this.suffix = suffix;
	}

	public String getKeystore() {
		return keystore;
	}

	public void setKeystore(String keystore) {
		this.keystore = keystore;
	}

	public String getSplash() {
		return splash;
	}

	public void setSplash(String splash) {
		this.splash = splash;
	}

	public String getScript() {
		return script;
	}

	public void setScript(String script) {
		this.script = script;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public Map<String, String> getChannelParamMap() {
		return channelParamMap;
	}

	public void setChannelParamMap(Map<String, String> channelParamMap) {
		this.channelParamMap = channelParamMap;
	}

	public Map<String, String> getMetaDataMap() {
		return metaDataMap;
	}

	public void setMetaDataMap(Map<String, String> metaDataMap) {
		this.metaDataMap = metaDataMap;
	}

	public ArrayList<String> getPluginList() {
		return pluginList;
	}

	public void setPluginList(ArrayList<String> pluginList) {
		this.pluginList = pluginList;
	}

	@Override
	public String toString() {
		return name;
	}
}
