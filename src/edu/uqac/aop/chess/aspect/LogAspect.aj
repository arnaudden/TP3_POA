package edu.uqac.aop.chess.aspect;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.PrintWriter;

import edu.uqac.aop.chess.agent.*;

public aspect LogAspect {

	
pointcut callMakeMove(Move mv): call(boolean  Player.makeMove(..)) && args(mv);
	
	after(Move mv) returning (boolean bool) : callMakeMove(mv){
		
		
		if (bool)
		{
			try {
	            FileOutputStream f=new FileOutputStream("Chess.txt");
	            f.write(("Mouvement joué = " + mv.toString()).getBytes());
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
		}
}
	
}
