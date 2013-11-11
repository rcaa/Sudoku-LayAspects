package undo;

import driver.util.Driver;

public aspect UndoDynamic extends UndoFeature {

	pointcut driver() : if (Driver.isActivated("undo")); // true default
	
	Object around() : adviceexecution() && within(UndoFeature) && !driver() {
		return null;
	}
}
