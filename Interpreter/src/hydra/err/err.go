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

type Unknown_Char_Err struct {
	unkown_char string
}

func New_Unknown_Char_Err(char string) Unknown_Char_Err {
	return Unknown_Char_Err{char}
}

func (this Unknown_Char_Err) Error() string {
	return fmt.Sprint("Scanner Error: encounted unknown character %s", this.unkown_char)
}

//Public Functions
//==============================================================================

func Throw(err_type Error_Type, cause string) {
	switch err_type {
	case UNKNOWN_CHARACTER:
		panic(New_Unknown_Char_Err(cause))
	}
}
