package com.example.mathsapp;
public class Kuo2 {

	 /**
	 * @param str
	 * @return
	 */
	private static double interceptNumIndex(String str) {
		  double a = 0; // 记录数据
		  int InrerceIndex = 0; // 记录运算符的位置
		  boolean temp = false; // 记录数据前运算符的状态
		  char[] stringOperation = str.toCharArray();
		  for (int i = stringOperation.length - 1; i >= 0; i--) {
		   if(stringOperation[i]=='*'||stringOperation[i]=='÷'||stringOperation[i]=='+'||stringOperation[i]=='-') {
		    InrerceIndex = i;
		   }
		   temp = true;
		  }
		  return a;
	}
	

}
