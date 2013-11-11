package solver;

import base.Board;
import base.BoardManager;
import driver.util.Driver;

public aspect SolverDynamic extends SolverFeature {

	pointcut driver() : if (Driver.isActivated("solver")); // true default
	
	pointcut hook_generateSolutions(BoardManager cthis) : SolverFeature.hook_generateSolutions(cthis) && driver();
	
	pointcut hook_solveSudokuGenerator(Board board, BoardManager bm) : SolverFeature.hook_solveSudokuGenerator(board, bm) && driver();
	
//	Object around() : adviceexecution() && within(SolverFeature) && !driver() {
//		return null;
//	}
}