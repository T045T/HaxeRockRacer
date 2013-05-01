package de.nberg.net.hrr;

enum Characters {
	Cyberhawk;
	Ivanzypher;
	Jake;
	Katarina;
	Rip;
	Snake;
	Tarquinn;
	Viper;
}
	
enum Cars {
	Airblade;
	BattleTrak;
	DirtDevil;
	Marauder;
	Havac;
}

enum Direction {
	UP;
	DOWN;
	LEFT;
	RIGHT;
	NONE;
}

typedef JsonCar = {
	id : Int,
	message : String, 
	driver : String,
	hp : Int,
	locationX : Float,
	locationY : Float,
	speedX : Float,
	speedY : Float,
	facing : Float,
	missiles : Int,
	boosts : Int,
	mines : Int,
	lapscomplete : Int,
	accelerating : Bool,
	turning : Int
};

typedef JsonTrack = {
	message : String,
	tiled : Bool,
	width : Int,
	height : Int,
	startDir : String,
	data : Array< Int >
};

typedef JsonPlayer = {
	message : String,
	name : String,
	character : String,
	cartype : String
};



class HRRTypes
{
	public static function charName( x : Characters ) {
		return switch ( x ) {
			case Cyberhawk : "Cyberhawk";
			case Ivanzypher : "Ivanzypher";
			case Jake : "Jake Badlands";
			case Katarina : "Katarina Lyons";
			case Rip : "Rip";
			case Snake : "Snake Sanders";
			case Tarquinn : "Tarquinn";
			case Viper : "Viper Mackay";
		}
	}
	
	public static function carName( x : Cars ) {
		return switch(x) {
			case Airblade : "Airblade";
			case BattleTrak : "Battle Trak";
			case DirtDevil : "Dirt Devil";
			case Marauder : "Marauder";
			case Havac : "Havac";
		}
	}
}