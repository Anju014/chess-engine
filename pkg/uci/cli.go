package uci

import (
	"bufio"
	"os"
)

func RunCLI() {
    var scanner = bufio.NewScanner(os.Stdin)
    for scanner.Scan() {
        var commandLine = scanner.Text()
        if commandLine == "quit" {
            return
        }
    }
}
