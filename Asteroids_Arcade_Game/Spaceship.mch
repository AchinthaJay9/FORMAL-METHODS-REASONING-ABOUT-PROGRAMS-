/* Spaceship
 * Author: Achintha Jayatilake (STUDENT NO-2019530)
 * Creation date: 1/8/2024
 */
MACHINE
    Spaceship

SEES
    Asteroids

SETS
OUTCOME = { MOVEMENT_SUCCESSFUL, MOVEMENT_FAILED, MOVEMENT_ASTEROID_CRASH, MOVEMENT_FAILED_NO_POWER, WARP_DRIVE_SUCCESSFUL, WARP_DRIVE_ERROR_BOUNDERY,  WARP_DRIVE_FAILED_ASTEROID_CRASH, WARP_DRIVE_FAILED_NO_POWER, WARP_FAILED_UNABLE_TO_WARP_TO_THE_SAME_AREA, GAME_OVER_START_NEW_GAME } ;
DOCKED_STATUS = { DOCKED_AT_STARBASE, NOT_AT_STARBASE } ;
GAME_STATUS = { WON, LOST, NOT_OVER }

DEFINITIONS
isSpaceGrid ( xx, yy ) == ( xx |-> yy : grid ) ;
isAsteroidCrash ( xx, yy ) == ( ( xx |-> yy ) : asteroids) ;
PowerHave ( currentPowerValue, requiredPowerValue ) == ( currentPowerValue >= requiredPowerValue ) ;

  
newXPosition ( position ) == prj1 ( XAxisNew, YAxisNew )( position ) ;
newYPosition ( position ) == prj2 ( XAxisNew, YAxisNew )( position ) ;

      
CONSTANTS
normalMovementPower,
warpDriveMovementPower,
asteroidCollisionPower

PROPERTIES
normalMovementPower = 5 &
warpDriveMovementPower = 20 &
asteroidCollisionPower = 10

VARIABLES
xAxis,
yAxis,
currentPower,
noOfAsteroidCollisions,
regionsVisited,
gameStatus

INVARIANT
xAxis : NAT1 &
xAxis : XAxisNew &
yAxis : NAT1 &
yAxis : YAxisNew &
xAxis |-> yAxis : grid &
xAxis |-> yAxis : emptyArea &
currentPower : INTEGER &
noOfAsteroidCollisions : NAT &
regionsVisited : seq ( grid ) &
regionsVisited : seq ( emptyArea ) &
gameStatus : GAME_STATUS

INITIALISATION
xAxis := 1 ||
yAxis := 1 ||
currentPower := 100 ||
noOfAsteroidCollisions := 0 ||
regionsVisited := [ homebase ] ||
gameStatus := NOT_OVER

OPERATIONS

NewGame ( power ) =
        PRE
            power : NAT
THEN
xAxis := 1 ||
yAxis := 1 ||
currentPower := power ||
noOfAsteroidCollisions := 0 ||
regionsVisited := [ homebase ] ||
gameStatus := NOT_OVER
END ;


report <-- MoveUp =
PRE
report : OUTCOME
THEN
IF

gameStatus = NOT_OVER
THEN
IF

PowerHave ( currentPower, normalMovementPower )
THEN
IF

isSpaceGrid ( xAxis, succ ( yAxis ) )
THEN
IF

not ( isAsteroidCrash ( xAxis, succ ( yAxis ) ) )
THEN
IF

( ( xAxis |-> succ ( yAxis ) ) = starbase )
THEN
yAxis := succ ( yAxis ) ||
currentPower := currentPower - normalMovementPower ||
regionsVisited := regionsVisited <- ( xAxis |-> succ ( yAxis ) ) ||
report := MOVEMENT_SUCCESSFUL ||
gameStatus := WON
ELSE
IF

PowerHave ( currentPower - normalMovementPower, normalMovementPower )
THEN
yAxis := succ ( yAxis ) ||
currentPower := currentPower - normalMovementPower ||
regionsVisited := regionsVisited <- ( xAxis |-> succ ( yAxis ) ) ||
report := MOVEMENT_SUCCESSFUL ||
gameStatus := NOT_OVER
ELSE
yAxis := succ ( yAxis ) ||
currentPower := currentPower - normalMovementPower ||
regionsVisited := regionsVisited <- ( xAxis |-> succ ( yAxis ) ) ||
report := MOVEMENT_SUCCESSFUL ||
gameStatus := LOST
END
END
ELSE
IF
( ( currentPower - asteroidCollisionPower ) >= normalMovementPower )
THEN
currentPower := currentPower - asteroidCollisionPower ||
noOfAsteroidCollisions := noOfAsteroidCollisions + 1 ||
report := MOVEMENT_ASTEROID_CRASH ||
gameStatus := NOT_OVER
ELSE
currentPower := currentPower - asteroidCollisionPower ||
noOfAsteroidCollisions := noOfAsteroidCollisions + 1 ||
report := MOVEMENT_ASTEROID_CRASH ||
gameStatus := LOST
END
END
ELSE
report := MOVEMENT_FAILED
END
ELSE
report := MOVEMENT_FAILED_NO_POWER
END
ELSE
report := GAME_OVER_START_NEW_GAME
END
END ;

report <-- MoveDown =
PRE
report : OUTCOME
THEN
IF

gameStatus = NOT_OVER
THEN
IF

PowerHave ( currentPower, normalMovementPower )
THEN
IF

isSpaceGrid ( xAxis, pred ( yAxis ) )
THEN
IF

not ( isAsteroidCrash ( xAxis, pred ( yAxis ) ) )
THEN
IF

( ( xAxis |-> pred ( yAxis ) ) = starbase )
THEN
yAxis := pred ( yAxis ) ||
currentPower := currentPower - normalMovementPower ||
regionsVisited := regionsVisited <- ( xAxis |-> pred ( yAxis ) ) ||
report := MOVEMENT_SUCCESSFUL ||
gameStatus := WON
ELSE
IF

PowerHave ( currentPower - normalMovementPower, normalMovementPower )
THEN
yAxis := pred ( yAxis ) ||
currentPower := currentPower - normalMovementPower ||
regionsVisited := regionsVisited <- ( xAxis |-> pred ( yAxis ) ) ||
report := MOVEMENT_SUCCESSFUL ||
gameStatus := NOT_OVER
ELSE
yAxis := pred ( yAxis ) ||
currentPower := currentPower - normalMovementPower ||
regionsVisited := regionsVisited <- ( xAxis |-> pred ( yAxis ) ) ||
report := MOVEMENT_SUCCESSFUL ||
gameStatus := LOST
END
END
ELSE
IF
( ( currentPower - asteroidCollisionPower ) >= normalMovementPower )
THEN
currentPower := currentPower - asteroidCollisionPower ||
noOfAsteroidCollisions := noOfAsteroidCollisions + 1 ||
report := MOVEMENT_ASTEROID_CRASH ||
gameStatus := NOT_OVER
ELSE
currentPower := currentPower - asteroidCollisionPower ||
noOfAsteroidCollisions := noOfAsteroidCollisions + 1 ||
report := MOVEMENT_ASTEROID_CRASH ||
gameStatus := LOST
END
END
ELSE
report := MOVEMENT_FAILED
END
ELSE
report := MOVEMENT_FAILED_NO_POWER
END
ELSE
report := GAME_OVER_START_NEW_GAME
END
END ;


report <-- MoveForward =
PRE
report : OUTCOME
THEN
IF

gameStatus = NOT_OVER
THEN
IF

PowerHave ( currentPower, normalMovementPower )
THEN
IF

isSpaceGrid ( succ ( xAxis ), yAxis )
THEN
IF

not ( isAsteroidCrash ( succ ( xAxis ), yAxis ) )
THEN
IF

( ( succ ( xAxis ) |-> yAxis ) = starbase )
THEN
xAxis := succ ( xAxis ) ||
currentPower := currentPower - normalMovementPower ||
regionsVisited := regionsVisited <- ( succ ( xAxis ) |-> yAxis ) ||
report := MOVEMENT_SUCCESSFUL ||
gameStatus := WON
ELSE
IF

PowerHave ( currentPower - normalMovementPower, normalMovementPower )
THEN
xAxis := succ ( xAxis ) ||
currentPower := currentPower - normalMovementPower ||
regionsVisited := regionsVisited <- ( succ ( xAxis ) |-> yAxis ) ||
report := MOVEMENT_SUCCESSFUL ||
gameStatus := NOT_OVER
ELSE
xAxis := succ ( xAxis ) ||
currentPower := currentPower - normalMovementPower ||
regionsVisited := regionsVisited <- (succ ( xAxis ) |-> yAxis ) ||
report := MOVEMENT_SUCCESSFUL ||
gameStatus := LOST
END
END
ELSE
IF
( ( currentPower - asteroidCollisionPower ) >= normalMovementPower )
THEN
currentPower := currentPower - asteroidCollisionPower ||
noOfAsteroidCollisions := noOfAsteroidCollisions + 1 ||
report := MOVEMENT_ASTEROID_CRASH ||
gameStatus := NOT_OVER
ELSE
currentPower := currentPower - asteroidCollisionPower ||
noOfAsteroidCollisions := noOfAsteroidCollisions + 1 ||
report := MOVEMENT_ASTEROID_CRASH ||
gameStatus := LOST
END
END
ELSE
report := MOVEMENT_FAILED
END
ELSE
report := MOVEMENT_FAILED_NO_POWER
END
ELSE
report := GAME_OVER_START_NEW_GAME
END
END ;


report <-- MoveBackward =
PRE
report : OUTCOME
THEN
IF
  
gameStatus = NOT_OVER
THEN
IF

PowerHave ( currentPower, normalMovementPower )
THEN
IF

isSpaceGrid ( pred ( xAxis ), yAxis )
THEN
IF

not ( isAsteroidCrash ( pred ( xAxis ), yAxis ) )
THEN
IF

( ( pred ( xAxis ) |-> yAxis ) = starbase )
THEN
xAxis := pred ( xAxis ) ||
currentPower := currentPower - normalMovementPower ||
regionsVisited := regionsVisited <- ( pred ( xAxis ) |-> yAxis ) ||
report := MOVEMENT_SUCCESSFUL ||
gameStatus := WON
ELSE
IF

PowerHave ( currentPower - normalMovementPower, normalMovementPower )
THEN
xAxis := pred ( xAxis ) ||
currentPower := currentPower - normalMovementPower ||
regionsVisited := regionsVisited <- ( pred ( xAxis ) |-> yAxis ) ||
report := MOVEMENT_SUCCESSFUL ||
gameStatus := NOT_OVER
ELSE
xAxis := pred ( xAxis ) ||
currentPower := currentPower - normalMovementPower ||
regionsVisited := regionsVisited <- ( pred ( xAxis ) |-> yAxis ) ||
report := MOVEMENT_SUCCESSFUL ||
gameStatus := LOST
END
END
ELSE
IF
( ( currentPower - asteroidCollisionPower ) >= normalMovementPower )
THEN
currentPower := currentPower - asteroidCollisionPower ||
noOfAsteroidCollisions := noOfAsteroidCollisions + 1 ||
report := MOVEMENT_ASTEROID_CRASH ||
gameStatus := NOT_OVER
ELSE
currentPower := currentPower - asteroidCollisionPower ||
noOfAsteroidCollisions := noOfAsteroidCollisions + 1 ||
report := MOVEMENT_ASTEROID_CRASH ||
gameStatus := LOST
END
END
ELSE
report := MOVEMENT_FAILED
END
ELSE
report := MOVEMENT_FAILED_NO_POWER
END
ELSE
report := GAME_OVER_START_NEW_GAME
END
END ;


        report <-- EngageWarpDrive ( newXAxis, newYAxis ) =
PRE
report : OUTCOME &
newXAxis : NAT1 &
newXAxis : XAxisNew &
newYAxis : NAT1 &
newYAxis : YAxisNew
THEN
IF
 
gameStatus = NOT_OVER
THEN
IF

PowerHave ( currentPower, warpDriveMovementPower )
THEN
IF

isSpaceGrid ( newXAxis, newYAxis )
THEN
IF

not ( ( newXAxis = xAxis ) & ( newYAxis = yAxis ) )
THEN
IF

not ( isAsteroidCrash ( newXAxis, newYAxis ) )
THEN
IF

( ( newXAxis |-> newYAxis ) = starbase )
THEN
xAxis := newXAxis ||
yAxis := newYAxis ||
currentPower := currentPower - warpDriveMovementPower ||
regionsVisited := regionsVisited <- ( newXAxis |-> newYAxis ) ||
report := WARP_DRIVE_SUCCESSFUL ||
gameStatus := WON
ELSE
IF

PowerHave ( currentPower - warpDriveMovementPower, normalMovementPower )
THEN
xAxis := newXAxis ||
yAxis := newYAxis ||
currentPower := currentPower - warpDriveMovementPower ||
regionsVisited := regionsVisited <- ( newXAxis |-> newYAxis ) ||
report := WARP_DRIVE_SUCCESSFUL ||
gameStatus := NOT_OVER
ELSE
xAxis := newXAxis ||
yAxis := newYAxis ||
currentPower := currentPower - warpDriveMovementPower ||
regionsVisited := regionsVisited <- ( newXAxis |-> newYAxis ) ||
report := WARP_DRIVE_SUCCESSFUL ||
gameStatus := LOST
END
END
ELSE

currentPower := currentPower - asteroidCollisionPower ||
noOfAsteroidCollisions := noOfAsteroidCollisions + 1 ||
report := WARP_DRIVE_FAILED_ASTEROID_CRASH ||
gameStatus := NOT_OVER
END
ELSE
report := WARP_DRIVE_ERROR_BOUNDERY
END
ELSE
report := WARP_FAILED_UNABLE_TO_WARP_TO_THE_SAME_AREA
END
ELSE
report := WARP_DRIVE_FAILED_NO_POWER
END
ELSE
report := GAME_OVER_START_NEW_GAME
END
END ;



currentLocation, currentPowerReserve, totalAsteroidCollisions <-- MissionStatus =
BEGIN
currentLocation := xAxis |-> yAxis ||
currentPowerReserve := currentPower ||
totalAsteroidCollisions := noOfAsteroidCollisions
END ;


regions <-- RegionsVisited =
BEGIN
regions := regionsVisited
END ;


dockedStatus <-- DockedAtStarbase =
PRE
dockedStatus : DOCKED_STATUS  
THEN
IF
( ( xAxis |-> yAxis ) = starbase )
THEN
dockedStatus := DOCKED_AT_STARBASE
ELSE
dockedStatus := NOT_AT_STARBASE
END
END ;


gameStatusReport <-- GameStatus =
PRE
gameStatusReport : GAME_STATUS
THEN
IF
gameStatus = WON
THEN
gameStatusReport := WON
ELSE
IF
gameStatus = LOST
THEN
gameStatusReport := LOST
ELSE
gameStatusReport := NOT_OVER
END
END
END

END