///parse(string)
text = argument0;
pos = string_pos(" ", text);
while (pos != 0)
{
    copy = string_copy(text, 0, pos);
    ds_list_add(argument1, copy);
    text = string_replace(text, copy, "");
    pos = string_pos(" ", text);
}
ds_list_add(argument1, text);
