package util

import (
	"fmt"
	"hydra/util/logger"
	"os"
	"reflect"
	"runtime/debug"
	"strings"
)

var seperator = "--------------------------------------------------------------------------------\n"

func Throw(cause string) {
	stack_str := string(debug.Stack())
	stack_arr := strings.Split(stack_str, "\n")[2:]

	logger.Print(logger.Err_Stream, cause)
	fmt.Println(seperator, strings.Join(stack_arr, "\n"), seperator)
	os.Exit(0)
}

func Log(info string) {
	logger.Print(logger.Info_Stream, info)
}

func Debug(info string) {
	logger.Print(logger.Debug_Stream, info)
}

func Error(info string) {
	logger.Print(logger.Err_Stream, info)
}

func For_Each(container interface{}, iter func(interface{})) {

	value := reflect.ValueOf(container)
	kind := value.Kind()

	if kind == reflect.Map {
		keys := value.MapKeys()

		for _, key := range keys {
			iter(value.MapIndex(key).Interface())
		}

		return
	}

	if kind == reflect.Slice {
		arr := value
		length := arr.Len()

		for i := 0; i < length; i++ {
			iter(arr.Index(i).Interface())
		}

		return
	}

	//throw something here
}
