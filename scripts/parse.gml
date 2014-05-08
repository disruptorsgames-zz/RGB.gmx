///parse(string)
if (string_pos("/", argument0) != 1)
    return "say";

var input, value, args, len, cmd, params;

input = string_replace(argument0, "/", "");
args =  split(input, " ");
len = array_length_1d(args);
cmd = ternary(len > 0 && !isEmpty(args[len - 1]), args[0], input);

value = ds_map_find_value(commands, cmd);

if (value == "0")
{
    cout("Invalid command: " + string(cmd));
    return "invalid";
}

params = split(value, ",");
if (len != array_length_1d(params))
{
    cout("Usage:");
    cout("-" + cmd + string_replace(value, ",", " "));
    return "misuse";
}

return cmd;
