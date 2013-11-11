package guesser;

import driver.util.Driver;

public aspect GuesserDynamic extends GuesserFeature {

	pointcut driver() : if (Driver.isActivated("guesser")); // true default
	
	Object around() : adviceexecution() && within(GuesserFeature) && !driver() {
		return null;
	}
}
