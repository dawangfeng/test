package com.util;

	public class RandomSentencesCN   
	{  
	     public static String randomSentence(){  
	  
	           String[] nouns={"男孩", "女孩", "小狗", "城镇" ,"小汽车"};  
	           String[] articles={"这个", "有一个", "一个", "一些" , "任何"};  
	           String[] verbs={ "驾驶", "冲", "跑", "走" ,"越"};  
	           String[] prepositions={ "向", "来", "过", "下" ,"上"};  
	             
	         int  rNoun1st=(int)(Math.random()*5);  
	         int  rArticle1st=(int)(Math.random()*5);   
	         int  rVerb=(int)(Math.random()*5);   
	         int  rPrepostion=(int)(Math.random()*5);   
	         int  rNoun2nd=(int)(Math.random()*5);  
	         int  rArticle2nd=(int)(Math.random()*5);   
	           
	          String randomSentence=articles[rArticle1st]+nouns[rNoun1st]+  
	                  verbs[rVerb]+prepositions[rPrepostion]+  
	                  articles[rArticle2nd]+nouns[rNoun2nd]+"。";  
	  
	          return randomSentence;  
	          }  
	       
	   public static void main(String[] args)  
	   {  
	       for (int i=0;i<20;i++){  
	           System.out.println(randomSentence());  
	       
	       }
	  }  
}
