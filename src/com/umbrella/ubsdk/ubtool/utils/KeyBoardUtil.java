package com.umbrella.ubsdk.ubtool.utils;

import java.util.Scanner;

/**
 * 键盘工具
 * @author qingshanliao
 */
public class KeyBoardUtil {
	/**
	 * 从键盘录入
	 * @param inputHint	：录入提示
	 * @return 用户输入的内容
	 */
	public static String keyBoardIn(String inputHint){
		System.out.println(inputHint);
		return new Scanner(System.in).next();
	}
}
