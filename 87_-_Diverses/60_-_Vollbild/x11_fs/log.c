// Std lin includes //
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Local includes //
#include "log.h"

// Static variables //
static LogLevel global_log_lvl = LvlNone;

// API functions //
void init_logger(LogLevel log_level) {
    const char* log_lvl_str = loglvl_to_str(log_level);
    global_log_lvl = log_level;
    
    printf("[Info] init_logger: Set log level to \"%s\"\n", log_lvl_str);
}

void init_logger_from_env() {
    char* log_lvl_str = getenv("LOG_LVL");
    
    if(!log_lvl_str) {
        init_logger(LvlNone);
        
        return;
    }
    
    LogLevel log_level = loglvl_from_str(log_lvl_str);
    init_logger(log_level);
}

const char* loglvl_to_str(LogLevel log_level) {
    if(log_level == LvlError) {
        return "Error";
    }
    else if(log_level == LvlWarning) {
        return "Warning";
    }
    else if(log_level == LvlInfo) {
        return "Info";
    }
    else if(log_level == LvlDebug) {
        return "Debug";
    }
    else if(log_level == LvlTrace) {
        return "Trace";
    }
    else {
        return "None";
    }
}

LogLevel loglvl_from_str(const char* log_level_str) {
    if(strcmp(log_level_str, "Error") == 0) {
        return LvlError;
    }
    else if(strcmp(log_level_str, "Warning")) {
        return LvlWarning;
    }
    else if(strcmp(log_level_str, "Info")) {
        return LvlInfo;
    }
    else if(strcmp(log_level_str, "Debug")) {
        return LvlDebug;
    }
    else if(strcmp(log_level_str, "Trace")) {
        return LvlTrace;
    }
    else {
        return LvlNone;
    }
}

bool check_if_logged(LogLevel log_level) {
    if(global_log_lvl >= log_level) {
        return true;
    }
    
    return false;
}

void print_log_msg(LogLevel log_level, const char* func_name, const char* log_msg_format, va_list format_args) {
    // Get the given LogLevel as string
    const char* log_level_str = loglvl_to_str(log_level);
    
    // Print the header
    printf("[%s] %s: ", log_level_str, func_name);
    
    // Print the message
    vprintf(log_msg_format, format_args);
    
    // Print a newline
    printf("\n");
    
}

void log_error(const char* func_name, const char* log_msg_format, ...) {
    bool is_active_lvl = check_if_logged(LvlError);
    
    if(is_active_lvl) {
        va_list format_args;
        va_start(format_args, log_msg_format);
        print_log_msg(LvlError, func_name, log_msg_format, format_args);
        va_end(format_args);
    }
}

void log_warning(const char* func_name, const char* log_msg_format, ...) {
    bool is_active_lvl = check_if_logged(LvlWarning);
    
    if(is_active_lvl) {
        va_list format_args;
        va_start(format_args, log_msg_format);
        print_log_msg(LvlWarning, func_name, log_msg_format, format_args);
        va_end(format_args);
    }
}

void log_info(const char* func_name, const char* log_msg_format, ...) {
    bool is_active_lvl = check_if_logged(LvlInfo);
    
    if(is_active_lvl) {
        va_list format_args;
        va_start(format_args, log_msg_format);
        print_log_msg(LvlInfo, func_name, log_msg_format, format_args);
        va_end(format_args);
    }
}

void log_debug(const char* func_name, const char* log_msg_format, ...) {
    bool is_active_lvl = check_if_logged(LvlDebug);
    
    if(is_active_lvl) {
        va_list format_args;
        va_start(format_args, log_msg_format);
        print_log_msg(LvlDebug, func_name, log_msg_format, format_args);
        va_end(format_args);
    }
}

void log_trace(const char* func_name, const char* log_msg_format, ...) {
    bool is_active_lvl = check_if_logged(LvlTrace);
    
    if(is_active_lvl) {
        va_list format_args;
        va_start(format_args, log_msg_format);
        print_log_msg(LvlTrace, func_name, log_msg_format, format_args);
        va_end(format_args);
    }
}
