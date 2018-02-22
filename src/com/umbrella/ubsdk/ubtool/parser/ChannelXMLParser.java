package com.umbrella.ubsdk.ubtool.parser;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import com.umbrella.ubsdk.ubtool.bean.Channel;

public class ChannelXMLParser {
//	private static String LINE_SEPARATOR=System.getProperty("line.separator");
	public static Map<String, Channel> parser(String xmlPath) {
	Map<String, Channel> gameChannelMap = new HashMap<String, Channel>();
	try {
		SAXReader saxReader = new SAXReader();
        Element root = saxReader.read(new File(xmlPath)).getRootElement();
        List<Element> channelList = root.elements();
        if(channelList==null || channelList.size()==0) {
        	System.out.println("该游戏没有配置渠道，请配置" + xmlPath);
        	System.exit(0);
        } else {
        	System.out.println("================渠道列表================");
        	System.out.println("渠道号 | 渠道名称");
        	System.out.println("------start-------");
        	for(Element gameChannelElement : channelList) {
        		Channel gameChannel = new Channel();
        		gameChannel.setId(gameChannelElement.attributeValue("id"));
        		gameChannel.setName(gameChannelElement.attributeValue("name"));
        		gameChannel.setFolder(gameChannelElement.attributeValue("folder"));
        		gameChannel.setIcon(gameChannelElement.attributeValue("icon"));
        		gameChannel.setSuffix(gameChannelElement.attributeValue("suffix"));
        		gameChannel.setKeystore(gameChannelElement.attributeValue("keystore"));
        		boolean splash = "true".equals(gameChannelElement.attributeValue("splash"));
        		gameChannel.setSplash(splash);
        		
        		List<Element> paramList = gameChannelElement.elements();
        		Map<String, String> paramMap = new HashMap<String, String>();
        		Map<String, String> metaDataMap = new HashMap<String, String>();
        		for(Element param : paramList) {
        			if("param".equals(param.getName())) {
        				paramMap.put(param.attributeValue("name"), param.attributeValue("value"));
        			} else if("meta-data".equals(param.getName())){
        				metaDataMap.put(param.attributeValue("name"), param.attributeValue("value"));
        			}
        		}
        		gameChannel.setChannelParams(paramMap);
        		gameChannel.setMetaDatas(metaDataMap);
        		
        		System.out.println(gameChannel);
        		gameChannelMap.put(gameChannel.getId(), gameChannel);
        	}
        	System.out.println("------end-------");
        }
	}catch(Exception ex) {
		ex.printStackTrace();
	}
	return gameChannelMap;
}
}
