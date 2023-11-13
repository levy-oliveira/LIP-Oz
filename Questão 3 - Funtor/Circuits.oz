functor
import
   LogicGates at 'BasicLogicGates.ozf'
export
   halfadder: HalfAdder
   exemplo1 : Exemplo1
   exemplo2 : Exemplo2
   exemplo3 : Exemplo3
define
   
   % HalfAdder S=(X+Y) saída C
   proc {HalfAdder X Y ?C ?S}
      S = {LogicGates.orG X Y}
      C = {LogicGates.andG X Y}
   end

   %(A x ~B) + (~CxDx~E) + (BxE)
   proc {Exemplo1 A B C D E ?S}
      K L M N O P Q R
   in
      K = {LogicGates.notG B}
      L = {LogicGates.andG A K}
      M = {LogicGates.notG C}
      N = {LogicGates.notG E}
      O = {LogicGates.andG M D}
      P = {LogicGates.andG O N}
      Q = {LogicGates.andG B E}
      R = {LogicGates.orG L P}
      S = {LogicGates.orG R Q}
   end
   % (~A x B) + (A x C) + ~D + (~B x ~C x E)
   proc{Exemplo2 A B C D E ?X}
      K L M N O P Q R S T
   in
      K = {LogicGates.notG A}
      L = {LogicGates.notG B}
      M = {LogicGates.notG C}
      N = {LogicGates.notG D}
      O = {LogicGates.andG K B}
      P = {LogicGates.andG A C}
      Q = {LogicGates.andG L M}
      R = {LogicGates.andG Q E}
      S = {LogicGates.orG O P}
      T = {LogicGates.orG S N}
      X = {LogicGates.orG T R}
   end

   % ~((~(~AxB)) x ((~(~CxD)) + (AxD)))
   proc {Exemplo3 A B C D ?X}
      K L M N O P Q R S
   in
      K = {LogicGates.notG A}
      L = {LogicGates.notG C}
      M = {LogicGates.andG K B}
      N = {LogicGates.notG M}
      O = {LogicGates.andG L D}
      P = {LogicGates.andG A D}
      Q = {LogicGates.notG O}
      R = {LogicGates.orG Q P}
      S = {LogicGates.andG N R}
      X = {LogicGates.notG S}
   end
end