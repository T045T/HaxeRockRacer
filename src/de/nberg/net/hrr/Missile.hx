package de.nberg.net.hrr;

/**
 * ...
 * @author Nils Berg
 */
class Missile extends RaceObject
{
	public var shooter(default, setShooter) : String;
	
	public function new(locX : Int, locY : Int, speedX : Float = 0, speedY : Float = 0, heading : Float = 0) 
	{
		
	}
	
	private function setShooter( s : String ) {
		if ( shooter == null ) {
			return shooter = s;
		}
		else {
			return shooter;
		}
	}
}