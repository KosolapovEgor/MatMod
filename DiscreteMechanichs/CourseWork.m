   c   l   e   a   r   ;      
   m       =       1   ;      
   k       =       1   e   7   ;      
   g       =       9   .   8   ;      
   f   r   i   c   t   i   o   n   _   a   i   r       =       1   ;      
      
      
   [   a   ,       L   e   n   g   t   h   _   T   i   m   e   ,       c   x   ,       c   y   ,       v   x   ,       v   y   ,       A   c   ]       =       S   o   l   u   t   i   o   n   (   m   ,       k   ,       f   r   i   c   t   i   o   n   _   a   i   r   ,       g   ,       1   5   )   ;      
   T   i   m   e       =       0   :   1   e   -   5   :   1   5   ;      
   f   i   g   u   r   e      
                   p   l   o   t   (   T   i   m   e   ,       A   c   (   :   ,       2   1   )   )      
                   h   o   l   d       o   n      
                   g   r   i   d       o   n      
                   t   i   t   l   e   (   '    0  2  8  A  8  <  >  A  B  L      C  A  :  >  @  5  =  8  O      >  B      2  @  5  <  5  =  8   '   )      
                   x   l   a   b   e   l   (   '    @  5  <  O   ,       [  A   ]   '   )      
                   y   l   a   b   e   l   (   '  #  A  :  >  @  5  =  8  5   ,       [  <   /  A   ^   {   2   }   ]   '   )      
   %   f   o   r       i       =       1   :   1   e   3   :   L   e   n   g   t   h   _   T   i   m   e      
   %                   p   l   o   t   (   c   x   (   i   ,   :   )   ,       c   y   (   i   ,   :   )   )      
   %                   a   x   i   s   (   [   -   3       3       -   3       0   .   1   ]   )      
   %                   p   a   u   s   e   (   0   .   0   1   )      
   %   e   n   d      
      
      
   %   M   a   s   s       =       [   1   e   -   3       2   e   -   3       3   e   -   3       4   e   -   3       5   e   -   3       6   e   -   3       7   e   -   3       8   e   -   3       9   e   -   3       1   e   -   2       2   e   -   2       3   e   -   2       4   e   -   2       5   e   -   2       6   e   -   2       7   e   -   2       8   e   -   2       9   e   -   2       1   e   -   1       2   e   -   1       3   e   -   1       4   e   -   1       5   e   -   1       6   e   -   1       7   e   -   1       8   e   -   1       9   e   -   1       1   e   0   ]   ;      
   %   f   o   r       i       =       1   :   l   e   n   g   t   h   (   M   a   s   s   )      
                   %   a   _   m   a   s   s   (   i   )       =       S   o   l   u   t   i   o   n   (   M   a   s   s   (   i   )   ,       k   ,       f   r   i   c   t   i   o   n   _   a   i   r   ,       g   ,       3   )   ;      
   %   e   n   d      
   %   f   i   g   u   r   e      
                   %   l   o   g   l   o   g   (   M   a   s   s   ,       a   _   m   a   s   s   )      
                   %   g   r   i   d       o   n      
                   %   h   o   l   d       o   n      
                   %   f   o   r       i       =       1   :   l   e   n   g   t   h   (   M   a   s   s   )      
                                   %   p   l   o   t   (   M   a   s   s   (   i   )   ,       a   _   m   a   s   s   (   i   )   ,       '   r   o   '   )      
                   %   e   n   d      
                   %   t   i   t   l   e   (   '    0  2  8  A  8  <  >  A  B  L      C  A  :  >  @  5  =  8  O      >  B      <  0  A  A  K      7  2  5  =  0   '   )      
                   %   x   l   a   b   e   l   (   '    0  A  A  0      7  2  5  =  0   ,       [  :  3   ]   '   )      
                   %   y   l   a   b   e   l   (   '  #  A  :  >  @  5  =  8  5   ,       [  <   /  A   ^   {   2   }   ]   '   )      
      
   %   S   t   i   f   f   n   e   s   s       =       [   1   e   5       2   e   5       3   e   5       4   e   5       5   e   5       6   e   5       7   e   5       8   e   5       9   e   5       1   e   6       2   e   6       3   e   6       4   e   6       5   e   6       6   e   6       7   e   6       8   e   6       9   e   6       1   e   7       2   e   7       3   e   7       4   e   7       5   e   7       6   e   7       7   e   7       8   e   7       9   e   7       1   e   8       2   e   8       3   e   8       4   e   8       5   e   8   ]   ;      
   %   f   o   r       i       =       1   :   l   e   n   g   t   h   (   S   t   i   f   f   n   e   s   s   )      
                   %   a   _   s   t   i   f   f   (   i   )       =       S   o   l   u   t   i   o   n   (   m   ,       S   t   i   f   f   n   e   s   s   (   i   )   ,       f   r   i   c   t   i   o   n   _   a   i   r   ,       g   ,       3   )   ;      
   %   e   n   d      
   %   f   i   g   u   r   e      
                   %   l   o   g   l   o   g   (   S   t   i   f   f   n   e   s   s   ,       a   _   s   t   i   f   f   )      
                   %   g   r   i   d       o   n      
                   %   h   o   l   d       o   n      
                   %   f   o   r       i       =       1   :   l   e   n   g   t   h   (   S   t   i   f   f   n   e   s   s   )      
                                   %   p   l   o   t   (   S   t   i   f   f   n   e   s   s   (   i   )   ,       a   _   s   t   i   f   f   (   i   )   ,       '   r   o   '   )      
                   %   e   n   d      
                   %   a   x   i   s   (   [   -   I   n   f       I   n   f       1   4   0       1   7   0   ]   )      
                   %   t   i   t   l   e   (   '    0  2  8  A  8  <  >  A  B  L      C  A  :  >  @  5  =  8  O      >  B      :  >  M  D  D  8  F  8  5  =  B  0      6  Q  A  B  :  >  A  B  8   '   )      
                   %   x   l   a   b   e   l   (   '    >  M  D  D  8  F  8  5  =  B      6  Q  A  B  :  >  A  B  8   ,       [    0   ]   '   )      
                   %   y   l   a   b   e   l   (   '  #  A  :  >  @  5  =  8  5   ,       [  <   /  A   ^   {   2   }   ]   '   )      
      
      
   %   F   r   i   c   t   i   o   n       =       [   1   e   -   3       2   e   -   3       3   e   -   3       4   e   -   3       5   e   -   3       6   e   -   3       7   e   -   3       8   e   -   3       9   e   -   3       1   e   -   2       2   e   -   2       3   e   -   2       4   e   -   2       5   e   -   2       6   e   -   2       7   e   -   2       8   e   -   2       9   e   -   2       1   e   -   1       2   e   -   1       3   e   -   1       4   e   -   1       5   e   -   1       6   e   -   1       7   e   -   1       8   e   -   1       9   e   -   1       1       2       3       4       5   ]   ;      
   %   f   o   r       i       =       1   :   l   e   n   g   t   h   (   F   r   i   c   t   i   o   n   )      
                   %   a   _   f   r   i   c   t   i   o   n   (   i   )       =       S   o   l   u   t   i   o   n   (   m   ,       k   ,       F   r   i   c   t   i   o   n   (   i   )   ,       g   ,       3   )   ;      
   %   e   n   d      
   %   f   i   g   u   r   e      
                   %   l   o   g   l   o   g   (   F   r   i   c   t   i   o   n   ,       a   _   f   r   i   c   t   i   o   n   )      
                   %   g   r   i   d       o   n      
                   %   h   o   l   d       o   n      
                   %   f   o   r       i       =       1   :   l   e   n   g   t   h   (   F   r   i   c   t   i   o   n   )      
                                   %   p   l   o   t   (   F   r   i   c   t   i   o   n   (   i   )   ,       a   _   f   r   i   c   t   i   o   n   (   i   )   ,       '   r   o   '   )      
                   %   e   n   d      
                   %   t   i   t   l   e   (   '    0  2  8  A  8  <  >  A  B  L      C  A  :  >  @  5  =  8  O      >  B      :  >  M  D  D  8  F  8  5  =  B  0      2  O  7  :  >  A  B  8   '   )      
                   %   x   l   a   b   e   l   (   '    >  M  D  D  8  F  8  5  =  B      2  O  7  :  >  A  B  8   ,       [  :  3   /  A   ]   '   )      
                   %   y   l   a   b   e   l   (   '  #  A  :  >  @  5  =  8  5   ,       [  <   /  A   ^   {   2   }   ]   '   )