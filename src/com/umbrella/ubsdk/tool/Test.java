package com.umbrella.ubsdk.tool;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.security.Key;
import java.util.Arrays;

import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;

public class Test
{
    public static String BASE_PATH = "./";

    public static void main(String[] args)
    {

        // 初始化路径
        BASE_PATH = System.getProperty("user.dir");
        
        
        File file = new File(BASE_PATH + File.separator + "vas.dat");
        
        
        
        File outFile = new File(BASE_PATH + File.separator + "ubsdk_config.xml");
        File inFile = new File(BASE_PATH + File.separator + "ubsdk_config.xml");

        
        InputStreamReader reader = null;
        BufferedReader br = null;
        ObjectInputStream b = null;
        try {
            
            //获取key
            b=new ObjectInputStream(new FileInputStream(file));
            Key key=(Key)b.readObject();
           
            // 加解密要用Cipher来实现
            Cipher cipher = Cipher.getInstance("DESede");
            cipher.init(Cipher.DECRYPT_MODE, key);
            // 输出流  
            BufferedOutputStream out = new BufferedOutputStream(  
                    new FileOutputStream(outFile)); 
            // 输入流  
            CipherInputStream in = new CipherInputStream(  
                    new BufferedInputStream(new FileInputStream(  
                            inFile)), cipher);  

            int i;  
            do {  
                i = in.read();  
                if (i != -1)  
                    out.write(i);  
            } while (i != -1);  

            in.close();  
            out.close();  
            System.out.println("解密文件完成！"); 
        } catch (Exception e) {
            e.printStackTrace();
        } finally{
            
            try
            {
                if (b != null)
                {
                    b.close();
                    b = null;
                }

                if (br != null)
                {
                    br.close();
                    br = null;

                }

                if (reader != null)
                {
                    reader.close();
                    reader = null;
                }
                
            }
            catch (IOException e2)
            {
                e2.printStackTrace();
            }
            
        }
        
    }

}
