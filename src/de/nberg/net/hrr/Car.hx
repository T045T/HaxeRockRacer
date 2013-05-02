package de.nberg.net.hrr;
import de.nberg.net.hrr.HRRTypes;
import haxe.Json;

/**
 * ...
 * @author Nils Berg
 */
class Car extends RaceObject
{
	public var driver(default, setDriver) : String;
	public var hp(default, setHP) : Int;
	public var missiles(default, setMissiles) : Int;
	public var mines(default, setMines) : Int;
	public var boosts(default, setBoosts) : Int;
	public var accelerating : Bool;
	public var turning(default, setTurning) : Direction;
	public var ID(default, setID) : Int;
	public var lapsComplete(default, setLapsComplete) : Int;
	
	public function new(locX : Float, locY : Float, speedX : Float = 0, speedY : Float = 0, heading : Float = 0) 
	{
		super(locX, locY, speedX, speedY, heading);
	}
	
	public static function fromJson( parsed : JsonCar ) : Null<Car> {
		if (parsed.message != "car") return null;
		
		var car = new Car(parsed.locationX, parsed.locationY, parsed.speedX, parsed.speedY, parsed.facing);
		car.driver = parsed.driver;
		car.hp = parsed.hp;
		car.missiles = parsed.missiles;
		car.boosts = parsed.boosts;
		car.mines = parsed.mines;
		car.ID = parsed.id;
		car.accelerating = parsed.accelerating;
		car.turning = switch (parsed.turning) {
			case 0 : Direction.NONE;
			case 1 : Direction.RIGHT;
			case -1 : Direction.LEFT;
			default : Direction.NONE;
		};
		car.lapsComplete = parsed.lapscomplete;
		
		return car;
	}
	
	
	
	private function setDriver( s : String ) {
		if (driver == null) {
			return driver = s;
		} else {
			return driver;
		}
	}
	
	private function setHP ( v : Int ) {
		if ( v >= 0 ) {
			return hp = v;
		} else {
			return hp;
		}
	}
	
	private function setMissiles ( v : Int ) {
		if ( v >= 0 ) {
			return missiles = v;
		} else {
			return missiles;
		}
	}
	
	private function setBoosts ( v : Int ) {
		if ( v >= 0 ) {
			return boosts = v;
		} else {
			return boosts;
		}
	}
	
	private function setMines ( v : Int ) {
		if ( v >= 0 ) {
			return mines = v;
		} else {
			return mines;
		}
	}
	
	private function setTurning ( t : Direction ) {
		return switch ( t ) {
			case Direction.LEFT : turning = t;
			case Direction.RIGHT : turning = t;
			case Direction.NONE : turning = t;
			default : t;
		}
	}
	
	private function setID( i : Int ) {
		if ( i > 0 ) {
			return ID = i;
		} else {
			return ID;
		}
	}
	
	private function setLapsComplete ( l : Int ) {
		if ( l > 0 ) {
			return lapsComplete = l;
		} else {
			return lapsComplete;
		}
	}
}