package com.example.mathsapp;
public class Kuo2 {

	 /**
	 * @param str
	 * @return
	 */
	private static double interceptNumIndex(String str) {
		  double a = 0; // ��¼����
		  int InrerceIndex = 0; // ��¼�������λ��
		  boolean temp = false; // ��¼����ǰ�������״̬
		  char[] stringOperation = str.toCharArray();
		  for (int i = stringOperation.length - 1; i >= 0; i--) {
		   if(stringOperation[i]=='*'||stringOperation[i]=='��'||stringOperation[i]=='+'||stringOperation[i]=='-') {
		    InrerceIndex = i;
		   }
		   temp = true;
		  }
		  return a;
	}
	

}
