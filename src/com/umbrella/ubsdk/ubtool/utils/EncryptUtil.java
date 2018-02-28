package com.umbrella.ubsdk.ubtool.utils;

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

public class EncryptUtil {

    /**
     * 将vassdk_config.xml进行加密
     */
    public static void createEncryptConfigXml(String assetsPath, String configNomalXmlPath)
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
            f = new FileOutputStream(assetsPath + File.separator + "ubdsk.dat");
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
                
//                FileUtil.delete(configNomalXmlPath);
            }
            catch (Exception e2)
            {
                e2.printStackTrace();
            }

        }

    }
}
