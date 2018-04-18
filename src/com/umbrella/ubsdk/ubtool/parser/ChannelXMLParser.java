package com.umbrella.ubsdk.ubtool.parser;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import com.umbrella.ubsdk.ubtool.bean.Channel;
import com.umbrella.ubsdk.ubtool.utils.TextUtil;

public class ChannelXMLParser {
	// private static String
	// LINE_SEPARATOR=System.getProperty("line.separator");
	public static Map<String, Channel> parser(String xmlPath) {
		Map<String, Channel> gameChannelMap = new HashMap<String, Channel>();
		try {
			SAXReader saxReader = new SAXReader();
			Element root = saxReader.read(new File(xmlPath)).getRootElement();
			List<Element> channelList = root.elements();
			if (channelList == null || channelList.size() == 0) {
				System.out.println("该游戏没有配置渠道，请配置" + xmlPath);
				System.exit(0);
			} else {
				System.out.println("================渠道列表================");
				System.out.println("渠道号 | 渠道名称");
				System.out.println("------start-------");
				for (Element gameChannelElement : channelList) {
					Channel gameChannel = new Channel();
					gameChannel.setID(gameChannelElement.attributeValue("id"));
					gameChannel.setName(gameChannelElement.attributeValue("name"));
					gameChannel.setIcon(gameChannelElement.attributeValue("icon"));
					gameChannel.setSuffix(gameChannelElement.attributeValue("suffix"));
					gameChannel.setKeystore(gameChannelElement.attributeValue("keystore"));
					gameChannel.setSplash(gameChannelElement.attributeValue("splash"));
					gameChannel.setScript(gameChannelElement.attributeValue("script"));
					gameChannel.setGame(gameChannelElement.attributeValue("game"));
					gameChannel.setDesc(gameChannelElement.attributeValue("desc"));
					
					List<Element> paramList = gameChannelElement.elements();
					Map<String, String> paramMap = new HashMap<String, String>();
					Map<String, String> metaDataMap = new HashMap<String, String>();
					ArrayList<String> pluginList = new ArrayList<String>();
					for (Element param : paramList) {
						if ("param".equals(param.getName())) {
							paramMap.put(param.attributeValue("name"), param.attributeValue("value"));
						} else if ("meta-data".equals(param.getName())) {
							metaDataMap.put(param.attributeValue("name"), param.attributeValue("value"));
						} else if ("plugins".equals(param.getName())) {// 如果要配置了第三方插件
							List<Element> pluginElements = param.elements("plugin");
							if (pluginElements != null && pluginElements.size() > 0) {
								for (Element plugin : pluginElements) {
									String pluginName = plugin.attributeValue("name");
									if (!TextUtil.isEmpty(pluginName)) {
										pluginList.add(pluginName);
									}
								}
							}
						}
					}
					gameChannel.setChannelParamMap(paramMap);
					gameChannel.setMetaDataMap(metaDataMap);
					gameChannel.setPluginList(pluginList);

					System.out.print("【");
					System.out.print(gameChannel.getName());
					System.out.println("】");

					gameChannelMap.put(gameChannel.getName(), gameChannel);
				}
				System.out.println("------end-------");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return gameChannelMap;
	}
}
