(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`ProgrammingUtilities`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`ProgrammingUtilities`NestUntil;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

NestUntil // ClearAll

NestUntil::usage = "NestUntil[f,expr,test] starts with expr, then repeatedly applies f until applying test to the result yields True.\nNestUntil[f,expr,test,m] supplies the most recent m results as arguments for test at each step.\nNestUntil[f,expr,test,All] supplies all results so far as arguments for test at each step.\nNestUntil[f,expr,test,m,max] applies f at most max times.\nNestUntil[f,expr,test,m,max,n] applies f an extra n times.\nNestUntil[f,expr,test,m,max,-n] returns the result found when f had been applied n fewer times.";

NestUntil[f_, expr_, test_, Optional[m_, 1], Optional[max_, Infinity],
     Optional[n_, 0]] :=
    NestWhile[f, expr, test[##] === False&, m, max, n]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
