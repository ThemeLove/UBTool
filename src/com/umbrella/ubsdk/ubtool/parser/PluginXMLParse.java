package com.umbrella.ubsdk.ubtool.parser;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import com.umbrella.ubsdk.ubtool.bean.Plugin;

public class PluginXMLParse {
	public static Map<String, Plugin> parser(String xmlPath) {
		Map<String, Plugin> gamePluginMap = new HashMap<String, Plugin>();
		try {
			SAXReader saxReader = new SAXReader();
			Element root = saxReader.read(new File(xmlPath)).getRootElement();
			List<Element> pluginList = root.elements();
			if (pluginList == null || pluginList.size() == 0) {
				System.out.println("该游戏没有配置插件，请配置" + xmlPath);
				System.exit(0);
			} else {
				System.out.println("===============插件列表列表================");
				System.out.println("插件 | 插件名称");
				System.out.println("------start-------");
				for (Element pluginElement : pluginList) {
					Plugin plugin = new Plugin();
					plugin.setID(pluginElement.attributeValue("id"));
					plugin.setName(pluginElement.attributeValue("name"));
					plugin.setGame(pluginElement.attributeValue("game"));
					plugin.setScript(pluginElement.attributeValue("script"));
					plugin.setDesc(pluginElement.attributeValue("desc"));

					List<Element> paramList = pluginElement.elements();
					Map<String, String> paramMap = new HashMap<String, String>();
					Map<String, String> metaDataMap = new HashMap<String, String>();
					for (Element param : paramList) {
						if ("param".equals(param.getName())) {
							paramMap.put(param.attributeValue("name"), param.attributeValue("value"));
						} else if ("meta-data".equals(param.getName())) {
							metaDataMap.put(param.attributeValue("name"), param.attributeValue("value"));
						} 
					}
					plugin.setPluginParamMap(paramMap);
					plugin.setMetaDataMap(metaDataMap);

					System.out.print("【");
					System.out.print(plugin.getName());
					System.out.println("】");

					gamePluginMap.put(plugin.getName(), plugin);
				}
				System.out.println("------end-------");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return gamePluginMap;
	}
}
