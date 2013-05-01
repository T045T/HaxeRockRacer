package de.nberg.net.hrr;

/**
 * ...
 * @author Nils Berg
 */
class RaceObject
{
	public var locX(default, null) : Float;
	public var locY(default, null) : Float;
	public var speedX(default, null) : Float;
	public var speedY(default, null) : Float;
	public var heading(default, null) : Float;
	public var moving(getMoving, null) : Bool;
	
	private function new(locX : Float, locY : Float, speedX : Float = 0, speedY : Float = 0, heading : Float = 0) 
	{
		this.locX = locX;
		this.locY = locY;
		this.speedX = speedX;
		this.speedY = speedY;
		this.heading = heading;
	}
	
	private function getMoving() : Bool {
		return (speedX > 0 && speedY > 0);
	}
	
	public function getDistance( other : RaceObject ) : Float {
		var a = locX - other.locX;
		var b = locY - other.locY;
		return Math.sqrt( a * a + b * b );
	}
	
	/**
	 * returns the relative heading of another RaceObject in Radians ( 0 is on the positive x axis)
	 * @param	other
	 * @return
	 */
	public function getHeading ( other : RaceObject ) : Float {
		var x = other.locX - locX;
		var y = other.locY - locY;
		return Math.atan2(y, x) - this.heading;
	}
}