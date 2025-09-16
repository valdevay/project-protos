PROTOS  := proto/*.proto
OUT_DIR := .

generate:
	protoc \
	  --go_out=$(OUT_DIR) --go_opt=paths=source_relative \
	  --go-grpc_out=$(OUT_DIR) --go-grpc_opt=paths=source_relative \
	  --plugin=protoc-gen-go=C:\Users\vladimir.kireev\go\bin\protoc-gen-go.exe \
	  --plugin=protoc-gen-go-grpc=C:\Users\vladimir.kireev\go\bin\protoc-gen-go-grpc.exe \
	  $(PROTOS)

clean:
	find . -name "*.pb.go" -delete