package de.nberg.net.hrr;
import de.nberg.net.hrr.HRRTypes;

/**
 * ...
 * @author Nils Berg
 */
class Track
{
	public var width(default, null) : Int;
	public var height(default, null) : Int;
	
	public var data(default, null) : Array< Int >;
	
	public var startDir(default, null) : Direction;
	
	public function new(width : Int, height : Int, data : Array< Int >, startDir : Direction) 
	{
		this.width = width;
		this.height = height;
		this.data = data;
		this.startDir = startDir;
	}
	
	public function new( json : String ) {
		
	}
}