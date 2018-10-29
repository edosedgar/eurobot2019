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
 * General command handlers implementations
 * To add new command and corresponding handler just
 * add new entry to terminal_cmds_defs.h and implementation
 * below.
 * Note: You are not obliged to implement handlers in this file,
 *       handlers might be implemented whereever upon condition
 *       that 'terminal_cmds.h' is included.
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
