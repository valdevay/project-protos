PROTOS  := proto/tasks/*.proto proto/users/*.proto
OUT_DIR := .

generate:
	protoc \
	  --go_out=proto --go_opt=paths=source_relative \
	  --go-grpc_out=proto --go-grpc_opt=paths=source_relative \
	  --proto_path=proto \
	  $(PROTOS)

clean:
	find . -name "*.pb.go" -delete