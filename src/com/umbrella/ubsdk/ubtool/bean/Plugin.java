package com.umbrella.ubsdk.ubtool.bean;

import java.util.Map;

public class Plugin {
	private String ID;			//插件的唯一标示ID
	private String name;		//插件的名称
	private String game;		//插件要打包的游戏名称
	private String script="false";		//插件是否支持自定义脚本
	private String desc;		//插件描述	
	private Map<String,String> pluginParamMap;	//插件的参数集合
	private Map<String,String> metaDataMap;		//插件的配置的meta-data参数，将来合并到AndroidManifest.xml中
	
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
	public Map<String, String> getPluginParamMap() {
		return pluginParamMap;
	}
	public void setPluginParamMap(Map<String, String> pluginParamMap) {
		this.pluginParamMap = pluginParamMap;
	}
	public Map<String, String> getMetaDataMap() {
		return metaDataMap;
	}
	public void setMetaDataMap(Map<String, String> metaDataMap) {
		this.metaDataMap = metaDataMap;
	}
	
}
