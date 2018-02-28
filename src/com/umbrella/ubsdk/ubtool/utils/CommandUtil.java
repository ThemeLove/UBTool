package com.umbrella.ubsdk.ubtool.utils;

import java.io.File;

import com.umbrella.ubsdk.ubtool.bean.LoggerThread;

public class CommandUtil {
    // 执行命令
    public static void exeCmd(String command, File dir) throws Exception
    {
        showLog(Runtime.getRuntime().exec(command, null, dir));
    }
    
    private static void showLog(Process process) throws Exception
    {
        LoggerThread errorGobbler = new LoggerThread(process.getErrorStream(), "ERROR");
        errorGobbler.start();
        LoggerThread outGobbler = new LoggerThread(process.getInputStream(), "STDOUT");
        outGobbler.start();
        process.waitFor();
    }
}
