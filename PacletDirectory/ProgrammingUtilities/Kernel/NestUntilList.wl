(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`ProgrammingUtilities`"];


(* ::Text:: *)
(*Declare your public symbols here:*)


NestUntilList;


Begin["`Private`"];


(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


NestUntilList // ClearAll
NestUntilList::usage="NestUntilList[f,expr,test] generates a list of the results of applying f to expr, then applying f to that result until test yields True.\nNestUntilList[f,expr,test,m] supplies the most recent m results as arguments for test at each step.";

NestUntilList[f_,expr_,test_,Optional[m_,1],Optional[max_,Infinity],Optional[n_,0]]:=NestWhileList[f,expr, test[##]===False&, m,max,n]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];
EndPackage[];
