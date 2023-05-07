# pragma once

// Std lib includes //
#include <stdarg.h>
#include <stdbool.h>

// Structs //
typedef enum LogLevelEn {
    LvlNone,
    LvlError,
    LvlWarning,
    LvlInfo,
    LvlDebug,
    LvlTrace
} LogLevel;

// API Functions //
// Init logger with the given log level
// Warning: This method is NOT threadsafe, so better use this only one time at the programm start
extern void init_logger(LogLevel log_level);

// Init logger with log level from environement
// Warning: This method is NOT threadsafe, so better use this only one time at the programm start
extern void init_logger_from_env();

// Convert given LogLevel to a string
extern const char* loglvl_to_str(LogLevel log_level);

// Convert given string to a LogLevel
extern LogLevel loglvl_from_str(const char* log_level_str);

// Check if a message with the given LogLevel will be logged
extern bool check_if_logged(LogLevel log_level);

// Print log msg to stdout
void print_log_msg(LogLevel log_level, const char* func_name, const char* log_msg_format, va_list format_args);

// Convenience functions
void log_error(const char* func_name, const char* log_msg_format, ...);

extern void log_warning(const char* func_name, const char* log_msg_format, ...);

extern void log_info(const char* func_name, const char* log_msg_format, ...);

extern void log_debug(const char* func_name, const char* log_msg_format, ...);

extern void log_trace(const char* func_name, const char* log_msg_format, ...);
