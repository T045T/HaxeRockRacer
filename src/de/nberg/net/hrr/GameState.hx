package de.nberg.net.hrr;

/**
 * ...
 * @author Nils Berg
 */
class GameState
{
	public var timeElapsed(default, null) : Float;
	public var cars(default, null) : Array < Car >;
	public var missiles(default, null) : Array < Missile >;
	public var mines(default, null) : Array < Mine >;
	
	public function new( json : String ) 
	{
		
	}
	
}