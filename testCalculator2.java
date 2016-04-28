package com.example.mathsapp;

import junit.framework.TestCase;

import org.junit.Test;
public class testCalculator2 extends TestCase {

	@Test
	  public void testadd() {

		Calculator2 c=new Calculator2();
	    assertEquals(7,c.add(3, 4));
	  }
}
