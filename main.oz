declare
[Circuits]={Module.link['C:\Users\levyo\OneDrive\Documentos\Oz\Q3\Circuits.ozf']} 

declare A B 
A = 1|1|_
B = 0|1|_
C S in
{Circuits.halfadder A B C S}
{Browse 'Soma:'}
{Browse S}
{Browse 'Carry:'}
{Browse C}

declare C D E
C = 0|1|_
D = 1|1|_
E = 0|0|_
S1 = 0|0|_
S2 = 1|0|_
X in
{Circuits.mux4x1 C D E F S1 S2 X}
{Browse 'Multiplexador Saída:'}
{Browse X}


declare F G H I
F = 1
G = 1
H = 1
S1 S2 S3 S4 in
{Circuits.demux1x4 F G H I S1 S2 S3 S4}
{Browse 'Demultiplexador Saída:'}
{Browse S1}


declare K L M
K = 0
L = 1
X1 X2 X3 X4 in
{Circuits.decod K L X1 X2 X3 X4}
{Browse 'Saída alta:'}
{Browse X1}