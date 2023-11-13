declare
[Circuits]={Module.link['C:/Users/levyo/OneDrive/Documentos/Oz/Q3/Circuits.ozf']} 

declare A B 
A = 1|1|_
B = 0|1|_
C S in
{Delay 100}
{Circuits.halfadder A B C S}
{Browse 'Soma:'}
{Browse S}
{Browse 'Carry:'}
{Browse C}

declare C D E F G
C = 1|_
D = 0|_
E = 1|_
F = 0|_
G = 0|_
P in
{Delay 100}
{Circuits.exemplo1 C D E F G P}
{Browse 'Exemplo1:'}
{Browse P}

declare H I J K L
H = 1|_
I = 0|_
J = 0|_
K = 1|_
L = 0|_
T in
{Delay 100}
{Circuits.exemplo2 H I J K L T}
{Browse 'Exemplo2:'}
{Browse T}

declare M N O P
M = 1|_
N = 1|_
O = 1|_
P = 1|_
Y in
{Delay 100}
{Circuits.exemplo3 M N O P Y}
{Browse 'Exemplo3:'}
{Browse Y}