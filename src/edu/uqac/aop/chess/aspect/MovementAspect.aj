package edu.uqac.aop.chess.aspect;

import edu.uqac.aop.chess.agent.*;

public aspect MovementAspect {

	pointcut callMakeMove(Move mv): call(boolean  Player.makeMove(..)) && args(mv);
	
	after(Move mv) returning (boolean bool) : callMakeMove(mv){
		
		
		if (bool)
		{
			System.out.println("Le mouvement " + mv + " est possible car son boolean est " + bool);
		}
			
		
		
		
	}
}
