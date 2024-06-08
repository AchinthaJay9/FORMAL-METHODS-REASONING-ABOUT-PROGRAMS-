Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Spaceship))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Spaceship))==(Machine(Spaceship));
  Level(Machine(Spaceship))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Spaceship)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Spaceship))==(Asteroids)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Spaceship))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Spaceship))==(?);
  List_Includes(Machine(Spaceship))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Spaceship))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Spaceship))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Spaceship))==(?);
  Context_List_Variables(Machine(Spaceship))==(?);
  Abstract_List_Variables(Machine(Spaceship))==(?);
  Local_List_Variables(Machine(Spaceship))==(gameStatus,regionsVisited,noOfAsteroidCollisions,currentPower,yAxis,xAxis);
  List_Variables(Machine(Spaceship))==(gameStatus,regionsVisited,noOfAsteroidCollisions,currentPower,yAxis,xAxis);
  External_List_Variables(Machine(Spaceship))==(gameStatus,regionsVisited,noOfAsteroidCollisions,currentPower,yAxis,xAxis)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Spaceship))==(?);
  Abstract_List_VisibleVariables(Machine(Spaceship))==(?);
  External_List_VisibleVariables(Machine(Spaceship))==(?);
  Expanded_List_VisibleVariables(Machine(Spaceship))==(?);
  List_VisibleVariables(Machine(Spaceship))==(?);
  Internal_List_VisibleVariables(Machine(Spaceship))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Spaceship))==(btrue);
  Gluing_List_Invariant(Machine(Spaceship))==(btrue);
  Expanded_List_Invariant(Machine(Spaceship))==(btrue);
  Abstract_List_Invariant(Machine(Spaceship))==(btrue);
  Context_List_Invariant(Machine(Spaceship))==(btrue);
  List_Invariant(Machine(Spaceship))==(xAxis: NAT1 & xAxis: XAxisNew & yAxis: NAT1 & yAxis: YAxisNew & xAxis|->yAxis: grid & xAxis|->yAxis: emptyArea & currentPower: INTEGER & noOfAsteroidCollisions: NAT & regionsVisited: seq(grid) & regionsVisited: seq(emptyArea) & gameStatus: GAME_STATUS)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Spaceship))==(btrue);
  Abstract_List_Assertions(Machine(Spaceship))==(btrue);
  Context_List_Assertions(Machine(Spaceship))==(btrue);
  List_Assertions(Machine(Spaceship))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Spaceship))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Spaceship))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Spaceship))==(xAxis,yAxis,currentPower,noOfAsteroidCollisions,regionsVisited,gameStatus:=1,1,100,0,[homebase],NOT_OVER);
  Context_List_Initialisation(Machine(Spaceship))==(skip);
  List_Initialisation(Machine(Spaceship))==(xAxis:=1 || yAxis:=1 || currentPower:=100 || noOfAsteroidCollisions:=0 || regionsVisited:=[homebase] || gameStatus:=NOT_OVER)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Spaceship))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Spaceship),Machine(Asteroids))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Spaceship))==(btrue);
  List_Constraints(Machine(Spaceship))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Spaceship))==(NewGame,MoveUp,MoveDown,MoveForward,MoveBackward,EngageWarpDrive,MissionStatus,RegionsVisited,DockedAtStarbase,GameStatus);
  List_Operations(Machine(Spaceship))==(NewGame,MoveUp,MoveDown,MoveForward,MoveBackward,EngageWarpDrive,MissionStatus,RegionsVisited,DockedAtStarbase,GameStatus)
END
&
THEORY ListInputX IS
  List_Input(Machine(Spaceship),NewGame)==(power);
  List_Input(Machine(Spaceship),MoveUp)==(?);
  List_Input(Machine(Spaceship),MoveDown)==(?);
  List_Input(Machine(Spaceship),MoveForward)==(?);
  List_Input(Machine(Spaceship),MoveBackward)==(?);
  List_Input(Machine(Spaceship),EngageWarpDrive)==(newXAxis,newYAxis);
  List_Input(Machine(Spaceship),MissionStatus)==(?);
  List_Input(Machine(Spaceship),RegionsVisited)==(?);
  List_Input(Machine(Spaceship),DockedAtStarbase)==(?);
  List_Input(Machine(Spaceship),GameStatus)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Spaceship),NewGame)==(?);
  List_Output(Machine(Spaceship),MoveUp)==(report);
  List_Output(Machine(Spaceship),MoveDown)==(report);
  List_Output(Machine(Spaceship),MoveForward)==(report);
  List_Output(Machine(Spaceship),MoveBackward)==(report);
  List_Output(Machine(Spaceship),EngageWarpDrive)==(report);
  List_Output(Machine(Spaceship),MissionStatus)==(currentLocation,currentPowerReserve,totalAsteroidCollisions);
  List_Output(Machine(Spaceship),RegionsVisited)==(regions);
  List_Output(Machine(Spaceship),DockedAtStarbase)==(dockedStatus);
  List_Output(Machine(Spaceship),GameStatus)==(gameStatusReport)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Spaceship),NewGame)==(NewGame(power));
  List_Header(Machine(Spaceship),MoveUp)==(report <-- MoveUp);
  List_Header(Machine(Spaceship),MoveDown)==(report <-- MoveDown);
  List_Header(Machine(Spaceship),MoveForward)==(report <-- MoveForward);
  List_Header(Machine(Spaceship),MoveBackward)==(report <-- MoveBackward);
  List_Header(Machine(Spaceship),EngageWarpDrive)==(report <-- EngageWarpDrive(newXAxis,newYAxis));
  List_Header(Machine(Spaceship),MissionStatus)==(currentLocation,currentPowerReserve,totalAsteroidCollisions <-- MissionStatus);
  List_Header(Machine(Spaceship),RegionsVisited)==(regions <-- RegionsVisited);
  List_Header(Machine(Spaceship),DockedAtStarbase)==(dockedStatus <-- DockedAtStarbase);
  List_Header(Machine(Spaceship),GameStatus)==(gameStatusReport <-- GameStatus)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Spaceship),NewGame)==(power: NAT);
  List_Precondition(Machine(Spaceship),MoveUp)==(report: OUTCOME);
  List_Precondition(Machine(Spaceship),MoveDown)==(report: OUTCOME);
  List_Precondition(Machine(Spaceship),MoveForward)==(report: OUTCOME);
  List_Precondition(Machine(Spaceship),MoveBackward)==(report: OUTCOME);
  List_Precondition(Machine(Spaceship),EngageWarpDrive)==(report: OUTCOME & newXAxis: NAT1 & newXAxis: XAxisNew & newYAxis: NAT1 & newYAxis: YAxisNew);
  List_Precondition(Machine(Spaceship),MissionStatus)==(btrue);
  List_Precondition(Machine(Spaceship),RegionsVisited)==(btrue);
  List_Precondition(Machine(Spaceship),DockedAtStarbase)==(dockedStatus: DOCKED_STATUS);
  List_Precondition(Machine(Spaceship),GameStatus)==(gameStatusReport: GAME_STATUS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Spaceship),GameStatus)==(gameStatusReport: GAME_STATUS | gameStatus = WON ==> gameStatusReport:=WON [] not(gameStatus = WON) ==> (gameStatus = LOST ==> gameStatusReport:=LOST [] not(gameStatus = LOST) ==> gameStatusReport:=NOT_OVER));
  Expanded_List_Substitution(Machine(Spaceship),DockedAtStarbase)==(dockedStatus: DOCKED_STATUS | xAxis|->yAxis = starbase ==> dockedStatus:=DOCKED_AT_STARBASE [] not(xAxis|->yAxis = starbase) ==> dockedStatus:=NOT_AT_STARBASE);
  Expanded_List_Substitution(Machine(Spaceship),RegionsVisited)==(btrue | regions:=regionsVisited);
  Expanded_List_Substitution(Machine(Spaceship),MissionStatus)==(btrue | currentLocation,currentPowerReserve,totalAsteroidCollisions:=xAxis|->yAxis,currentPower,noOfAsteroidCollisions);
  Expanded_List_Substitution(Machine(Spaceship),EngageWarpDrive)==(report: OUTCOME & newXAxis: NAT1 & newXAxis: XAxisNew & newYAxis: NAT1 & newYAxis: YAxisNew | gameStatus = NOT_OVER ==> (currentPower>=warpDriveMovementPower ==> (newXAxis|->newYAxis: grid ==> (not(newXAxis = xAxis & newYAxis = yAxis) ==> (not(newXAxis|->newYAxis: asteroids) ==> (newXAxis|->newYAxis = starbase ==> xAxis,yAxis,currentPower,regionsVisited,report,gameStatus:=newXAxis,newYAxis,currentPower-warpDriveMovementPower,regionsVisited<-(newXAxis|->newYAxis),WARP_DRIVE_SUCCESSFUL,WON [] not(newXAxis|->newYAxis = starbase) ==> (currentPower-warpDriveMovementPower>=normalMovementPower ==> xAxis,yAxis,currentPower,regionsVisited,report,gameStatus:=newXAxis,newYAxis,currentPower-warpDriveMovementPower,regionsVisited<-(newXAxis|->newYAxis),WARP_DRIVE_SUCCESSFUL,NOT_OVER [] not(currentPower-warpDriveMovementPower>=normalMovementPower) ==> xAxis,yAxis,currentPower,regionsVisited,report,gameStatus:=newXAxis,newYAxis,currentPower-warpDriveMovementPower,regionsVisited<-(newXAxis|->newYAxis),WARP_DRIVE_SUCCESSFUL,LOST)) [] not(not(newXAxis|->newYAxis: asteroids)) ==> currentPower,noOfAsteroidCollisions,report,gameStatus:=currentPower-asteroidCollisionPower,noOfAsteroidCollisions+1,WARP_DRIVE_FAILED_ASTEROID_CRASH,NOT_OVER) [] not(not(newXAxis = xAxis & newYAxis = yAxis)) ==> report:=WARP_DRIVE_ERROR_BOUNDERY) [] not(newXAxis|->newYAxis: grid) ==> report:=WARP_FAILED_UNABLE_TO_WARP_TO_THE_SAME_AREA) [] not(currentPower>=warpDriveMovementPower) ==> report:=WARP_DRIVE_FAILED_NO_POWER) [] not(gameStatus = NOT_OVER) ==> report:=GAME_OVER_START_NEW_GAME);
  Expanded_List_Substitution(Machine(Spaceship),MoveBackward)==(report: OUTCOME | gameStatus = NOT_OVER ==> (currentPower>=normalMovementPower ==> (pred(xAxis)|->yAxis: grid ==> (not(pred(xAxis)|->yAxis: asteroids) ==> (pred(xAxis)|->yAxis = starbase ==> xAxis,currentPower,regionsVisited,report,gameStatus:=pred(xAxis),currentPower-normalMovementPower,regionsVisited<-(pred(xAxis)|->yAxis),MOVEMENT_SUCCESSFUL,WON [] not(pred(xAxis)|->yAxis = starbase) ==> (currentPower-normalMovementPower>=normalMovementPower ==> xAxis,currentPower,regionsVisited,report,gameStatus:=pred(xAxis),currentPower-normalMovementPower,regionsVisited<-(pred(xAxis)|->yAxis),MOVEMENT_SUCCESSFUL,NOT_OVER [] not(currentPower-normalMovementPower>=normalMovementPower) ==> xAxis,currentPower,regionsVisited,report,gameStatus:=pred(xAxis),currentPower-normalMovementPower,regionsVisited<-(pred(xAxis)|->yAxis),MOVEMENT_SUCCESSFUL,LOST)) [] not(not(pred(xAxis)|->yAxis: asteroids)) ==> (currentPower-asteroidCollisionPower>=normalMovementPower ==> currentPower,noOfAsteroidCollisions,report,gameStatus:=currentPower-asteroidCollisionPower,noOfAsteroidCollisions+1,MOVEMENT_ASTEROID_CRASH,NOT_OVER [] not(currentPower-asteroidCollisionPower>=normalMovementPower) ==> currentPower,noOfAsteroidCollisions,report,gameStatus:=currentPower-asteroidCollisionPower,noOfAsteroidCollisions+1,MOVEMENT_ASTEROID_CRASH,LOST)) [] not(pred(xAxis)|->yAxis: grid) ==> report:=MOVEMENT_FAILED) [] not(currentPower>=normalMovementPower) ==> report:=MOVEMENT_FAILED_NO_POWER) [] not(gameStatus = NOT_OVER) ==> report:=GAME_OVER_START_NEW_GAME);
  Expanded_List_Substitution(Machine(Spaceship),MoveForward)==(report: OUTCOME | gameStatus = NOT_OVER ==> (currentPower>=normalMovementPower ==> (succ(xAxis)|->yAxis: grid ==> (not(succ(xAxis)|->yAxis: asteroids) ==> (succ(xAxis)|->yAxis = starbase ==> xAxis,currentPower,regionsVisited,report,gameStatus:=succ(xAxis),currentPower-normalMovementPower,regionsVisited<-(succ(xAxis)|->yAxis),MOVEMENT_SUCCESSFUL,WON [] not(succ(xAxis)|->yAxis = starbase) ==> (currentPower-normalMovementPower>=normalMovementPower ==> xAxis,currentPower,regionsVisited,report,gameStatus:=succ(xAxis),currentPower-normalMovementPower,regionsVisited<-(succ(xAxis)|->yAxis),MOVEMENT_SUCCESSFUL,NOT_OVER [] not(currentPower-normalMovementPower>=normalMovementPower) ==> xAxis,currentPower,regionsVisited,report,gameStatus:=succ(xAxis),currentPower-normalMovementPower,regionsVisited<-(succ(xAxis)|->yAxis),MOVEMENT_SUCCESSFUL,LOST)) [] not(not(succ(xAxis)|->yAxis: asteroids)) ==> (currentPower-asteroidCollisionPower>=normalMovementPower ==> currentPower,noOfAsteroidCollisions,report,gameStatus:=currentPower-asteroidCollisionPower,noOfAsteroidCollisions+1,MOVEMENT_ASTEROID_CRASH,NOT_OVER [] not(currentPower-asteroidCollisionPower>=normalMovementPower) ==> currentPower,noOfAsteroidCollisions,report,gameStatus:=currentPower-asteroidCollisionPower,noOfAsteroidCollisions+1,MOVEMENT_ASTEROID_CRASH,LOST)) [] not(succ(xAxis)|->yAxis: grid) ==> report:=MOVEMENT_FAILED) [] not(currentPower>=normalMovementPower) ==> report:=MOVEMENT_FAILED_NO_POWER) [] not(gameStatus = NOT_OVER) ==> report:=GAME_OVER_START_NEW_GAME);
  Expanded_List_Substitution(Machine(Spaceship),MoveDown)==(report: OUTCOME | gameStatus = NOT_OVER ==> (currentPower>=normalMovementPower ==> (xAxis|->pred(yAxis): grid ==> (not(xAxis|->pred(yAxis): asteroids) ==> (xAxis|->pred(yAxis) = starbase ==> yAxis,currentPower,regionsVisited,report,gameStatus:=pred(yAxis),currentPower-normalMovementPower,regionsVisited<-(xAxis|->pred(yAxis)),MOVEMENT_SUCCESSFUL,WON [] not(xAxis|->pred(yAxis) = starbase) ==> (currentPower-normalMovementPower>=normalMovementPower ==> yAxis,currentPower,regionsVisited,report,gameStatus:=pred(yAxis),currentPower-normalMovementPower,regionsVisited<-(xAxis|->pred(yAxis)),MOVEMENT_SUCCESSFUL,NOT_OVER [] not(currentPower-normalMovementPower>=normalMovementPower) ==> yAxis,currentPower,regionsVisited,report,gameStatus:=pred(yAxis),currentPower-normalMovementPower,regionsVisited<-(xAxis|->pred(yAxis)),MOVEMENT_SUCCESSFUL,LOST)) [] not(not(xAxis|->pred(yAxis): asteroids)) ==> (currentPower-asteroidCollisionPower>=normalMovementPower ==> currentPower,noOfAsteroidCollisions,report,gameStatus:=currentPower-asteroidCollisionPower,noOfAsteroidCollisions+1,MOVEMENT_ASTEROID_CRASH,NOT_OVER [] not(currentPower-asteroidCollisionPower>=normalMovementPower) ==> currentPower,noOfAsteroidCollisions,report,gameStatus:=currentPower-asteroidCollisionPower,noOfAsteroidCollisions+1,MOVEMENT_ASTEROID_CRASH,LOST)) [] not(xAxis|->pred(yAxis): grid) ==> report:=MOVEMENT_FAILED) [] not(currentPower>=normalMovementPower) ==> report:=MOVEMENT_FAILED_NO_POWER) [] not(gameStatus = NOT_OVER) ==> report:=GAME_OVER_START_NEW_GAME);
  Expanded_List_Substitution(Machine(Spaceship),MoveUp)==(report: OUTCOME | gameStatus = NOT_OVER ==> (currentPower>=normalMovementPower ==> (xAxis|->succ(yAxis): grid ==> (not(xAxis|->succ(yAxis): asteroids) ==> (xAxis|->succ(yAxis) = starbase ==> yAxis,currentPower,regionsVisited,report,gameStatus:=succ(yAxis),currentPower-normalMovementPower,regionsVisited<-(xAxis|->succ(yAxis)),MOVEMENT_SUCCESSFUL,WON [] not(xAxis|->succ(yAxis) = starbase) ==> (currentPower-normalMovementPower>=normalMovementPower ==> yAxis,currentPower,regionsVisited,report,gameStatus:=succ(yAxis),currentPower-normalMovementPower,regionsVisited<-(xAxis|->succ(yAxis)),MOVEMENT_SUCCESSFUL,NOT_OVER [] not(currentPower-normalMovementPower>=normalMovementPower) ==> yAxis,currentPower,regionsVisited,report,gameStatus:=succ(yAxis),currentPower-normalMovementPower,regionsVisited<-(xAxis|->succ(yAxis)),MOVEMENT_SUCCESSFUL,LOST)) [] not(not(xAxis|->succ(yAxis): asteroids)) ==> (currentPower-asteroidCollisionPower>=normalMovementPower ==> currentPower,noOfAsteroidCollisions,report,gameStatus:=currentPower-asteroidCollisionPower,noOfAsteroidCollisions+1,MOVEMENT_ASTEROID_CRASH,NOT_OVER [] not(currentPower-asteroidCollisionPower>=normalMovementPower) ==> currentPower,noOfAsteroidCollisions,report,gameStatus:=currentPower-asteroidCollisionPower,noOfAsteroidCollisions+1,MOVEMENT_ASTEROID_CRASH,LOST)) [] not(xAxis|->succ(yAxis): grid) ==> report:=MOVEMENT_FAILED) [] not(currentPower>=normalMovementPower) ==> report:=MOVEMENT_FAILED_NO_POWER) [] not(gameStatus = NOT_OVER) ==> report:=GAME_OVER_START_NEW_GAME);
  Expanded_List_Substitution(Machine(Spaceship),NewGame)==(power: NAT | xAxis,yAxis,currentPower,noOfAsteroidCollisions,regionsVisited,gameStatus:=1,1,power,0,[homebase],NOT_OVER);
  List_Substitution(Machine(Spaceship),NewGame)==(xAxis:=1 || yAxis:=1 || currentPower:=power || noOfAsteroidCollisions:=0 || regionsVisited:=[homebase] || gameStatus:=NOT_OVER);
  List_Substitution(Machine(Spaceship),MoveUp)==(IF gameStatus = NOT_OVER THEN IF currentPower>=normalMovementPower THEN IF xAxis|->succ(yAxis): grid THEN IF not(xAxis|->succ(yAxis): asteroids) THEN IF xAxis|->succ(yAxis) = starbase THEN yAxis:=succ(yAxis) || currentPower:=currentPower-normalMovementPower || regionsVisited:=regionsVisited<-(xAxis|->succ(yAxis)) || report:=MOVEMENT_SUCCESSFUL || gameStatus:=WON ELSE IF currentPower-normalMovementPower>=normalMovementPower THEN yAxis:=succ(yAxis) || currentPower:=currentPower-normalMovementPower || regionsVisited:=regionsVisited<-(xAxis|->succ(yAxis)) || report:=MOVEMENT_SUCCESSFUL || gameStatus:=NOT_OVER ELSE yAxis:=succ(yAxis) || currentPower:=currentPower-normalMovementPower || regionsVisited:=regionsVisited<-(xAxis|->succ(yAxis)) || report:=MOVEMENT_SUCCESSFUL || gameStatus:=LOST END END ELSE IF currentPower-asteroidCollisionPower>=normalMovementPower THEN currentPower:=currentPower-asteroidCollisionPower || noOfAsteroidCollisions:=noOfAsteroidCollisions+1 || report:=MOVEMENT_ASTEROID_CRASH || gameStatus:=NOT_OVER ELSE currentPower:=currentPower-asteroidCollisionPower || noOfAsteroidCollisions:=noOfAsteroidCollisions+1 || report:=MOVEMENT_ASTEROID_CRASH || gameStatus:=LOST END END ELSE report:=MOVEMENT_FAILED END ELSE report:=MOVEMENT_FAILED_NO_POWER END ELSE report:=GAME_OVER_START_NEW_GAME END);
  List_Substitution(Machine(Spaceship),MoveDown)==(IF gameStatus = NOT_OVER THEN IF currentPower>=normalMovementPower THEN IF xAxis|->pred(yAxis): grid THEN IF not(xAxis|->pred(yAxis): asteroids) THEN IF xAxis|->pred(yAxis) = starbase THEN yAxis:=pred(yAxis) || currentPower:=currentPower-normalMovementPower || regionsVisited:=regionsVisited<-(xAxis|->pred(yAxis)) || report:=MOVEMENT_SUCCESSFUL || gameStatus:=WON ELSE IF currentPower-normalMovementPower>=normalMovementPower THEN yAxis:=pred(yAxis) || currentPower:=currentPower-normalMovementPower || regionsVisited:=regionsVisited<-(xAxis|->pred(yAxis)) || report:=MOVEMENT_SUCCESSFUL || gameStatus:=NOT_OVER ELSE yAxis:=pred(yAxis) || currentPower:=currentPower-normalMovementPower || regionsVisited:=regionsVisited<-(xAxis|->pred(yAxis)) || report:=MOVEMENT_SUCCESSFUL || gameStatus:=LOST END END ELSE IF currentPower-asteroidCollisionPower>=normalMovementPower THEN currentPower:=currentPower-asteroidCollisionPower || noOfAsteroidCollisions:=noOfAsteroidCollisions+1 || report:=MOVEMENT_ASTEROID_CRASH || gameStatus:=NOT_OVER ELSE currentPower:=currentPower-asteroidCollisionPower || noOfAsteroidCollisions:=noOfAsteroidCollisions+1 || report:=MOVEMENT_ASTEROID_CRASH || gameStatus:=LOST END END ELSE report:=MOVEMENT_FAILED END ELSE report:=MOVEMENT_FAILED_NO_POWER END ELSE report:=GAME_OVER_START_NEW_GAME END);
  List_Substitution(Machine(Spaceship),MoveForward)==(IF gameStatus = NOT_OVER THEN IF currentPower>=normalMovementPower THEN IF succ(xAxis)|->yAxis: grid THEN IF not(succ(xAxis)|->yAxis: asteroids) THEN IF succ(xAxis)|->yAxis = starbase THEN xAxis:=succ(xAxis) || currentPower:=currentPower-normalMovementPower || regionsVisited:=regionsVisited<-(succ(xAxis)|->yAxis) || report:=MOVEMENT_SUCCESSFUL || gameStatus:=WON ELSE IF currentPower-normalMovementPower>=normalMovementPower THEN xAxis:=succ(xAxis) || currentPower:=currentPower-normalMovementPower || regionsVisited:=regionsVisited<-(succ(xAxis)|->yAxis) || report:=MOVEMENT_SUCCESSFUL || gameStatus:=NOT_OVER ELSE xAxis:=succ(xAxis) || currentPower:=currentPower-normalMovementPower || regionsVisited:=regionsVisited<-(succ(xAxis)|->yAxis) || report:=MOVEMENT_SUCCESSFUL || gameStatus:=LOST END END ELSE IF currentPower-asteroidCollisionPower>=normalMovementPower THEN currentPower:=currentPower-asteroidCollisionPower || noOfAsteroidCollisions:=noOfAsteroidCollisions+1 || report:=MOVEMENT_ASTEROID_CRASH || gameStatus:=NOT_OVER ELSE currentPower:=currentPower-asteroidCollisionPower || noOfAsteroidCollisions:=noOfAsteroidCollisions+1 || report:=MOVEMENT_ASTEROID_CRASH || gameStatus:=LOST END END ELSE report:=MOVEMENT_FAILED END ELSE report:=MOVEMENT_FAILED_NO_POWER END ELSE report:=GAME_OVER_START_NEW_GAME END);
  List_Substitution(Machine(Spaceship),MoveBackward)==(IF gameStatus = NOT_OVER THEN IF currentPower>=normalMovementPower THEN IF pred(xAxis)|->yAxis: grid THEN IF not(pred(xAxis)|->yAxis: asteroids) THEN IF pred(xAxis)|->yAxis = starbase THEN xAxis:=pred(xAxis) || currentPower:=currentPower-normalMovementPower || regionsVisited:=regionsVisited<-(pred(xAxis)|->yAxis) || report:=MOVEMENT_SUCCESSFUL || gameStatus:=WON ELSE IF currentPower-normalMovementPower>=normalMovementPower THEN xAxis:=pred(xAxis) || currentPower:=currentPower-normalMovementPower || regionsVisited:=regionsVisited<-(pred(xAxis)|->yAxis) || report:=MOVEMENT_SUCCESSFUL || gameStatus:=NOT_OVER ELSE xAxis:=pred(xAxis) || currentPower:=currentPower-normalMovementPower || regionsVisited:=regionsVisited<-(pred(xAxis)|->yAxis) || report:=MOVEMENT_SUCCESSFUL || gameStatus:=LOST END END ELSE IF currentPower-asteroidCollisionPower>=normalMovementPower THEN currentPower:=currentPower-asteroidCollisionPower || noOfAsteroidCollisions:=noOfAsteroidCollisions+1 || report:=MOVEMENT_ASTEROID_CRASH || gameStatus:=NOT_OVER ELSE currentPower:=currentPower-asteroidCollisionPower || noOfAsteroidCollisions:=noOfAsteroidCollisions+1 || report:=MOVEMENT_ASTEROID_CRASH || gameStatus:=LOST END END ELSE report:=MOVEMENT_FAILED END ELSE report:=MOVEMENT_FAILED_NO_POWER END ELSE report:=GAME_OVER_START_NEW_GAME END);
  List_Substitution(Machine(Spaceship),EngageWarpDrive)==(IF gameStatus = NOT_OVER THEN IF currentPower>=warpDriveMovementPower THEN IF newXAxis|->newYAxis: grid THEN IF not(newXAxis = xAxis & newYAxis = yAxis) THEN IF not(newXAxis|->newYAxis: asteroids) THEN IF newXAxis|->newYAxis = starbase THEN xAxis:=newXAxis || yAxis:=newYAxis || currentPower:=currentPower-warpDriveMovementPower || regionsVisited:=regionsVisited<-(newXAxis|->newYAxis) || report:=WARP_DRIVE_SUCCESSFUL || gameStatus:=WON ELSE IF currentPower-warpDriveMovementPower>=normalMovementPower THEN xAxis:=newXAxis || yAxis:=newYAxis || currentPower:=currentPower-warpDriveMovementPower || regionsVisited:=regionsVisited<-(newXAxis|->newYAxis) || report:=WARP_DRIVE_SUCCESSFUL || gameStatus:=NOT_OVER ELSE xAxis:=newXAxis || yAxis:=newYAxis || currentPower:=currentPower-warpDriveMovementPower || regionsVisited:=regionsVisited<-(newXAxis|->newYAxis) || report:=WARP_DRIVE_SUCCESSFUL || gameStatus:=LOST END END ELSE currentPower:=currentPower-asteroidCollisionPower || noOfAsteroidCollisions:=noOfAsteroidCollisions+1 || report:=WARP_DRIVE_FAILED_ASTEROID_CRASH || gameStatus:=NOT_OVER END ELSE report:=WARP_DRIVE_ERROR_BOUNDERY END ELSE report:=WARP_FAILED_UNABLE_TO_WARP_TO_THE_SAME_AREA END ELSE report:=WARP_DRIVE_FAILED_NO_POWER END ELSE report:=GAME_OVER_START_NEW_GAME END);
  List_Substitution(Machine(Spaceship),MissionStatus)==(currentLocation:=xAxis|->yAxis || currentPowerReserve:=currentPower || totalAsteroidCollisions:=noOfAsteroidCollisions);
  List_Substitution(Machine(Spaceship),RegionsVisited)==(regions:=regionsVisited);
  List_Substitution(Machine(Spaceship),DockedAtStarbase)==(IF xAxis|->yAxis = starbase THEN dockedStatus:=DOCKED_AT_STARBASE ELSE dockedStatus:=NOT_AT_STARBASE END);
  List_Substitution(Machine(Spaceship),GameStatus)==(IF gameStatus = WON THEN gameStatusReport:=WON ELSE IF gameStatus = LOST THEN gameStatusReport:=LOST ELSE gameStatusReport:=NOT_OVER END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Spaceship))==(normalMovementPower,warpDriveMovementPower,asteroidCollisionPower);
  Inherited_List_Constants(Machine(Spaceship))==(?);
  List_Constants(Machine(Spaceship))==(normalMovementPower,warpDriveMovementPower,asteroidCollisionPower)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Spaceship),OUTCOME)==({MOVEMENT_SUCCESSFUL,MOVEMENT_FAILED,MOVEMENT_ASTEROID_CRASH,MOVEMENT_FAILED_NO_POWER,WARP_DRIVE_SUCCESSFUL,WARP_DRIVE_ERROR_BOUNDERY,WARP_DRIVE_FAILED_ASTEROID_CRASH,WARP_DRIVE_FAILED_NO_POWER,WARP_FAILED_UNABLE_TO_WARP_TO_THE_SAME_AREA,GAME_OVER_START_NEW_GAME});
  Context_List_Enumerated(Machine(Spaceship))==(?);
  Context_List_Defered(Machine(Spaceship))==(?);
  Context_List_Sets(Machine(Spaceship))==(?);
  List_Valuable_Sets(Machine(Spaceship))==(?);
  Inherited_List_Enumerated(Machine(Spaceship))==(?);
  Inherited_List_Defered(Machine(Spaceship))==(?);
  Inherited_List_Sets(Machine(Spaceship))==(?);
  List_Enumerated(Machine(Spaceship))==(OUTCOME,DOCKED_STATUS,GAME_STATUS);
  List_Defered(Machine(Spaceship))==(?);
  List_Sets(Machine(Spaceship))==(OUTCOME,DOCKED_STATUS,GAME_STATUS);
  Set_Definition(Machine(Spaceship),DOCKED_STATUS)==({DOCKED_AT_STARBASE,NOT_AT_STARBASE});
  Set_Definition(Machine(Spaceship),GAME_STATUS)==({WON,LOST,NOT_OVER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Spaceship))==(?);
  Expanded_List_HiddenConstants(Machine(Spaceship))==(?);
  List_HiddenConstants(Machine(Spaceship))==(?);
  External_List_HiddenConstants(Machine(Spaceship))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Spaceship))==(btrue);
  Context_List_Properties(Machine(Spaceship))==(XAxisNew <: NAT1 & XAxisNew = 1..12 & YAxisNew <: NAT1 & YAxisNew = 1..7 & grid = XAxisNew*YAxisNew & asteroids <: grid & asteroids = {7|->7,8|->3,10|->6,11|->2,12|->5,3|->2,3|->5,5|->4,6|->7,7|->1,7|->5} & emptyArea <: grid & emptyArea/\asteroids = {} & emptyArea\/asteroids = grid & homebase: grid & homebase: emptyArea & homebase = 1|->1 & starbase: grid & starbase: emptyArea & starbase = 6|->4);
  Inherited_List_Properties(Machine(Spaceship))==(btrue);
  List_Properties(Machine(Spaceship))==(normalMovementPower = 5 & warpDriveMovementPower = 20 & asteroidCollisionPower = 10 & OUTCOME: FIN(INTEGER) & not(OUTCOME = {}) & DOCKED_STATUS: FIN(INTEGER) & not(DOCKED_STATUS = {}) & GAME_STATUS: FIN(INTEGER) & not(GAME_STATUS = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Spaceship),Machine(Asteroids))==(?);
  Seen_Context_List_Enumerated(Machine(Spaceship))==(?);
  Seen_Context_List_Invariant(Machine(Spaceship))==(btrue);
  Seen_Context_List_Assertions(Machine(Spaceship))==(btrue);
  Seen_Context_List_Properties(Machine(Spaceship))==(btrue);
  Seen_List_Constraints(Machine(Spaceship))==(btrue);
  Seen_List_Operations(Machine(Spaceship),Machine(Asteroids))==(?);
  Seen_Expanded_List_Invariant(Machine(Spaceship),Machine(Asteroids))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Spaceship),NewGame)==(?);
  List_ANY_Var(Machine(Spaceship),MoveUp)==(?);
  List_ANY_Var(Machine(Spaceship),MoveDown)==(?);
  List_ANY_Var(Machine(Spaceship),MoveForward)==(?);
  List_ANY_Var(Machine(Spaceship),MoveBackward)==(?);
  List_ANY_Var(Machine(Spaceship),EngageWarpDrive)==(?);
  List_ANY_Var(Machine(Spaceship),MissionStatus)==(?);
  List_ANY_Var(Machine(Spaceship),RegionsVisited)==(?);
  List_ANY_Var(Machine(Spaceship),DockedAtStarbase)==(?);
  List_ANY_Var(Machine(Spaceship),GameStatus)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Spaceship)) == (normalMovementPower,warpDriveMovementPower,asteroidCollisionPower,OUTCOME,DOCKED_STATUS,GAME_STATUS,MOVEMENT_SUCCESSFUL,MOVEMENT_FAILED,MOVEMENT_ASTEROID_CRASH,MOVEMENT_FAILED_NO_POWER,WARP_DRIVE_SUCCESSFUL,WARP_DRIVE_ERROR_BOUNDERY,WARP_DRIVE_FAILED_ASTEROID_CRASH,WARP_DRIVE_FAILED_NO_POWER,WARP_FAILED_UNABLE_TO_WARP_TO_THE_SAME_AREA,GAME_OVER_START_NEW_GAME,DOCKED_AT_STARBASE,NOT_AT_STARBASE,WON,LOST,NOT_OVER | ? | gameStatus,regionsVisited,noOfAsteroidCollisions,currentPower,yAxis,xAxis | ? | NewGame,MoveUp,MoveDown,MoveForward,MoveBackward,EngageWarpDrive,MissionStatus,RegionsVisited,DockedAtStarbase,GameStatus | ? | seen(Machine(Asteroids)) | ? | Spaceship);
  List_Of_HiddenCst_Ids(Machine(Spaceship)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Spaceship)) == (normalMovementPower,warpDriveMovementPower,asteroidCollisionPower);
  List_Of_VisibleVar_Ids(Machine(Spaceship)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Spaceship)) == (?: ?);
  List_Of_Ids(Machine(Asteroids)) == (XAxisNew,YAxisNew,grid,asteroids,emptyArea,homebase,starbase | ? | ? | ? | ? | ? | ? | ? | Asteroids);
  List_Of_HiddenCst_Ids(Machine(Asteroids)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Asteroids)) == (XAxisNew,YAxisNew,grid,asteroids,emptyArea,homebase,starbase);
  List_Of_VisibleVar_Ids(Machine(Asteroids)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Asteroids)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Spaceship)) == (Type(OUTCOME) == Cst(SetOf(etype(OUTCOME,0,9)));Type(DOCKED_STATUS) == Cst(SetOf(etype(DOCKED_STATUS,0,1)));Type(GAME_STATUS) == Cst(SetOf(etype(GAME_STATUS,0,2))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Spaceship)) == (Type(MOVEMENT_SUCCESSFUL) == Cst(etype(OUTCOME,0,9));Type(MOVEMENT_FAILED) == Cst(etype(OUTCOME,0,9));Type(MOVEMENT_ASTEROID_CRASH) == Cst(etype(OUTCOME,0,9));Type(MOVEMENT_FAILED_NO_POWER) == Cst(etype(OUTCOME,0,9));Type(WARP_DRIVE_SUCCESSFUL) == Cst(etype(OUTCOME,0,9));Type(WARP_DRIVE_ERROR_BOUNDERY) == Cst(etype(OUTCOME,0,9));Type(WARP_DRIVE_FAILED_ASTEROID_CRASH) == Cst(etype(OUTCOME,0,9));Type(WARP_DRIVE_FAILED_NO_POWER) == Cst(etype(OUTCOME,0,9));Type(WARP_FAILED_UNABLE_TO_WARP_TO_THE_SAME_AREA) == Cst(etype(OUTCOME,0,9));Type(GAME_OVER_START_NEW_GAME) == Cst(etype(OUTCOME,0,9));Type(DOCKED_AT_STARBASE) == Cst(etype(DOCKED_STATUS,0,1));Type(NOT_AT_STARBASE) == Cst(etype(DOCKED_STATUS,0,1));Type(WON) == Cst(etype(GAME_STATUS,0,2));Type(LOST) == Cst(etype(GAME_STATUS,0,2));Type(NOT_OVER) == Cst(etype(GAME_STATUS,0,2));Type(normalMovementPower) == Cst(btype(INTEGER,?,?));Type(warpDriveMovementPower) == Cst(btype(INTEGER,?,?));Type(asteroidCollisionPower) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Spaceship)) == (Type(gameStatus) == Mvl(etype(GAME_STATUS,?,?));Type(regionsVisited) == Mvl(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(noOfAsteroidCollisions) == Mvl(btype(INTEGER,?,?));Type(currentPower) == Mvl(btype(INTEGER,?,?));Type(yAxis) == Mvl(btype(INTEGER,?,?));Type(xAxis) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Spaceship)) == (Type(GameStatus) == Cst(etype(GAME_STATUS,?,?),No_type);Type(DockedAtStarbase) == Cst(etype(DOCKED_STATUS,?,?),No_type);Type(RegionsVisited) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(MissionStatus) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(EngageWarpDrive) == Cst(etype(OUTCOME,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(MoveBackward) == Cst(etype(OUTCOME,?,?),No_type);Type(MoveForward) == Cst(etype(OUTCOME,?,?),No_type);Type(MoveDown) == Cst(etype(OUTCOME,?,?),No_type);Type(MoveUp) == Cst(etype(OUTCOME,?,?),No_type);Type(NewGame) == Cst(No_type,btype(INTEGER,?,?)));
  Observers(Machine(Spaceship)) == (Type(GameStatus) == Cst(etype(GAME_STATUS,?,?),No_type);Type(DockedAtStarbase) == Cst(etype(DOCKED_STATUS,?,?),No_type);Type(RegionsVisited) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(MissionStatus) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
