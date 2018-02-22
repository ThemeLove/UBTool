package com.umbrella.ubsdk.ubtool.utils;

import java.io.File;

import com.umbrella.ubsdk.tool.util.StreamGobbler;

public class CommandUtil {
    // 执行命令
    public static void exeCmd(String command, File dir) throws Exception
    {
        showLog(Runtime.getRuntime().exec(command, null, dir));
    }
    
    private static void showLog(Process process) throws Exception
    {
        StreamGobbler errorGobbler = new StreamGobbler(process.getErrorStream(), "ERROR");
        errorGobbler.start();
        StreamGobbler outGobbler = new StreamGobbler(process.getInputStream(), "STDOUT");
        outGobbler.start();
        process.waitFor();
    }
}
