package err

import (
	"fmt"
)

type Error_Type int

const (
	UNKNOWN_CHARACTER Error_Type = iota
)

//Individual Error Types
//==============================================================================

type unknown_char_error struct {
	unkown_char string
}

func newUnknownCharErr(char string) unknown_char_error {
	return unknown_char_error{char}
}

func (this unknown_char_error) Error() string {
	return fmt.Sprint("Scanner Error: encounted unknown character %s", this.unkown_char)
}

//Public Functions
//==============================================================================

func Throw(err_type Error_Type, cause string) {
	switch err_type {
	case UNKNOWN_CHARACTER:
		panic(newUnknownCharErr(cause))
	}
}
