package main

import (
	"fmt"
	_ "github.com/your-org/project-protos/users"
	_ "github.com/your-org/project-protos/tasks"
)

func main() {
	fmt.Println("Users service with protobuf contracts")
}
