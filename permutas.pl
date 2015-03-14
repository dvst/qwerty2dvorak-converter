#!/usr/bin/perl

# Se probará:
# * Intercambio entre MAYUSCULAS y minusculas.
# * Intercambio entre teclados
# * t

@dvorak  = qw( ' , . p y f g c r l / = 
	       a o e u i d h t n s - \ 
	       ; q j k x b m w v z );

@spanish = qw( q w e r t y u i o p ' + 
	       a s d f g h j k l ñ { } 
	       z x c v b n m , . - );

@tokens = qw( . e v - { z );

$palabra = $ARGV[0] ;

#foreach (@dvorak){
#	print $_ . " " .  $palabra . "\n";
#}
