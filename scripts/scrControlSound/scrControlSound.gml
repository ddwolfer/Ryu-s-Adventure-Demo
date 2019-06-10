/// @description Re-maps a number from one range to another
/// @param value
/// @param lowerbound of current range
/// @param upperbound of current range
/// @param desiredlowerbound
/// @param desiredupperbound

var val = argument[0];	
var lower_bound = argument[1];	
var upper_bound = argument[2];	
var desired_lower_bound = argument[3];	
var desired_upper_bound = argument[4];	

var total = upper_bound - lower_bound;
var percent = (val - lower_bound) / total;
var new_val = lerp(desired_lower_bound, desired_upper_bound, percent);
return new_val;


/*
//the same script in a single line of code courtesy of FrostyCat
//more efficient, but hard to read and understand
return (argument0-argument1)/(argument2-argument1)*(argument4-argument3)+argument3;