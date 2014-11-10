///toChar(string)
var count, list;

count = string_length(argument0);
list = array(count);

for(var i = 0; i < count; i++)
{
    list[i] = string_char_at(argument0, i + 1);
}

return list;