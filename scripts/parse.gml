// only get values that start with forwards slash
if (string_pos("/", keyboard_string) != 1)
    return "say";

// get command arguments split by spaces
args = split(string_replace(keyboard_string, "/", ""), " ");
cmd = args[0];

// not a valid command
if (!ds_map_exists(commands, cmd))
    return "invalid";

// check command parameters
params = split(ds_map_find_value(commands, cmd), ",");
if (array_length_1d(args) - 1 == array_length_1d(params) - 1)
    return cmd;
else
    return "misuse";
