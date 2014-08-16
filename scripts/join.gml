///join(array, separator)
var arr = argument0, len, val = "";

len = array_length_1d(arr);

if (is_array(arr) && len <= 1)
    return "";

for(var i = 0; i < len; i++)
{
    val += string(ternary(i < len - 1 && string_length(argument1) > 0, string(arr[i]) + string(argument1), arr[i]));
}

return val;
