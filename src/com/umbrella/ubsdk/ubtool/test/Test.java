package com.umbrella.ubsdk.ubtool.test;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
import java.security.Key;

import javax.crypto.Cipher;
import javax.crypto.CipherOutputStream;
import javax.crypto.KeyGenerator;

import com.umbrella.ubsdk.ubtool.bean.Channel;
import com.umbrella.ubsdk.ubtool.utils.KeyBoardUtil;



public class Test {
	public static void main(String[] args) {
//		strEmptyTest();
//		loopTagTest();
//		createEncryptConfigXml();
//		testFileSeparator();
//		String lineSeperator = System.getProperty("line.seperator","\r\n");
//		String lineSeperator = System.getProperty("line.separator");
//		System.out.println(lineSeperator);
//		String base_path = System.getProperty("user.dir");
//		String comPath=base_path+File.separator+"com";
//		System.out.println(comPath);
//		FileUtil.delete(comPath);
		
		ProcessBuilder builder = new ProcessBuilder();
		builder.command("");
		String simpleName = Channel.class.getSimpleName();
		String name = Channel.class.getName();
		
		System.out.println(simpleName);
		System.out.println(name);
		
	}

	/**
	 * 测试字符串判空
	 */
	private static void strEmptyTest() {
		String keyBoardIn = KeyBoardUtil.keyBoardIn("请输入：");
		
		String sb="";
		System.out.println(sb.isEmpty());
		sb="";
		System.out.println(sb.isEmpty());
		sb="a";
		System.out.println(sb.isEmpty());
	}

	/**
	 * 测试tag结合break/continue在循环中的使用
	 */
	private static void loopTagTest() {
		outer:for(int i=0;i<5;i++){
			inner:for(int j=0;j<10;j++){
				if (j==8) {
					break outer;
//					continue outer;
				}
				System.out.println("j="+j);
			}
			System.out.println("i="+i);
		}
	}

	/**
	 * 测试加密配置文件
	 */
	private static void createEncryptConfigXml() {
		String basePath = System.getProperty("user.dir");
		String assetsPath=basePath+File.separator+"work"+File.separator+"assets";
		String configPath=assetsPath+File.separator+"ubsdk_config_nomal.xml";
		createEncryptConfigXml(assetsPath, configPath);
	}


	/**
	 * 测试创建文件和File.separator
	 */
	private static void testFileSeparator() {
		//		目录路径总用正斜杠“/”反斜杠“\”还是混用都能成功创建目录。
				System.out.println(File.separator);
				String oldpackageName="com.ubsdk.game.xmqz";
		//		replaceAll方法第一个参数为正则表达是,如果是点的要标示全部，有时要用\\.转义
				
				String newpackageName1 = oldpackageName.replaceFirst("\\.","\\"+File.separator);
				String newpackageName = oldpackageName.replaceAll("\\.","\\"+File.separator);
				
		//		String newpackageName = oldpackageName.replace(".",File.separator);
				String basePath = System.getProperty("user.dir");
				System.out.println(basePath);
				System.out.println(newpackageName1);
				System.out.println(newpackageName);
				
				String file1Path=basePath+"/"+"file1";
				System.out.println("file1path-before:"+file1Path);
				File file1 = new File(file1Path);
				file1.mkdirs();
				System.out.println("file1path-after:"+file1.getAbsolutePath());
				
				String file2path=basePath+File.separator+"file2";
				System.out.println("file2path-before:"+file2path);
				File file2 = new File(file2path);
				file2.mkdirs();
				System.out.println("file2path-after:"+file2.getAbsolutePath());
				
				String file3Path="E:/UBSDK/UBSDKTool/file3";
				File file3 = new File(file3Path);
				file3.mkdirs();
				
				System.out.println("file3absolutePath-after:"+file3.getAbsolutePath());
				System.out.println("file3path:"+file3.getPath());
				System.out.println("file3absoluteFile:"+file3.getAbsoluteFile());
	}
	

    /**
     * 将vassdk_config.xml进行加密
     */
    private static void createEncryptConfigXml(String assetsPath, String configNomalXmlPath)
    {
        String configXmlPath = assetsPath + File.separator + "ubsdk_config.xml";
        KeyGenerator kg = null;
        FileOutputStream f = null;
        ObjectOutputStream b = null;
        BufferedInputStream in = null;
        CipherOutputStream out = null;
        try
        {
            kg = KeyGenerator.getInstance("DESede");
            // 指定密钥长度,长度越高,加密强度越大
            kg.init(168);
            // 产生密钥
            Key key = kg.generateKey();
            // 将key序列化到程序assets目录下
            f = new FileOutputStream(assetsPath + File.separator + "ubsdk.dat");
            b = new ObjectOutputStream(f);
            b.writeObject(key);

            // 加密要用Cipher来实现
            Cipher cipher = Cipher.getInstance("DESede");
            // 输入流
            cipher.init(Cipher.ENCRYPT_MODE, key);
            in = new BufferedInputStream(new FileInputStream(configNomalXmlPath));// 读取nomal文件进行加密
            // 输出流
            out = new CipherOutputStream(new BufferedOutputStream(new FileOutputStream(configXmlPath)), cipher);
            int i;
            do
            {
                i = in.read();
                if (i != -1)
                    out.write(i);
            }
            while (i != -1);
        }
        catch (Exception e)
        {
        	e.printStackTrace();
            System.out.println("创建加密ubsdk_config.xml失败");
        }
        finally
        {
            try
            {
                if (f != null)
                {
                    f.close();
                    f = null;
                }
                if (b != null)
                {
                    b.close();
                    b = null;
                }
                if (in != null)
                {
                    in.close();
                    in = null;
                }
                if (out != null)
                {
                    out.close();
                    out = null;
                }

                deleteVasConfigNomal(configNomalXmlPath);

            }
            catch (Exception e2)
            {
                e2.printStackTrace();
            }

        }

    }
    private static void deleteVasConfigNomal(String xmlPath)
    {
        // 加密完成删除vassdk_config_nomal.xml
        File configNomalFile = new File(xmlPath);
        if (configNomalFile.exists())
        {
            System.out.println("路径：" + xmlPath);
            System.out.println("configNomalFile 存在");
            boolean delete = configNomalFile.delete();
            if (!delete)
            {
                System.gc();
                configNomalFile.delete();
            }
            System.out.println("configNomalFile delete : " + delete);
        }
    }

}
