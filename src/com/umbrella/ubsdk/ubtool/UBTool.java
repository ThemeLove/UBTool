package com.umbrella.ubsdk.ubtool;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileFilter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;

import javax.imageio.ImageIO;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

import com.umbrella.ubsdk.ubtool.bean.Channel;
import com.umbrella.ubsdk.ubtool.bean.ChannelConfig;
import com.umbrella.ubsdk.ubtool.bean.ChannelConfig.Operation;
import com.umbrella.ubsdk.ubtool.bean.Game;
import com.umbrella.ubsdk.ubtool.bean.Keystore;
import com.umbrella.ubsdk.ubtool.config.UBToolConfig;
import com.umbrella.ubsdk.ubtool.parser.ChannelConfigXMLParser;
import com.umbrella.ubsdk.ubtool.parser.ChannelXMLParser;
import com.umbrella.ubsdk.ubtool.parser.GameXMLParser;
import com.umbrella.ubsdk.ubtool.parser.KeystoreXMLParser;
import com.umbrella.ubsdk.ubtool.utils.CommandUtil;
import com.umbrella.ubsdk.ubtool.utils.EncryptUtil;
import com.umbrella.ubsdk.ubtool.utils.FileUtil;
import com.umbrella.ubsdk.ubtool.utils.KeyBoardUtil;
import com.umbrella.ubsdk.ubtool.utils.TextUtil;

import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.geometry.Positions;
/**
 * 多游戏多渠道打包工具
 * @author qingshanliao
 */
public class UBTool {
	private static String BASE_PATH="";			//当前项目的根目录
	private static String TOOLS_PATH="";		//tools目录
	private static String CONFIG_PATH="";		//config目录
	private static String GAMES_PATH="";		//games目录
	private static String WORK_PATH="";			//work目录
	private static String BAK_PATH="";			//work/bak目录，游戏母包反编译备份目录
	private static String TEMP_PATH="";			//work/temp目录，合并游戏母包和渠道资源时的临时目录
	private static String OUT_PATH="";			//out目录
	private static OutputFormat outputFormat=new OutputFormat("",true,"UTF-8");
	private static String gameOldMainActivityFullName="";//游戏的主Activity
	private static String newGamePackageName="";
	private static String LINE_SEPARATOR=System.getProperty("line.separator");
	
	public static void main(String[] args) throws Exception {
//		1.初始化路径
		initPath();
//		2.加载游戏列表
		String gameXmlPath=GAMES_PATH+File.separator+"games.xml";
		Map<String, Game> gameList = GameXMLParser.parser(gameXmlPath);
//		3.选择游戏
		HashMap<Game, ArrayList<Channel>> gameChannelsMap = new HashMap<Game,ArrayList<Channel>>();
		for(int i=1;i<=gameList.size();i++){
			String gameId = KeyBoardUtil.keyBoardIn("请选择第"+i+"个要打包的游戏id");
			if ("all".equalsIgnoreCase(gameId)) {
				System.out.println("所有游戏选择完毕!");
				break;
			}
			Game game=gameList.get(gameId);
			while(game==null){
				gameId=KeyBoardUtil.keyBoardIn("您输入的游戏id不存在，请重新输入：");
			}
			ArrayList<Channel> gameChannelList = new ArrayList<Channel>();
			
//			4.根据gameId加载配置的渠道列表
			System.out.println("已选择游戏 ："+game.toString()+"----->已配置渠道如下：");
			String gameChannelXmlPath=GAMES_PATH+File.separator+game.getFolder()+File.separator+"channels.xml";
			Map<String, Channel> channelMap = ChannelXMLParser.parser(gameChannelXmlPath);//TODO 这里可以用ArrayList代替
			
//			5.根据加载的渠道列表提示用户选择渠道
			String gameChannelsStr = KeyBoardUtil.keyBoardIn("请选择渠道，多个渠道以“,”分割");
			for (int j=1;j<=gameChannelsStr.split(",").length;j++) {
				Channel gameChannel = channelMap.get(gameChannelsStr.split(",")[j-1]);
				if (gameChannel==null) {
					gameChannelsStr=KeyBoardUtil.keyBoardIn("渠道："+gameChannelsStr.split(",")[j-1]+" 不存在，请重新输入，多个渠道以“,”分割");
					gameChannelList.clear();
					j=0;
					continue;
				}
				gameChannelList.add(gameChannel);
			}
			if (gameChannelList!=null&&gameChannelList.size()>0) {
				gameChannelsMap.put(game, gameChannelList);
			}
			System.out.println("第"+i+"个游戏："+game.getName()+"----->已选择渠道如下：");
			System.out.println(gameChannelList.toString()+LINE_SEPARATOR);
		}
		System.out.println("您要打的所有游戏包如下：");
		for (Entry<Game,ArrayList<Channel>> entry : gameChannelsMap.entrySet()) {
			System.out.print(entry.getKey().getName()+"----->对应渠道:");
			String gameChannelHintStr = "[";
			for (Channel channel : entry.getValue()) {
				gameChannelHintStr+=channel.getId()+",";
			}
			gameChannelHintStr=gameChannelHintStr.substring(0,gameChannelHintStr.length()-1)+"]";
			System.out.println(gameChannelHintStr+LINE_SEPARATOR);
		}
		
//		6.遍历游戏打包
		System.out.println("开始循环多渠道打包：");
		for (Game game : gameChannelsMap.keySet()) {
			System.out.println("正在打包的游戏是："+game.getName());
//			6.1 根据配置确定apktool.jar的版本
			String apktoolVersion=UBToolConfig.DEFAULT_APKTOOL_VERSION;
			if (!TextUtil.isEmpty(game.getApktoolVersion())) {
				apktoolVersion=game.getApktoolVersion();
				System.out.println(game.getName()+"配置apktool版本为:"+apktoolVersion);
			}
			System.out.println(game.getName()+"使用默认apktool版本："+apktoolVersion);

//			6.2获取母包apk
			if (TextUtil.isEmpty(game.getFolder())) {
				throw new RuntimeException("error: "+game.toString()+" 必要参数 folder 配置为空");
			}
			String gamePath=GAMES_PATH+File.separator+game.getFolder();
			File[] apkList = new File(gamePath).listFiles(new FilenameFilter() {
				
				@Override
				public boolean accept(File dir, String name) {
					return name.endsWith(".apk");
				}
			});
			if (apkList==null||apkList.length<=0) {
				throw new RuntimeException("error: "+game.toString()+" 目录下没有.apk文件");
			}
//			只获取第一个
			File apkFile=apkList[0];
			System.out.println("成功获取到游戏母包："+apkFile.getName());
			
			System.out.println("步骤一：清空工作目录work");
//			6.3清空工作目录	[删除工作目录并重新创建]
			FileUtil.delete(WORK_PATH);
			new File(WORK_PATH).mkdirs();
			System.out.println("清空成功！");
			
//			6.4反编译apk到work/bak目录
//			新游戏要清空bak目录
			FileUtil.delete(BAK_PATH);
			File bakFile = new File(BAK_PATH);
			bakFile.mkdirs();
			System.out.println("步骤二：反编译游戏母包 到work/bak目录下");
        	String decodeApkCompile = String.format("java -jar -Xms512m -Xmx512m apktool%s.jar d -f -o %s %s", new String[] {apktoolVersion,
                    BAK_PATH, apkFile.getAbsolutePath()});
        	System.out.println("解压APK，执行命令：" + decodeApkCompile);
        	CommandUtil.exeCmd(decodeApkCompile, new File(TOOLS_PATH));
			System.out.println("反编译成功！");
			
//        	6.5开始多渠道打包
			System.out.println("步骤三：遍历渠道列表，循环打包：");
			ArrayList<Channel> channelList = gameChannelsMap.get(game);
			for (Channel channel : channelList) {
				System.out.println("现在打的包是：游戏【" + game.getId()+"|" +game.getName() + "】"+"对应的——————>>>>>>渠道【" + channel.getId() + "】\n");
				System.out.println("	1:拷贝work/bak----->work/temp目录");
//				a.拷贝bak目录到temp目录
				FileUtil.delete(TEMP_PATH);
				File tempFile = new File(TEMP_PATH);
				tempFile.mkdirs();
				FileUtil.copyDirectiory(BAK_PATH, TEMP_PATH);
				System.out.println("	1：拷贝work/bak----->work/temp----->成功!");
				
				System.out.println("	2:加载渠道配置文件config.xml");
//				b.根据渠道sdk配置文件拷贝资源到TEMP_PATH
				String sdkPath=CONFIG_PATH+File.separator+"sdk"+File.separator+channel.getId();
				String sdkConfigPath=CONFIG_PATH+File.separator+"sdk"+File.separator+channel.getId()+File.separator+"config.xml";
				if (TextUtil.isEmpty(channel.getId())||!new File(sdkConfigPath).exists()) {
					throw  new RuntimeException("error:渠道配置参数出错，或没有找到对应的配置文件，请检查。。。");
				}
//				解析渠道配置文件
				 ChannelConfig channelConfig = ChannelConfigXMLParser.parser(sdkConfigPath);
				 System.out.println("	2:加载渠道配置文件config.xml----->成功!");
				 System.out.println("	3:根据渠道配置copy、merge渠道相关资源到temp目录");
				 List<Operation> operations = channelConfig.getOperations();
				 for (Operation operation : operations) {
					String type = operation.getType();
					switch (type) {
					case "copy":
						String sourcePath=sdkPath+File.separator+operation.getFrom();
						String targetPath=TEMP_PATH+File.separator+operation.getTo();
						System.out.println("		copy:"+sourcePath+"----->"+targetPath);
						
						File[] gameJniFilesCopyBefore = null;
//						如果是拷贝的是libs目录，要注意要以游戏libs目录中的jni为准，将sdk目录下libs目录下对应jni目录拷贝到游戏对应目录，没有则不需要拷贝
						if (TextUtil.equals("libs",operation.getFrom())) {
							gameJniFilesCopyBefore = new File(targetPath).listFiles(new FileFilter() {
								
								@Override
								public boolean accept(File file) {
//									是目录并且是UBToolConfig.jinArr配置中的一个，就记录
									List<String> jniAllList = Arrays.asList(UBToolConfig.jinArr);
									if (file.isDirectory()&&jniAllList.contains(file.getName())) {
										return true;
									}
									return false;
								}
							});
						}
						
						final File[] gameJniFilesCopyBeforeTemp=gameJniFilesCopyBefore;
//						先全部拷贝
						FileUtil.copyDirectiory(sourcePath, targetPath);
						System.out.println("		copy:"+sourcePath+"----->"+targetPath+"----->成功！");
						
						
//						如果是拷贝的libs目录，则删除多余的jni配置，保持适配
						if (TextUtil.equals("libs", operation.getFrom())) {
							System.out.println("		copy：libs目录需要删除多余的jni目录");
							if (gameJniFilesCopyBefore!=null&&gameJniFilesCopyBefore.length>0) {
								File[] gameJniDeleteFiles = new File(targetPath).listFiles(new FileFilter() {
									
									@Override
									public boolean accept(File file) {
//										是目录并且是UBToolConfig.jinArr配置中的一个，就记录
										List<String> jniAllList = Arrays.asList(UBToolConfig.jinArr);
										if (file.isDirectory()&&jniAllList.contains(file.getName())&&!Arrays.asList(gameJniFilesCopyBeforeTemp).contains(file)) {
											file.delete();
											System.out.println("		成功删除："+file.getName());
											return true;
										}
										return false;
									}
								});
								
								System.out.println("		copy：删除多余的jni目录为："+gameJniDeleteFiles);
							}
						}
						
						break;
					case "merge"://文件类型的合并
						String manifestName=game.getOrientation();
						if(TextUtil.isEmpty(manifestName))manifestName="landscape";
						String mergeFromPath=sdkPath+File.separator+operation.getFrom()+File.separator+manifestName+".xml";
						String mergeToPath=TEMP_PATH+File.separator+operation.getTo();
						
						System.out.println("		merge:"+mergeFromPath+"----->"+mergeToPath);
						Document mergeFromDocument = new SAXReader().read(new File(mergeFromPath));
						List<Element> permissionListFrom = mergeFromDocument.getRootElement().elements("uses-permission");
						Element applicationConfig = mergeFromDocument.getRootElement().element("applicationConfig");
						List<Element> componentListFrom = applicationConfig.elements();
						
						Document mergeToDocument = new SAXReader().read(mergeToPath);
						List<Element> permissionListTo = mergeToDocument.getRootElement().elements("uses-permission");
						Element applicationElementTo = mergeToDocument.getRootElement().element("application");
//						合并权限uses-permission
						outer:for (Element permissionFrom : permissionListFrom) {
							for (Element permissionTo : permissionListTo) {
								if (TextUtil.equals(permissionFrom.attributeValue("name"), permissionTo.attributeValue("name"))) {
									continue outer;
								}
							}
							applicationElementTo.add(permissionFrom.createCopy());
						}
//						合并application下的四大组件
						for (Element component : componentListFrom) {
							applicationElementTo.add(component.createCopy());
						}
						
						XMLWriter xmlWriter = new XMLWriter(new FileWriter(new File(mergeToPath)),outputFormat);
						xmlWriter.write(mergeToDocument);
						xmlWriter.close();
						System.out.println("		merge:"+mergeFromPath+"----->"+mergeToPath+"----->成功！");
						break;
					default:
						break;
					}
				}
				System.out.println("	3:根据渠道配置copy、merge渠道相关资源到temp目录----->成功！");
				 
//				 合并游戏角标
				 if (!TextUtil.isEmpty(channel.getIcon())) {
					System.out.println("	4.合并sdk角标到游戏图标");
					String gameManifestPath=TEMP_PATH+File.separator+"AndroidManifest.xml";
					String iconName = getIconName(gameManifestPath);
					System.out.println("	【"+game.getName()+"】的iconName="+iconName);
					String gameResPath=TEMP_PATH+File.separator+"res";
					
					System.out.println("	【"+game.getName()+"】的drawable/mipmap目录为：");
					File[] iconDirs = new File(gameResPath).listFiles(new FilenameFilter() {
						
						@Override
						public boolean accept(File dir, String name) {
							if (name.startsWith("drawable")||name.startsWith("mipmap")) {
								System.out.println("	"+name);
								return true;
							}
							return false;
						}
					});
					
					for (File file : iconDirs) {
						File iconFile = new File(file.getAbsolutePath(),iconName);
						if (iconFile.exists()) {//如果当前目录存在icon
							System.out.println("	成功获取到游戏："+game.getName()+"--->res目录下："+file.getName()+"--->下的图标："+iconName);
//							drawable-xhdpi-v4适配这样的目录，只取drawable-xhdpi的2部分去iconMap匹配
							String iconDirName="drawable-xxxhdpi";
							String[] split = file.getName().split("-");
							if (split.length>2) {
								iconDirName=split[0]+"-"+split[1];
							}
							Integer iconSize = UBToolConfig.iconMap.get(iconDirName);
							if (iconSize==null) {
								iconSize=192;//如果默认匹配到默认为192
							}
							
							String  iconMarkPath=sdkPath+File.separator+"icon"+File.separator+iconDirName+File.separator+channel.getIcon()+".png";
							System.out.println("	成功获取到渠道："+channel.getId()+"--->icon目录下："+iconDirName+"--->下的角标："+channel.getIcon()+".png");
							System.out.println("	准备合并...");
							String  iconPath=iconFile.getAbsolutePath();
							File iconMarkFile=new File(iconMarkPath);
							if (iconMarkFile.exists()) {
								Positions iconPosition=Positions.BOTTOM_RIGHT;
								switch (channel.getIcon()) {
								case "lt":
									iconPosition=Positions.TOP_LEFT;
								case "lb":
									iconPosition=Positions.BOTTOM_LEFT;
									break;
								case "rt":
									iconPosition=Positions.TOP_RIGHT;
									break;
								case "rb":
									iconPosition=Positions.BOTTOM_RIGHT;
									break;
								default:
									break;
								}
								Thumbnails.of(iconMarkFile).size(iconSize, iconSize).keepAspectRatio(true).toFile(iconMarkFile);
								Thread.sleep(500);
								Thumbnails.of(iconFile).size(iconSize, iconSize).watermark(iconPosition,ImageIO.read(iconMarkFile),1f).toFile(iconFile);
								Thread.sleep(500);
								System.out.println("	合并成功!");
								System.out.println("---------------------------");
							}
						}
					}
					System.out.println("	4.合并sdk所有角标到游戏图标----->成功！");
				 }
				 
//				 根据渠道sdk是否配置闪屏来决定是否来添加闪屏Activity
				 if (channel.isSplash()) {
					 System.out.println("---------------------");
					 System.out.println(LINE_SEPARATOR+LINE_SEPARATOR+LINE_SEPARATOR);
					 System.out.println("	5.拷贝渠道闪屏，并将其设置为启动页");
//					a.根据游戏方向copy对应闪屏图片到游戏res目录
					 String sdkSplashName=(TextUtil.equalsIgnoreCase("portrait",game.getOrientation())?"portrait.png":"landscape.png");
					 String sdkSplashPath=sdkPath+File.separator+"splash"+File.separator+sdkSplashName;
//					b.将sdk闪屏图片copy到游戏资源目录res/drawable-hdpi目录
					 String gameSplashPath=TEMP_PATH+File.separator+"res"+File.separator+"drawable-hdpi"+File.separator+"ubsdk_splash.png";
					 File sdkSplash = new File(sdkSplashPath);
					 if (!sdkSplash.exists()) {
						throw new RuntimeException("渠道sdk没有该配置闪屏图片："+sdkSplashName);
					}
					 
					 File gameSplash= new File(gameSplashPath);
					 if (gameSplash.getParentFile().exists()) {
						 gameSplash.createNewFile();
					}else{
						 gameSplash.getParentFile().mkdirs();
						 gameSplash.createNewFile();
					}
					 System.out.println("		5.1拷贝"+sdkSplash+"----->"+gameSplash);
					 FileUtil.copyFile(sdkSplash,gameSplash);
					 System.out.println("		5.1拷贝"+sdkSplash+"----->"+gameSplash+"----->成功！");
					 System.out.println("---------------------------"+LINE_SEPARATOR+LINE_SEPARATOR);
					 
					 System.out.println("		5.2动态修改游戏目录AndroidManifest.xml文件，将UBSplashActivity设置为启动页");

					 
//					c.动态修改游戏目录AndroidManifest.xml文件，将UBSplashActivity设置为启动页
					 String gameManifestPath=TEMP_PATH+File.separator+"AndroidManifest.xml";
					 Document manifestDOM = new SAXReader().read(new File(gameManifestPath));
					 Element appElement = manifestDOM.getRootElement().element("application");
					 List<Element> activities = appElement.elements("activity");
					 
					 Element mainActivity=null;
					 Element mainActivityIntentFilter=null;
					 Element mainAction=null;
					 Element mainLauncher=null;
					 Element ubSplashActivity=null;
					 for (Element activity : activities) {
						Element intentFilter = activity.element("intent-filter");
						if (intentFilter!=null) {//找到游戏原有MainActivity
							Element action = intentFilter.element("action");
							Element category = intentFilter.element("category");
							if (action==null) continue;
							if (category==null) continue;
							boolean isMainAction = TextUtil.equals("android.intent.action.MAIN",action.attributeValue("name"));
							boolean isMainLauncher = TextUtil.equals("android.intent.category.LAUNCHER", category.attributeValue("name"));
							if (isMainAction&&isMainLauncher) {
								mainActivity=activity;
								gameOldMainActivityFullName = activity.attributeValue("name");
								mainActivityIntentFilter=intentFilter;
								mainAction=action;
								mainLauncher=category;
								System.out.println("		mainActivity:"+mainActivity);
								System.out.println("		gameOldMainActivityFullName:"+gameOldMainActivityFullName);
								System.out.println("		mainActivityIntentFilter:"+mainActivityIntentFilter);
								System.out.println("		mainAction:"+mainAction);
								System.out.println("		mainLauncher:"+mainLauncher);
							}
						}
//						找到游戏配置UBSplashActivity;
						if (TextUtil.equals("com.umbrella.game.ubsdk.ui.UBSplashActivity",activity.attributeValue("name"))) {
							ubSplashActivity=activity;
							System.out.println("		ubSplashActivity:"+ubSplashActivity);
						}
					}
					if (mainActivity==null||mainActivityIntentFilter==null||mainAction==null||mainLauncher==null||ubSplashActivity==null) {
						throw new RuntimeException("游戏启动activity配置出错或没有找到UBSplashActivity");
					}
					if (mainActivityIntentFilter.elements().size()==2) {
						mainActivity.remove(mainActivityIntentFilter);
					}else{
						mainActivityIntentFilter.remove(mainAction);
						mainActivityIntentFilter.remove(mainLauncher);
					}
					Element intentFilter = DocumentHelper.createElement("intent-filter");
					intentFilter.add(mainAction.createCopy());
					intentFilter.add(mainLauncher.createCopy());
					ubSplashActivity.add(intentFilter.createCopy());
//					DOM操作完毕，更新文档
					XMLWriter xmlWriter = new XMLWriter(new FileWriter(gameManifestPath), outputFormat);
					xmlWriter.write(manifestDOM);
					xmlWriter.flush();
					xmlWriter.close();
					System.out.println("		5.2动态修改游戏目录AndroidManifest.xml文件，将UBSplashActivity设置为启动页----->成功！");
				}
				System.out.println("-----------------------"+LINE_SEPARATOR+LINE_SEPARATOR);
				System.out.println("	6.添加渠道sdk channel中配置的<meta-data>到AndroidManifest.xml中");
//				 渠道sdk channel中配置的<meta-data>到AndroidManifest.xml中
				 String gameManifestPath=TEMP_PATH+File.separator+"AndroidManifest.xml";
				 Map<String, String> metaDatas = channel.getMetaDatas();
				 Document manifestDOM = new SAXReader().read(new File(gameManifestPath));
				 Element rootElement = manifestDOM.getRootElement();
				 Element application = rootElement.element("application");
				 for (Map.Entry<String,String> metaEntry : metaDatas.entrySet()) {
					 Element metaElement = DocumentHelper.createElement("meta-data");
					 metaElement.addAttribute("android:name",metaEntry.getKey());
					 metaElement.addAttribute("android:value",metaEntry.getValue());
					 application.add(metaElement);
				}
				 XMLWriter xmlWriter = new XMLWriter(new FileWriter(gameManifestPath),outputFormat);
				 xmlWriter.write(manifestDOM);
				 xmlWriter.flush();
				 xmlWriter.close();
				 System.out.println("	6.添加渠道sdk channel中配置的<meta-data>到AndroidManifest.xml中----->成功！");
				 System.out.println("-----------------------"+LINE_SEPARATOR+LINE_SEPARATOR);
				 
				 System.out.println("	7.根据channel中的配置修改游戏AndroidManifest.xml中的包名");
//				 根据channel中的配置修改游戏AndroidManifest.xml中的包名
				 if (!TextUtil.isEmpty(channel.getSuffix())) {
					 Document manifestDOM1 = new SAXReader().read(new File(gameManifestPath));
					 String oldGamePackageName = manifestDOM1.getRootElement().attributeValue("package");
					 System.out.println("	oldGamePackageName:"+oldGamePackageName);
					 int lastDotIndex = oldGamePackageName.lastIndexOf(".");
					 String lastPackageName = oldGamePackageName.substring(lastDotIndex);
					//如果原有包名最右和包名和配置的一样就不修改，否则直接添加新报名在老包名的后面
					 if (!TextUtil.equals(lastPackageName, channel.getSuffix())) {
						 newGamePackageName+=oldGamePackageName+channel.getSuffix();
						 System.out.println("	newGamePackageName:"+newGamePackageName);
						 
						 System.out.println("		7.1替换新包名和替换{PACKAGENAME}");
//						 修改AndroidManifest.xml中的DOM中的所有oldGamePackageName为newGamePackageName,同时替换占位包名{PACKAGENAME}为newGamePackageName
						 replacePackageName(new File(gameManifestPath), new String[]{oldGamePackageName,"{PACKAGENAME}"},newGamePackageName);
						 System.out.println("		7.1替换新包名和替换{PACKAGENAME}----->成功");
						 System.out.println("-----------------------"+LINE_SEPARATOR+LINE_SEPARATOR);
						 
//					 	 修改游戏smali目录中包名目录和其中smail文件中引入的旧包名----->新包名
						 System.out.println("		7.2修改游戏smali目录中包名目录和其中smail文件中引入的旧包名----->新包名");
						 modifySmaliDirsAndFilePackageImport(oldGamePackageName,newGamePackageName);
						 System.out.println("		7.2修改游戏smali目录中包名目录和其中smail文件中引入的旧包名----->新包名----->成功！");
					}
				}
				 
				 
//				 *******************************回编部分****************************
				 System.out.println("	8.用aapt将资源文件编译成R.java文件到新的包名目录下");
//				 1.用aapt将资源文件编译成R.java文件到新的包名目录下
				 String aaptPath=TOOLS_PATH+File.separator+"aapt";
				 String RDirPath=TEMP_PATH+File.separator+"R";
				 File RDirFile = new File(RDirPath);
				 RDirFile.mkdirs();
				 String gameResPath=TEMP_PATH+File.separator+"res";
				 String apktoolPath=TOOLS_PATH+File.separator+"apktool"+apktoolVersion+".jar";
				 String androidJarPath=TOOLS_PATH+File.separator+"android.jar";
				 String aaptCommand=String.format("%s p -f -m -J %s -S %s -I %s -M %s",new String[]{aaptPath,RDirPath,gameResPath,androidJarPath,gameManifestPath});
				 System.out.println("	aaptCommand："+aaptCommand);
				 File toolDir = new File(TOOLS_PATH);
//				 if (!toolDir.exists()) {
//					toolDir.mkdirs();
//				}
				 CommandUtil.exeCmd(aaptCommand,toolDir);
				 
				 System.out.println("	8.用aapt将资源文件编译成R.java文件到新的包名目录下----->成功！");
				 System.out.println("--------------"+LINE_SEPARATOR+LINE_SEPARATOR);
				 
				 
				 System.out.println("	9.javac命令把RPath目录下生成的R.java编译成class文件,注意其为多层目录");
//				 2.javac命令把RPath目录下生成的R.java编译成class文件,注意其为多层目录
				 String RJavaPath=RDirPath+File.separator+newGamePackageName+File.separator;
				 RJavaPath=RJavaPath.replace(".",File.separator).replace("/", File.separator)+"R.java";
				 
				 String RJava2ClassCommand=String.format("javac -source 1.7 -target 1.7 -encoding UTF-8 %s",RJavaPath);
				 System.out.println("	RJava2ClassCommand:"+RJava2ClassCommand);
				 CommandUtil.exeCmd(RJava2ClassCommand, new File(TOOLS_PATH));
				 System.out.println("	9.javac命令把RPath目录下生成的R.java编译成class文件,注意其为多层目录----->成功！");
				 System.out.println("-----------------"+LINE_SEPARATOR+LINE_SEPARATOR);
				 
				 
				 System.out.println("	10.将生成RDirPath目录压缩成游戏libs目录下的R.jar");
//				 3.将生成RDirPath目录压缩成游戏libs目录下的R.jar,先删除RDirPath目录下的R.java文件
				 FileUtil.delete(RJavaPath);
				 String RJarPath=TEMP_PATH+File.separator+"libs"+File.separator+"R.jar";
				 String RClass2JarCommand="jar cvf " + RJarPath + " *";
//				 String RClass2JarCommand=String.format("jar cvf %s *",RJarPath);
				 System.out.println("	RClass2JarCommand:"+RClass2JarCommand);
				 CommandUtil.exeCmd(RClass2JarCommand,new File(RDirPath));
				 System.out.println("	10.将生成RDirPath目录压缩成游戏libs目录下的R.jar----->成功！");
				 System.out.println("-------------"+LINE_SEPARATOR+LINE_SEPARATOR);
				 
				 System.out.println("	11.将TEMP_PATH目录下libs目录中的jar包[渠道sdk中拷贝过来的和重新生成的R.jar]----->dex文件----->smali文件");
				 System.out.println("	libs目录下的jar包如下：");
//				 4.将TEMP_PATH目录下libs目录中的jar包[渠道sdk中拷贝过来的和重新生成的R.jar]生成对应的dex文件
				 String gameLibsPath=TEMP_PATH+File.separator+"libs";
				 File[] jarFiles = new File(gameLibsPath).listFiles(new FilenameFilter() {
					
					@Override
					public boolean accept(File dir, String name) {
						if (name.endsWith(".jar")) {
							System.out.println("	"+name);
							return true;
						}
						return false;
					}
				});
				System.out.println("-------------------------");
				
				for (File file : jarFiles) {
					String dexFilePath = file.getAbsolutePath().replace(".jar",".dex");
					System.out.println("	jar---->dex:"+file.getAbsolutePath()+"----->"+dexFilePath);
					String jar2DexCommand=String.format("java -jar -Xms512m -Xmx512m dx.jar --dex --output=%s %s",new String[]{dexFilePath,file.getAbsolutePath()});
					System.out.println("	jar2DexCommand:"+jar2DexCommand);
					CommandUtil.exeCmd(jar2DexCommand, new File(TOOLS_PATH));
					System.out.println("	"+file.getName()+"------>dex成功！"+LINE_SEPARATOR);
					
					FileUtil.delete(file.getAbsolutePath());//删除jar文件
//					5.将dex文件转换为smali文件,将其放到smali2目录下
					String smali2Path=TEMP_PATH+File.separator+"smali2";
					System.out.println("	dex----->smali:"+dexFilePath+"----->smali");
					String dex2SmaliCommand=String.format("java -jar baksmali.jar -o %s %s ",new String[]{smali2Path,dexFilePath});
					System.out.println("	dex2SmaliCommand:"+dex2SmaliCommand);
					CommandUtil.exeCmd(dex2SmaliCommand, new File(TOOLS_PATH));
					System.out.println("	dex----->smali成功！"+LINE_SEPARATOR);
					FileUtil.delete(dexFilePath);
				}
				 System.out.println("	11.将TEMP_PATH目录下libs目录中的jar包[渠道sdk中拷贝过来的和重新生成的R.jar]----->dex文件----->smali文件----->成功！");
				if (new File(gameLibsPath).listFiles().length<=0) {//如果libs目录下没有其他文件，就删除该libs目录
					FileUtil.delete(gameLibsPath);
				}
				
//				分dex操作
				System.out.println("	12.首先创建未加密ubsdk_config_nomal.xml");
//				首先创建未加密ubsdk_config_nomal.xml，首先创建DOM文档，然后在写入配置文件中
				String ubsdkConfigPath=TEMP_PATH+File.separator+"assets"+File.separator+"ubsdk_config_nomal.xml";
				Element ubsdkConfigRootElement = DocumentHelper.createElement("config");
				Document ubsdkConfigDOM = DocumentHelper.createDocument(ubsdkConfigRootElement);
				
				System.out.println("		12.1添加param参数");
//				添加param参数
				Map<String, String> channelParams = channel.getChannelParams();
				if (channelParams.size()>0) {
					for (Entry<String,String> entry : channelParams.entrySet()) {
						Element param = DocumentHelper.createElement("param");
						param.addAttribute("name",entry.getKey());
						param.addAttribute("value",entry.getValue());
						ubsdkConfigRootElement.add(param);
					}
				}
//				添加game的MainActivity，用来在UBSplashActivity跳转到游戏的MainActivity
				Element param = DocumentHelper.createElement("param");
				param.addAttribute("name","MAIN_ACTIVITY_NAME");
				param.addAttribute("value",gameOldMainActivityFullName);
				System.out.println("		gameOldMainActivityFullName:"+gameOldMainActivityFullName);
				ubsdkConfigRootElement.add(param);
				System.out.println("		12.1添加param参数----->成功！"+LINE_SEPARATOR);
				
				System.out.println("		12.2添加plugin参数");
//			       添加channelConfig中配置的渠道sdk的plugin
				Element plugins = DocumentHelper.createElement("plugins");
				Map<String, String> pluginMap = channelConfig.getPlugins();
				if (pluginMap.size()>0) {
					for (Entry<String,String> entry : pluginMap.entrySet()) {
						Element plugin = DocumentHelper.createElement("plugin");
						plugin.addAttribute("type",entry.getKey());//注意这里的要和ChannelConfigXMLParse要对应
						plugin.addAttribute("name",entry.getValue());
						plugins.add(plugin);
					}
					ubsdkConfigRootElement.add(plugins);
				}
				System.out.println("		12.2添加plugin参数----->成功！"+LINE_SEPARATOR);
				
				System.out.println("		12.3添加applications参数");
//			  添加channelConfig中配置的渠道sdk的application
				Element applications = DocumentHelper.createElement("applications");
				List<String> applicationList = channelConfig.getApplications();
				if (applicationList!=null&&applicationList.size()>0) {
					for (String appPluginName : applicationList) {
						Element appPlugin = DocumentHelper.createElement("application");
						appPlugin.addAttribute("name",appPluginName);
						applications.add(appPlugin);
					}
					ubsdkConfigRootElement.add(applications);
				}
				System.out.println("		12.3添加applications参数----->成功！"+LINE_SEPARATOR);
				
				XMLWriter xmlWriter2 = new XMLWriter(new FileWriter(ubsdkConfigPath), outputFormat);
				xmlWriter2.write(ubsdkConfigDOM);
				xmlWriter2.flush();
				xmlWriter2.close();
				System.out.println("	12.首先创建未加密ubsdk_config_nomal.xml----->成功！");
				
				System.out.println("	13.对ubsdk_config_nomal.xml进行加密为ubsdk_config.xml");
//				对普通的ubsdk_config_nomal.xml进行加密
				EncryptUtil.createEncryptConfigXml(TEMP_PATH+File.separator+"assets", ubsdkConfigPath);
				System.out.println("	13.对ubsdk_config_nomal.xml进行加密为ubsdk_config.xml----->成功！");
				
//				回编成apk的过程
//				输出路径
				System.out.println("	14.生成未签名的apk...");
				String unsignedApkPath=OUT_PATH+File.separator+"unsigned.apk";
//				1.生成未签名的apk
				String generateUnsignedApkCommand=String.format("java -jar %s b -r -o %s %s ", new String[]{"apktool"+apktoolVersion+".jar",unsignedApkPath,TEMP_PATH});
				System.out.println("	generateUnsignedApkCommand:"+generateUnsignedApkCommand);
				CommandUtil.exeCmd(generateUnsignedApkCommand, new File(TOOLS_PATH));
				System.out.println("	14.生成未签名的apk成功!"+LINE_SEPARATOR+LINE_SEPARATOR);
				
				System.out.println("	15.签名");
//				2.给unsigned.apk签名
				String signedApkPath=OUT_PATH+File.separator+"signed.apk";
				
				if (TextUtil.isEmpty(channel.getKeystore())) {
					channel.setKeystore("vas");
				}
				
				String keystoreDirPath=CONFIG_PATH+File.separator+"keystore"+File.separator+channel.getKeystore();
				String keystorePath=keystoreDirPath+File.separator+channel.getKeystore()+".keystore";
				String keystoreConfigPath=keystoreDirPath+File.separator+"config.xml";
				Keystore keystore = KeystoreXMLParser.parser(keystoreConfigPath);
				
				String generateSignedApkCommand = String.format(
		                    "jarsigner -digestalg SHA1 -sigalg SHA1withRSA -keystore %s -storepass %s -keypass %s -signedjar %s %s %s",
		                    new String[] {keystorePath, keystore.getPasword(), keystore.getAliasPwd(), signedApkPath,
		                    		unsignedApkPath, keystore.getAlias()});
				System.out.println("	generateSignedApkCommand:"+generateSignedApkCommand);
				CommandUtil.exeCmd(generateSignedApkCommand, new File(TOOLS_PATH));
//				FileUtil.delete(unsignedApkPath);
				System.out.println("	15.签名----->成功！"+LINE_SEPARATOR+LINE_SEPARATOR);
				
				System.out.println("	16.对签名apk生成优化！");
//				3.对已生成的签名包进行优化
//				最终的生成渠道包路径和命令
				String finalChannelApkDir=OUT_PATH+File.separator+channel.getId()+File.separator+game.getFolder();
				SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd-HH-mm",Locale.getDefault());
				Date date = new Date();
				String timestamp = simpleDateFormat.format(date);
				String finalChannelApkName=game.getFolder()+"_"+channel.getId()+"_"+timestamp+".apk";
				String finalChannelApkPath=finalChannelApkDir+File.separator+finalChannelApkName;
				File finalChannelApk = new File(finalChannelApkPath);
				if (!finalChannelApk.getParentFile().exists()) {
					finalChannelApk.getParentFile().mkdirs();
				}
				if (finalChannelApk.exists()) {
					finalChannelApk.delete();
				}
				
				String zipalignPath=TOOLS_PATH+File.separator+"zipalign";
				String generateFinalChannelApkCommand=String.format("%s -v 4 %s %s",new String[]{zipalignPath,signedApkPath,finalChannelApkPath});
				System.out.println("	generateFinalChannelApkCommand:"+generateFinalChannelApkCommand);
				CommandUtil.exeCmd(generateFinalChannelApkCommand,new File(TOOLS_PATH));
				System.out.println("	16.对签名apk生成优化----->成功!");
//				FileUtil.delete(signedApkPath);
				System.out.println("	【"+game.getName()+"】----->"+"【"+channel.getId()+"】----->打包完成！"+LINE_SEPARATOR+LINE_SEPARATOR+LINE_SEPARATOR);
			}
			System.out.println("【"+game.getName()+"】----->"+"所有渠道包打包完成！"+LINE_SEPARATOR+LINE_SEPARATOR+LINE_SEPARATOR);
		}
		System.out.println("所有渠道包打包完成！");
	}
	
	/**
	 * 修改游戏smali文件目录，并用新的包名路径替换smali文件旧的包名路径
	 * @param oldGamePackageName
	 * @param newGamePackageName
	 * @throws Exception
	 */
	private static void modifySmaliDirsAndFilePackageImport(String oldGamePackageName,String newGamePackageName) throws Exception{
//		注意这里要用临时目录中转拷贝，因为sourceDir和targetDir在同一目录下，会出现递归拷贝，会oom
		String tempSmaliPath=TEMP_PATH+File.separator+"tempSmali";
		String gameSmaliPath=TEMP_PATH+File.separator+"smali";
		String oldGameSmaliPath= gameSmaliPath+File.separator+oldGamePackageName.replace(".",File.separator);
		String newGameSmaliPath = gameSmaliPath+File.separator+newGamePackageName.replace(".",File.separator);
		System.out.println("		oldGameSmaliPath:"+oldGameSmaliPath);
		System.out.println("		tempSmali:"+tempSmaliPath);
		System.out.println("		newGameSmaliPath:"+newGameSmaliPath);
//		File newGameSmaliPackageDir= new File(newGameSmaliPackagePath);
//		if (!newGameSmaliPackageDir.exists()) {
//			newGameSmaliPackageDir.mkdirs();
//		}
		System.out.println("		复制oldGameSmaliPath---->tempSmaliPath");
		FileUtil.copyDirectiory(oldGameSmaliPath, tempSmaliPath);
//		复制成功删除老包名目录对应的smali目录
		FileUtil.delete(oldGameSmaliPath);
		System.out.println("		复制成功！");
		System.out.println("		复制tempSmaliPath---->newGameSmaliPath");
		FileUtil.copyDirectiory(tempSmaliPath, newGameSmaliPath);
		FileUtil.delete(tempSmaliPath);
		System.out.println("		复制成功！");
		System.out.println("-----------------"+LINE_SEPARATOR+LINE_SEPARATOR);
		
//		遍历新的smali目录中的文件，修改smali文件中所有旧包名目录的引用为新包名的引用
//		注意smali文件引入包的引用形式为：.class Lcom/yolanda/nohttp/BasicBinary$UploadPoster; 以正斜杠分割
		String oldGameSmaliPackageImportPath=oldGamePackageName.replace(".",File.separator).replace("\\","/");
		String newGameSmaliPackageImportPath=newGamePackageName.replace(".",File.separator).replace("\\", "/");
		
		System.out.println("		遍历新包名的smali文件，替换每个文件的导包");
//		遍历新包名的smali文件，替换每个文件的导包
		FileUtil.replaceDirectioryContent(oldGameSmaliPackageImportPath, newGameSmaliPackageImportPath, new File(newGameSmaliPath));
		System.out.println("		替换成功！");
		System.out.println("-----------------"+LINE_SEPARATOR+LINE_SEPARATOR);
	}
	
	@SuppressWarnings("resource")
	private static void replacePackageName(File file,String[] fromStrArr,String toStr) throws IOException{
//		先读
		FileReader fileReader = new FileReader(file);
		BufferedReader br = new BufferedReader(fileReader);
		StringBuffer sb = new StringBuffer();
		String str="";
		while ((str=br.readLine())!=null) {
			for (String fromStr : fromStrArr) {
				str = str.replace(fromStr, toStr);
			}
			sb.append(str);
		}
		br.close();
		
//		后写
		FileWriter fileWriter = new FileWriter(file);
		BufferedWriter bw = new BufferedWriter(fileWriter);
		bw.write(sb.toString());
		bw.close();
	}
	
	/**
	 * 获取游戏icon的名字
	 * @param manifestPath
	 * @return
	 * @throws DocumentException
	 */
	private static String getIconName(String manifestPath) throws DocumentException{
		Document document = new SAXReader().read(new File(manifestPath));
		Element application = document.getRootElement().element("application");
		String iconValue = application.attributeValue("icon");
		String iconName="";
		//特别注意这里写死了图标为.png结尾,因为AndroidManifest.xml中一般这样android:icon="@drawable/app_icon"配置，没有后缀
		if (iconValue.indexOf("@drawable/")!=-1) {
			iconName=iconValue.replaceAll("@drawable/","")+".png";
		}else if(iconValue.indexOf("@mipmap/")!=-1){
			iconName=iconValue.replaceAll("@mipmap/","")+".png";
		}
		return iconName;
	}
	
	private static void initPath(){
		BASE_PATH=System.getProperty("user.dir");
		TOOLS_PATH=BASE_PATH+File.separator+"tools";
		CONFIG_PATH=BASE_PATH+File.separator+"config";
		GAMES_PATH=BASE_PATH+File.separator+"games";
		WORK_PATH=BASE_PATH+File.separator+"work";
		BAK_PATH=WORK_PATH+File.separator+"bak";
		TEMP_PATH=WORK_PATH+File.separator+"temp";
		OUT_PATH=BASE_PATH+File.separator+"out";
	}
}
