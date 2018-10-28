#include "terminal_cmds.h"

/*
 * Array of command handlers for terminal
 */
#define TERM_CMD_DEF(cmd_num, cmd_aliase, cmd_handler) \
        [cmd_num] = cmd_##cmd_handler,
int (* const commands_handlers[])(char *) = {
        #include "terminal_cmds_defs.h"
};
#undef TERM_CMD_DEF

/*
 * Command handlers implementations
 * To add new command and corresponding handler just
 * add new entry to terminal_cmds_defs.h and implementation
 * below.
 */

/*
 * Echo command
 * Input: 'echo' string
 * Outpur: 'echo' string
 */
int cmd_echo_handler(char *args)
{
        (void) args;

        return 4;
}
