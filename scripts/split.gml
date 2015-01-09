///split(string, separator)
var i = 0, text = argument0, count, list, pos;

count = string_count(argument1, text);
list = array(count);

if (count > 0)
{
    pos = string_pos(argument1, text);
    while (pos != 0)
    {
        copy = string_copy(text, 0, pos);
        list[i] = string_replace(copy, argument1, "");
        text = string_replace(text, copy, "");
        pos = string_pos(argument1, text);
        i++;
    }
    list[count] = text;
}
return list;