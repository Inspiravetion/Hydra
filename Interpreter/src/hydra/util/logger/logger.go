package logger

import (
	"fmt"
	"log"
	"os"
	"runtime"
	"strings"
)

var (
	err_color_light   = "\033[91m"
	err_color_dark    = "\033[31m"
	debug_color_light = "\033[93m"
	debug_color_dark  = "\033[33m"
	info_color_light  = "\033[96m"
	info_color_dark   = "\033[36m"
	color_stop        = "\033[39m"

	Info_Stream  = log.New(os.Stdout, info_color_dark+"INFO:", 0)
	Debug_Stream = log.New(os.Stdout, debug_color_dark+"DEBUG:", 0)
	Err_Stream   = log.New(os.Stdout, err_color_dark+"ERROR:", 0)
)

func format_header(file_path string, line int) string {
	path_arr := strings.Split(file_path, "/")
	file := path_arr[len(path_arr)-1]

	return fmt.Sprintf(" %s:%d:%s", file, line, color_stop)
}

func Print(out_stream *log.Logger, info string) {
	_, file, line, ok := runtime.Caller(2)

	if ok {
		header := format_header(file, line)
		out_stream.Println(header, info)
	}
}

func Printf(out_stream *log.Logger, format string, args ...interface{}) {
	_, file, line, ok := runtime.Caller(2)

	if ok {
		header := format_header(file, line)
		info := fmt.Sprintf(format, args...)

		out_stream.Println(header, info)
	}
}
