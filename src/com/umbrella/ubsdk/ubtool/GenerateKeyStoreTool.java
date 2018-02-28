package com.umbrella.ubsdk.ubtool;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Locale;

import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.XMLWriter;

import com.umbrella.ubsdk.ubtool.utils.CommandUtil;
import com.umbrella.ubsdk.ubtool.utils.KeyBoardUtil;
import com.vas.vassdk.util.TextUtil;

/**
 * 根据 <<游戏名>> 生成签名文件的工具
 * 规则：
 * @author qingshanliao
 */
public class GenerateKeyStoreTool {
	private static OutputFormat outputFormat=new OutputFormat("",true,"UTF-8");
	
	private static String BASE_PATH="";
	private static String CONFIG_PATH="";
	private static String KEYSTORE_PATH="";
	public static void main(String[] args) throws Exception {
		initPath();
		System.out.println("keytool.exe 生成签名文件");
		String gameName = KeyBoardUtil.keyBoardIn("请输入游戏名英文字母简写：");
		while (TextUtil.isEmpty(gameName)) {
			gameName = KeyBoardUtil.keyBoardIn("请输入游戏名英文字母简写：");
		}
		
		String gameKeystoreDirPath=KEYSTORE_PATH+File.separator+gameName;
		String gameKeystorePath=gameKeystoreDirPath+File.separator+gameName+".keystore";

		File gameKeystore = new File(gameKeystorePath);
		if (gameKeystore.exists()) {
			throw new RuntimeException(gameKeystore.getName()+"签名文件已经存在！！！！！！");
		}else{
			File gameKeystoreDir = new File(gameKeystoreDirPath);
			if (!gameKeystoreDir.exists()) {
				gameKeystoreDir.mkdirs();
			}
		}
		
//		注意经测试aliasPassword和keystorePassword的密码长度>=6才能成功生成keystore,所以统一这里拼接"_ubsdk"
		String alias=gameName+".keystore";
		String aliasPassword=gameName+"_ubsdk";
		String keystorePassword=gameName+"_ubsdk";
		
//		命令行一次性生成签名文件
		System.out.println("正在生成keystore----->"+gameKeystorePath);
		generateKeystore(gameKeystorePath, alias, aliasPassword, keystorePassword);
		System.out.println("生成----->"+gameKeystorePath+"----->成功！"+"\r\n");
		
//		生成签名相关配置文件
		String keystoreConfigPath=gameKeystoreDirPath+File.separator+"config.xml";
		System.out.println("正在生成keystore配置文件----->"+keystoreConfigPath);
		generateKeystoreConfig(gameName, keystoreConfigPath, alias, aliasPassword, keystorePassword);
		System.out.println("生成keystore配置文件----->"+keystoreConfigPath+"----->成功！");
	}

	private static void generateKeystore(String gameKeystorePath, String alias, String aliasPassword,
			String keystorePassword) throws Exception {
		String generateKeystoreCommand=String.format(Locale.getDefault(),
				"keytool -genkey -keyalg RSA -validity 36500 -alias %s -keystore %s -storepass %s -keypass %s -dname \"CN=%s,OU=%s,O=%s,L=%s,ST=%s,C=CN\"",
				new Object[]{
						alias,
						gameKeystorePath,
						keystorePassword,
						aliasPassword,
						"ubsdk",
						"ubsdk",
						"ubsdk",
						"nanjing",
						"nanjing"});
		System.out.println("generateKeystoreCommand-->"+generateKeystoreCommand);
		CommandUtil.exeCmd(generateKeystoreCommand, new File(TOOLS_PATH));
	}
	
	/**
	 * 生成签名相关配置文件
	 * @param gameName
	 * @param gameKeystoreConfigPath
	 * @param alias
	 * @param aliasPassword
	 * @param keystorePassword
	 * @throws IOException
	 */
	private static void generateKeystoreConfig(String gameName, String gameKeystoreConfigPath, String alias,
			String aliasPassword, String keystorePassword) throws IOException {
		
		
		Element rootElement = DocumentHelper.createElement("keystore");
		Document keystoreDOM = DocumentHelper.createDocument(rootElement);
		rootElement.addAttribute("name", gameName);
		rootElement.addAttribute("password", keystorePassword);
		
		Element aliasElement = DocumentHelper.createElement("alias");
		aliasElement.addAttribute("name",alias);
		aliasElement.addAttribute("password",aliasPassword);
		rootElement.add(aliasElement);
		
		XMLWriter xmlWriter = new XMLWriter(new FileWriter(gameKeystoreConfigPath), outputFormat);
		xmlWriter.write(keystoreDOM);
		xmlWriter.flush();
		xmlWriter.close();
	};
	
	private static String TOOLS_PATH="";
	private static void initPath(){
		BASE_PATH=System.getProperty("user.dir");
		TOOLS_PATH=BASE_PATH+File.separator+"tools";
		CONFIG_PATH=BASE_PATH+File.separator+"config";
		KEYSTORE_PATH=CONFIG_PATH+File.separator+"keystore";
	}
}
