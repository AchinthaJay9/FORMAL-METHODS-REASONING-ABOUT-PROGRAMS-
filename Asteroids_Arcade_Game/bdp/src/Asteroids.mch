/* Asteroids
 * Author: Achintha Jayatilake (STUDENT NO-2019530)
 * Creation date: 1/8/2024
 */
MACHINE
    Asteroids

CONCRETE_CONSTANTS
XAxisNew ,
YAxisNew ,
grid ,
asteroids ,
emptyArea ,
homebase ,
starbase

PROPERTIES

XAxisNew <: NAT1 &
XAxisNew = 1 .. 12 &
YAxisNew <: NAT1 &
YAxisNew = 1 .. 7 &
grid = XAxisNew * YAxisNew &


asteroids <: grid &
asteroids = { ( 7 |-> 7 ) , ( 8 |-> 3 ) , ( 10 |-> 6 ) , ( 11 |-> 2 ) , ( 12 |-> 5 ) , ( 3 |-> 2 ) , ( 3 |-> 5 ) , ( 5 |-> 4 ) , ( 6 |-> 7 ) , ( 7 |-> 1 ) , ( 7 |-> 5 ) } &

emptyArea <: grid &
emptyArea /\ asteroids = {} &
emptyArea \/ asteroids = grid &

homebase : grid &
homebase : emptyArea &
homebase = 1 |-> 1 &

starbase : grid &
starbase : emptyArea &
starbase =  6 |-> 4

END
