///toChar(string)
var count = 0, list;

count = string_length(argument0);
list = array(count);

for(var i = 1; i <= count; i++)
{
    list[i-1] = string_char_at(argument0, i);
}

return list;
