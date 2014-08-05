/// isEmpty(string)
var empty = string_replace_all(string(argument0), " ", "");
return (string_length(empty) == 0 || empty == "0");