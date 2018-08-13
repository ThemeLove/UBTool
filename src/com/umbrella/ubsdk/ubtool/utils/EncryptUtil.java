package com.umbrella.ubsdk.ubtool.utils;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;

import javax.crypto.Cipher;
import javax.crypto.CipherOutputStream;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;

/**
 * 加密工具类
 * @author lqs
 */
public class EncryptUtil {
	
	/**
	 * 通用配置文件加密key存放路径
	 */
	private static final String ENCRYPT_KEY_PATH=System.getProperty("user.dir")+File.separator+"work"+File.separator+"temp"+File.separator+"assets"+File.separator+"ubsdk.dat";
	
	private static SecretKey instanceKey;
	
	/**
	 * 获取唯一的加密key，多个加密配置文件公用一个
	 * @return
	 */
	private static SecretKey getInstanceEncryptKey(){
		if (instanceKey!=null) return instanceKey;
		
		FileOutputStream fos=null;
		ObjectOutputStream oos=null;
		try {
			KeyGenerator keyGenerator = KeyGenerator.getInstance("DESede");
			keyGenerator.init(168);
			instanceKey = keyGenerator.generateKey();
			
			fos = new FileOutputStream(ENCRYPT_KEY_PATH);
			oos = new ObjectOutputStream(fos);
			oos.writeObject(instanceKey);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				if (fos!=null) {
					fos.close();
					fos=null;
				}
				if (oos!=null) {
					oos.close();
					oos=null;
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		return instanceKey;
	} 
	
	/**
	 * DES加密对指定文件加密
	 * @param sourceConfigFilePath		源文件路径
	 * @param targetConfigFilePath		加密文件路径
	 * @param isDeleteSourceFile		是否删除源文件
	 */
    public static void createEncryptConfigXml(String sourceConfigFilePath, String targetConfigFilePath,boolean isDeleteSourceFile)
    {
        SecretKey instanceKey = getInstanceEncryptKey();
        BufferedInputStream in = null;
        CipherOutputStream out = null;
        try
        {
            // 加密要用Cipher来实现
            Cipher cipher = Cipher.getInstance("DESede");
            // 输入流
            cipher.init(Cipher.ENCRYPT_MODE, instanceKey);
            in = new BufferedInputStream(new FileInputStream(sourceConfigFilePath));// 读取nomal文件进行加密
            // 输出流
            out = new CipherOutputStream(new BufferedOutputStream(new FileOutputStream(targetConfigFilePath)), cipher);
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
            System.out.println("加密----->"+sourceConfigFilePath+"----->to----->"+targetConfigFilePath+"----->出错！");
        }
        finally
        {
            try
            {
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
                
                if (isDeleteSourceFile) {
                	FileUtil.delete(sourceConfigFilePath);
				}
            }
            catch (Exception e2)
            {
                e2.printStackTrace();
            }
        }
    }
    
    
}
