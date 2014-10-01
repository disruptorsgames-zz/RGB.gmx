///getCommand(string)
if (string_char_at(argument0, 0) != "/")
    return "say";

var input, value, /*args,*/ len, cmd, params;

input = string_replace(argument0, "/", "");
args =  split(input, " "); // args gets sent back
len = array_length_1d(args);
cmd = ternary(len > 0 && !isEmpty(args[len - 1]), args[0], input);

value = ds_map_find_value(commands, cmd);

if (string(value) == "0")
{
    cout("Invalid command: " + string(cmd), C_ERROR);
    return "invalid";
}

params = split(value, ",");
if (len != array_length_1d(params))
{
    cout("Usage:", C_SYSTEM);
    cout("-" + cmd + string_replace(value, ",", " "), C_SYSTEM);
    return "misuse";
}

return cmd;
