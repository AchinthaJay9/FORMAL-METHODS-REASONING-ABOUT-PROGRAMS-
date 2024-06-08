Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Asteroids))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Asteroids))==(Machine(Asteroids));
  Level(Machine(Asteroids))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Asteroids)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Asteroids))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Asteroids))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Asteroids))==(?);
  List_Includes(Machine(Asteroids))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Asteroids))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Asteroids))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Asteroids))==(?);
  Context_List_Variables(Machine(Asteroids))==(?);
  Abstract_List_Variables(Machine(Asteroids))==(?);
  Local_List_Variables(Machine(Asteroids))==(?);
  List_Variables(Machine(Asteroids))==(?);
  External_List_Variables(Machine(Asteroids))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Asteroids))==(?);
  Abstract_List_VisibleVariables(Machine(Asteroids))==(?);
  External_List_VisibleVariables(Machine(Asteroids))==(?);
  Expanded_List_VisibleVariables(Machine(Asteroids))==(?);
  List_VisibleVariables(Machine(Asteroids))==(?);
  Internal_List_VisibleVariables(Machine(Asteroids))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Asteroids))==(btrue);
  Gluing_List_Invariant(Machine(Asteroids))==(btrue);
  Expanded_List_Invariant(Machine(Asteroids))==(btrue);
  Abstract_List_Invariant(Machine(Asteroids))==(btrue);
  Context_List_Invariant(Machine(Asteroids))==(btrue);
  List_Invariant(Machine(Asteroids))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Asteroids))==(btrue);
  Abstract_List_Assertions(Machine(Asteroids))==(btrue);
  Context_List_Assertions(Machine(Asteroids))==(btrue);
  List_Assertions(Machine(Asteroids))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Asteroids))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Asteroids))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Asteroids))==(skip);
  Context_List_Initialisation(Machine(Asteroids))==(skip);
  List_Initialisation(Machine(Asteroids))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Asteroids))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Asteroids))==(btrue);
  List_Constraints(Machine(Asteroids))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Asteroids))==(?);
  List_Operations(Machine(Asteroids))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Asteroids))==(XAxisNew,YAxisNew,grid,asteroids,emptyArea,homebase,starbase);
  Inherited_List_Constants(Machine(Asteroids))==(?);
  List_Constants(Machine(Asteroids))==(XAxisNew,YAxisNew,grid,asteroids,emptyArea,homebase,starbase)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Asteroids))==(?);
  Context_List_Defered(Machine(Asteroids))==(?);
  Context_List_Sets(Machine(Asteroids))==(?);
  List_Valuable_Sets(Machine(Asteroids))==(?);
  Inherited_List_Enumerated(Machine(Asteroids))==(?);
  Inherited_List_Defered(Machine(Asteroids))==(?);
  Inherited_List_Sets(Machine(Asteroids))==(?);
  List_Enumerated(Machine(Asteroids))==(?);
  List_Defered(Machine(Asteroids))==(?);
  List_Sets(Machine(Asteroids))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Asteroids))==(?);
  Expanded_List_HiddenConstants(Machine(Asteroids))==(?);
  List_HiddenConstants(Machine(Asteroids))==(?);
  External_List_HiddenConstants(Machine(Asteroids))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Asteroids))==(btrue);
  Context_List_Properties(Machine(Asteroids))==(btrue);
  Inherited_List_Properties(Machine(Asteroids))==(btrue);
  List_Properties(Machine(Asteroids))==(XAxisNew <: NAT1 & XAxisNew = 1..12 & YAxisNew <: NAT1 & YAxisNew = 1..7 & grid = XAxisNew*YAxisNew & asteroids <: grid & asteroids = {7|->7,8|->3,10|->6,11|->2,12|->5,3|->2,3|->5,5|->4,6|->7,7|->1,7|->5} & emptyArea <: grid & emptyArea/\asteroids = {} & emptyArea\/asteroids = grid & homebase: grid & homebase: emptyArea & homebase = 1|->1 & starbase: grid & starbase: emptyArea & starbase = 6|->4)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Asteroids)) == (XAxisNew,YAxisNew,grid,asteroids,emptyArea,homebase,starbase | ? | ? | ? | ? | ? | ? | ? | Asteroids);
  List_Of_HiddenCst_Ids(Machine(Asteroids)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Asteroids)) == (XAxisNew,YAxisNew,grid,asteroids,emptyArea,homebase,starbase);
  List_Of_VisibleVar_Ids(Machine(Asteroids)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Asteroids)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Asteroids)) == (Type(XAxisNew) == Cst(SetOf(btype(INTEGER,"[XAxisNew","]XAxisNew")));Type(YAxisNew) == Cst(SetOf(btype(INTEGER,"[YAxisNew","]YAxisNew")));Type(grid) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(asteroids) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(emptyArea) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(homebase) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(starbase) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
