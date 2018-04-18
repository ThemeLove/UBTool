package com.umbrella.ubsdk.ubtool.bean;

import com.umbrella.ubsdk.ubtool.config.UBToolConfig;

public class Game {

//	必须要有的属性，最常用的几个
    private String ID; 				//id，序号标示
	private String name; 			//游戏名称
    private String debug="true";   	//是否debug			默认开启日志打印
    private String script="false";	//是否支持自定义脚本	默认不开启游戏脚本脚本
    private String apktoolVersion=UBToolConfig.DEFAULT_APKTOOL_VERSION;	//apktool版本
    private String orientation; 	//游戏是横屏还是竖屏(landscape|portrait),不配置默认是横屏
    private String keystore;		//游戏自定义签名
    private String desc;			//游戏描述
    
//  以下属性可以没有
    private String gameId; //游戏Id
    private String gameTag;//游戏标识
    private String platpormId; //平台Id
    private String subPlatformId;//子平台id
    private String url; //服务器连接
    private String statisticUrl; //统计的url
    private String gameMainName;//游戏主页面的全称
    private String channelId;//渠道id
    private String subChannelId;//子渠道id

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

	public String getDebug() {
		return debug;
	}

	public void setDebug(String debug) {
		this.debug = debug;
	}

	public String getScript() {
		return script;
	}

	public void setScript(String script) {
		this.script = script;
	}

	public String getApktoolVersion() {
		return apktoolVersion;
	}

	public void setApktoolVersion(String apktoolVersion) {
		this.apktoolVersion = apktoolVersion;
	}

	public String getOrientation() {
		return orientation;
	}

	public void setOrientation(String orientation) {
		this.orientation = orientation;
	}
	
	public String getKeystore() {
		return keystore;
	}

	public void setKeystore(String keystore) {
		this.keystore = keystore;
	}

	public String getGameId() {
		return gameId;
	}

	public void setGameId(String gameId) {
		this.gameId = gameId;
	}

	public String getGameTag() {
		return gameTag;
	}

	public void setGameTag(String gameTag) {
		this.gameTag = gameTag;
	}

	public String getPlatpormId() {
		return platpormId;
	}

	public void setPlatpormId(String platpormId) {
		this.platpormId = platpormId;
	}

	public String getSubPlatformId() {
		return subPlatformId;
	}

	public void setSubPlatformId(String subPlatformId) {
		this.subPlatformId = subPlatformId;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getStatisticUrl() {
		return statisticUrl;
	}

	public void setStatisticUrl(String statisticUrl) {
		this.statisticUrl = statisticUrl;
	}

	public String getGameMainName() {
		return gameMainName;
	}

	public void setGameMainName(String gameMainName) {
		this.gameMainName = gameMainName;
	}

	public String getChannelId() {
		return channelId;
	}

	public void setChannelId(String channelId) {
		this.channelId = channelId;
	}

	public String getSubChannelId() {
		return subChannelId;
	}

	public void setSubChannelId(String subChannelId) {
		this.subChannelId = subChannelId;
	}
	
	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	@Override
    public String toString() {
        return "【"+ID + " | " + name+"】";
    }
}
