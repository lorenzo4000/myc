package front
/*
import (
	"fmt"
	"io/ioutil"
)

func Directives(src []Token) (string, bool) {
	for	i := 0; i < len(src); i++ {
		if src[i].Type == TOKEN_DIRECTIVE_PREFIX {
			i++
			if i >= len(src) {
				fmt.Println("directives error: expected directive after `", TOKEN_DIRECTIVE_PREFIX, "`")
				return "", true
			}
			directive := src[i].String_value

			if len(directive) <= 0 {
				fmt.Println("directives error: expected directive after `", TOKEN_DIRECTIVE_PREFIX, "`")
				return "", true
			}

			switch directive {
				case "import": 
					i++
					if i >= len(src) {
						fmt.Println("directives error: expected filename between `\"\"`")
						return "", true
					}

					file_to_import := src[i].String_value

					src_to_import, err := ioutil.ReadFile(file_to_import)
					if err != nil {
						fmt.Println(err)
						return "", true
					}

					length_of_directive := 3
					src[i - length_of_directive:length_of_directive]
					
			}
		}
	}
	return src, false
}
*/
