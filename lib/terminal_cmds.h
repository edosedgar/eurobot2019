#ifndef _H_COMMAND_HANDLERS_
#define _H_COMMAND_HANDLERS_

/*
 * Generate enum of commands available from
 * terminal_cmds_defs.h
 * Note: All commands start with 'CMD_' prefix
 */
#define TERM_CMD_DEF(cmd_num, cmd_aliase, cmd_handler) \
        CMD_##cmd_aliase = (cmd_num),
enum {
        LOWER_BOUND_CMD,
        #include "terminal_cmds_defs.h"
        UPPER_BOUND_CMD
};
#undef TERM_CMD_DEF

/*
 * Declare list of handlers prototypes
 * Note: all handlers should return number of bytes
 * to be sent back. All handler function names start
 * with 'cmd_' prefix
 */
#define TERM_CMD_DEF(cmd_num, cmd_aliase, cmd_handler) \
int cmd_##cmd_handler(char *args);
#include "terminal_cmds_defs.h"
#undef TERM_CMD_DEF

extern int (* const commands_handlers[])(char *);

#endif
