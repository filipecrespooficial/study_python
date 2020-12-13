<?php

/*
This is only a SKELETON file for the "Hamming" exercise. It's been provided as a
convenience to get you started writing code faster.

Remove this comment before submitting your exercise.
*/

function distance(string $strandA, string $strandB) : int
{
    if ( strlen($strandA) == strlen($strandB)) {
        $count = 0;
        $strA = str_split($strandA);
        $strB = str_split($strandB);

        for ($i=0; $i < strlen($strandA); $i++) {
            if ($strA[$i] !== $strB[$i]){
                $count++;
            }
        }
        return $count;
    }
    else{
        throw new InvalidArgumentException('DNA strands must be of equal length.');
    }
}
