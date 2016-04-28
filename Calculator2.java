package com.example.mathsapp;

/**
 * @author linzhijie
 *
 */
/**
 * @author linzhijie
 *
 */
/**
 * @author linzhijie
 *
 */
public class Calculator2 {

	int a;
	int b;
	Calculator r;
	 int add(int a,int b){  // 加法运算
		     a = r.getNumerator();
		     b = r.getDenominator();
		    return a+b;
		  }
		  
		  int  sub(int a,int b){  // 减法运算
		   a = r.getNumerator();
		   b = r.getDenominator();
		    return a-b;
		  } 
		  
		  int  muti(int a,int b){ // 乘法运算
		    a = r.getNumerator();
		    b = r.getDenominator();
		    return a*b;
		  }
		  
		  int f(int a,int b)
		  {  // 求a和b的最大公约数
			    if(a < b){
			      int c = a;
			      a = b;
			      b = c;
			    }
			    int r = a % b;
			    while(r != 0){
			      a = b;
			      b = r;;
			      r = a % b;
			    }
			    return b;
			  }

		double div(int a,int b){  // 除法运算
		    a = r.getNumerator();
		    b = r.getDenominator();
		    if(b==0)
		    	return 0;
		    int c = f(Math.abs(a),Math.abs(b));         // 计算最大公约数
		    int  numerator = a / c;
		    int  denominator = b / c;
		    if(numerator<0 && denominator<0){
		    numerator = - numerator;
		    denominator = - denominator;
		    return a/b;
		  }
		  return numerator/denominator;
		}
}
