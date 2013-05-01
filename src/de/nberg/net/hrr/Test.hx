package de.nberg.net.hrr;
import haxe.Json;

/**
 * ...
 * @author Nils Berg
 */
class Test
{
	
	
	public static function main() 
	{
		var foo = new Car(0, 0, 0, 0, Math.PI / 2);
		var bar = new Mine(100, 0);
		var baz = new Mine(100, 100);
		trace(foo.getHeading(bar));
		trace(foo.getDistance(bar));
		trace(foo.getDistance(baz));
		trace(foo.getHeading(baz));
		var argh = new BasicRacer("Foobart");
		var jsonString = "{\"message\":\"car\", \"id\":\"foo\", \"driver\":\"Nils\", \"hp\":\"10\", \"locationX\":\"0\", \"locationY\":\"0\", \"speedX\":\"0\", \"speedY\":\"0\", \"facing\":\"0\", \"missiles\":\"3\", \"boosts\":\"3\",\"mines\":\"3\", \"lapscomplete\":\"0\", \"accelerating\":\"true\", \"turning\":\"1\"}";
		var jsonArray = "{\"data\":[\"foo\", \"5\", 2]}";
		var parsed : Foo = Json.parse(jsonArray);
		trace(jsonString.substr(57));
		var car = Car.fromJson(jsonString );
	}
	
}
typedef Foo = {
		data : Array<Int>
	};