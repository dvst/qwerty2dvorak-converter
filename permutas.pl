#!/usr/bin/perl

@querty_latan = qw( ` 1 2 3 4 5 6 7 8 9 0 [ ]
                    q w e r t y u i o p ' + 
                    a s d f g h j k l ñ { } 
                    z x c v b n m , . - ) ;

@dvorak_en  = qw( < 1 2 3 4 5 6 7 8 9 0 ' ¡
                  ' , . p y f g c r l / = 
                  a o e u i d h t n s - \ 
                  ; q j k x b m w v z ) ;

# @tokens = qw( . e v - { z );

# DICTIONARY LOAD q2d ^ d2q
for ( $i=0 ; $i<= @querty_latan ; $i++ ){
    $querty2dvorak{$querty_latan[$i]} = $dvorak_en[$i];
    $dvorak2querty{$dvorak_en[$i]} = $querty_latan[$i];
}

sub translate_keyboard{
    $word_to_translate = shift; 
    $convert_to_keyboard = shift; 
    $translated_word = "" ;
    @letters = split("",$word_to_translate) ;
    $convertion = $convert_to_keyboard eq 'q' ? dvorak2querty : querty2dvorak ; 

    for($j=0 ; $j < @letters ; $j++){
        $translated_word .= $$convertion{$letters[$j]} ;
    }

    print $translated_word . "\n" ;
}

&translate_keyboard($ARGV[0],$ARGV[1]) ;
