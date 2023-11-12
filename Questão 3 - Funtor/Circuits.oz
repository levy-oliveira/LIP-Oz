functor
import
   LogicGates at 'BasicLogicGates.ozf'
export
   halfadder: HalfAdder
   mux4x1: Mux4x1
   demux1x4: Demux1x4
   decod : Decod
define
   
   % HalfAdder S=(X+Y) saída C
   proc {HalfAdder X Y ?C ?S}
      S = {LogicGates.orG X Y}
      C = {LogicGates.andG X Y}
   end

   
   % Mux 4x1 (A B C D) seletores (S0 S1) saída (X)
   proc {Mux2x1 A B S ?X}
      K L M
   in
      M = {LogicGates.notG S}
      K = {LogicGates.andG M A}
      L = {LogicGates.andG S B}
      X = {LogicGates.orG K L}
   end
   proc {Mux4x1 A B C D S0 S1 ?X}
      K L
   in
      K = {Mux2x1 A B S0}
      L = {Mux2x1 C D S0}
      X = {Mux2x1 K L S1}
   end

   % Demux 1x4 (E) seletores (A B) saídas (X0 X1 X2 X3)
   proc {Demux1x4 E A B ?X0 ?X1 ?X2 ?X3}
      K L M N O P 
   in
      K = {LogicGates.notG A}
      L = {LogicGates.notG B}
      M = {LogicGates.orG K L}
      N = {LogicGates.orG K B}
      O = {LogicGates.orG A L}
      P = {LogicGates.orG A B}
      X0 = {LogicGates.orG M E}
      X1 = {LogicGates.orG N E}
      X2 = {LogicGates.orG O E}
      X3 = {LogicGates.orG P E}
   end

   % Decodificador 2 para 4 com saídas ativas em alto(o resultado so sai na que tem 1 como saída)
   proc {Decod A B ?X0 ?X1 ?X2 ?X3}
      K L
   in
      K = {LogicGates.notG A}
      L = {LogicGates.notG B}
      X0 = {LogicGates.andG K L}
      X1 = {LogicGates.andG A L}
      X2 = {LogicGates.andG K B}
      X3 = {LogicGates.andG A B}
   end      
end