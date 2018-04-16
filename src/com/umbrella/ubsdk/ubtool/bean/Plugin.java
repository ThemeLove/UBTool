package com.umbrella.ubsdk.ubtool.bean;

import java.util.HashMap;
import java.util.Map;

public class Plugin {
	/**
	 * 插件的唯一标示
	 */
	private String id;
	
	private String name;
	/**
	 * 插件的参数
	 */
	private Map<String,String> pluginParams;
	/**
	 * 插件要配置的meta-data
	 */
	private Map<String,String> metaDatas;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Map<String, String> getPluginParams() {
		return pluginParams;
	}
	public void setPluginParams(Map<String, String> pluginParams) {
		this.pluginParams = pluginParams;
	}
	public Map<String, String> getMetaDatas() {
		return metaDatas;
	}
	public void setMetaDatas(Map<String, String> metaDatas) {
		this.metaDatas = metaDatas;
	}
}
