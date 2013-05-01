package de.nberg.net.hrr;

import de.nberg.net.hrr.HRRTypes;

/**
 * A client library for Hard-Rock Racing, an educational game available at https://github.com/Scaatis/Hard-Rock-Racing
 * @author Nils Berg
 */
class BasicRacer
{

	private var name : String;
	private var prefChar : String;
	private var carType : String;
	
	private var connected : Bool;
	
	private var inGame : Bool;
	
	public function new(name : String, ?preferredCharacter : Characters, ?carType : Cars) 
	{
		if ( preferredCharacter == null ) {
			preferredCharacter = Characters.Cyberhawk;
		}
		if ( carType == null ) {
			carType = Cars.Airblade;
		}
		prefChar = HRRTypes.charName(preferredCharacter);
		this.carType = HRRTypes.carName(carType);
	}
	
}