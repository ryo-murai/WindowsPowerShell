  
 #   h t t p : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 1 2 7 5 0 9 0 / w h a t - e x a c t l y - i s - e x i t - i n - p o w e r s h e l l  
 #   e x i t   w i t h   C t r l + D < E n t e r >  
 i e x   " f u n c t i o n   $ ( [ c h a r ] 4 )   {   e x i t   } "  
  
 #   * n i x   l i k e   a l i a s e s  
 s a l   l l   l s   |   s o r t   L a s t W r i t e T i m e  
 s a l   w h i c h   g c m  
  
 #  
 $ e n v : H O M E   =   $ e n v : U S E R P R O F I L E  
  
 f u n c t i o n   T e s t - W i n 6 4   {  
     r e t u r n   [ I n t P t r ] : : s i z e   - e q   8  
 }  
  
 f u n c t i o n   G e t - P r o g r a m F i l e s 3 2   {  
     i f ( T e s t - W i n 6 4 )   {  
         r e t u r n   $ { e n v : P r o g r a m F i l e s ( x 8 6 ) }  
     }  
  
     r e t u r n   $ e n v : P r o g r a m F i l e s  
 }  
  
 #   a l i a s   t o   v i m   i n   s t a n d a r d   m s y s   i n s t a l l a t i o n  
 i f ( T e s t - P a t h   ~ / t o o l s / v i m / v i m . e x e )   {  
     s a l   v i m   " $ { e n v : U S E R P R O F I L E } / t o o l s / v i m / v i m . e x e "  
 }   e l s e   {  
     s a l   v i m   " $ { e n v : P r o g r a m F i l e s } \ G i t \ u s r \ b i n \ v i m . e x e "  
 }  
  
 #   s e t   J A V A _ H O M E  
 d i r   - D i r e c t o r y   " ~ / d e v / j a v a / j d k / * "   |   s o r t   n a m e   - D e s c e n d i n g     |   s e l e c t   F u l l N a m e   - F i r s t   1   |   %   { $ e n v : J A V A _ H O M E = $ _ . F u l l N a m e }  
  
 f u n c t i o n   p s v e r s i o n   {  
     i f   ( G e t - V a r i a b l e   P S V e r s i o n T a b l e   - E r r o r A c t i o n   S i l e n t l y C o n t i n u e )  
     {  
         e c h o   $ P S V e r s i o n T a b l e  
     }  
     e l s e  
     {  
         e c h o   " 1 . 0 "  
     }  
 }  
  
 f u n c t i o n   c d d   {  
     p a r a m ( [ s t r i n g ] $ d i r )  
     $ p a t h   =   " ~ / d e v / $ d i r / w o r k s p a c e s "  
     i f ( T e s t - P a t h   $ p a t h )   {  
       S e t - L o c a t i o n   $ p a t h  
     }   e l s e   {  
         e c h o   " n o   s u c h   d i r e c t o r y   $ d i r "  
     }  
 }  
  
 f u n c t i o n   m k g i   {  
     p a r a m ( [ s t r i n g ] $ t y p e )  
  
     i r m   - M e t h o d   G e t   - U r i   " h t t p s : / / w w w . g i t i g n o r e . i o / a p i / $ t y p e "  
 }  
  
 f u n c t i o n   d u   {  
     p a r a m ( [ s t r i n g ] $ d i r = " . / " )  
  
     g c i   $ d i r   |   w h e r e   {   $ _ . P S I s C o n t a i n e r   }   |   %   {    
         W r i t e - H o s t   - N o N e w l i n e   ( $ _ . N a m e   +   " ` t " ) ;   ( g c i   $ _ . N a m e   - R e c u r s e   |   m e a s u r e   - P r o p e r t y   L e n g t h   - S u m ) . S u m ;    
     }  
 }  
