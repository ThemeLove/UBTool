package com.umbrella.ubsdk.ubtool.parser;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import com.umbrella.ubsdk.ubtool.bean.Game;

public class GameXMLParser {

	public static Map<String, Game> parser(String gameXmlPath) {
      Map<String, Game> gameMap = new HashMap<String, Game>();
      try {
          SAXReader saxReader = new SAXReader();
          Element root = saxReader.read(new File(gameXmlPath)).getRootElement();
          List<Element> gameList = root.elements();
          if (gameList == null || gameList.size() == 0) {
              System.out.println("没有配置游戏，请配置" + gameXmlPath);
              System.exit(0);
          } else {
              System.out.println("================游戏列表================");
              System.out.println("gameId | 游戏名称");
              System.out.println("------start-------");
              for (Element gameElement : root.elements()) {
                  Game game = new Game();
//                必须要有的属性
                  game.setId(gameElement.attributeValue("id"));
                  game.setName(gameElement.attributeValue("name"));
                  game.setFolder(gameElement.attributeValue("folder"));
                  game.setDebug(gameElement.attributeValue("debug"));
                  game.setOrientation(gameElement.attributeValue("orientation"));
                  game.setApktoolVersion(gameElement.attributeValue("apktoolVersion"));
                  
//                可以没有的属性
                  game.setGameTag(gameElement.attributeValue("gameTag"));
                  game.setGameId(gameElement.attributeValue("gameId"));
                  game.setPlatpormId(gameElement.attributeValue("platpormId"));
                  game.setSubPlatformId(gameElement.attributeValue("subPlatformId"));
                  game.setUrl(gameElement.attributeValue("url"));
                  game.setStatisticUrl(gameElement.attributeValue("statisticUrl"));
                  game.setGameMainName(gameElement.attributeValue("gameMainName"));
                  game.setChannelId(gameElement.attributeValue("channelId"));
                  game.setSubChannelId(gameElement.attributeValue("subChannelId"));
                  
                  System.out.println(game);
                  
                  gameMap.put(game.getId(), game);
              }
              System.out.println("------end-------");
          }
      } catch (Exception ex) {
          ex.printStackTrace();
      }
      return gameMap;
	}

}
