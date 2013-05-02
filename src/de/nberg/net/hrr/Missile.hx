package de.nberg.net.hrr;

import de.nberg.net.hrr.HRRTypes;

/**
 * ...
 * @author Nils Berg
 */
class Missile extends RaceObject
{
	public var shooter(default, setShooter) : String;
	
	public function new(locX : Int, locY : Int, speedX : Float = 0, speedY : Float = 0, heading : Float = 0) 
	{
		super(locX, locY, speedX, speedY, heading);
		shooter = null;
	}
	
	public static function fromJson ( missile : JsonMissile ) {
		var m = new Missile(missile.locationX, missile.locationY, missile.speedX, missile.speedY);
		m.shooter = missile.shooter;
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