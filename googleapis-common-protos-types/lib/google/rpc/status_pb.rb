# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/rpc/status.proto

require 'google/protobuf'

require 'google/protobuf/any_pb'


descriptor_data = "\n\x17google/rpc/status.proto\x12\ngoogle.rpc\x1a\x19google/protobuf/any.proto\"N\n\x06Status\x12\x0c\n\x04\x63ode\x18\x01 \x01(\x05\x12\x0f\n\x07message\x18\x02 \x01(\t\x12%\n\x07\x64\x65tails\x18\x03 \x03(\x0b\x32\x14.google.protobuf.AnyBa\n\x0e\x63om.google.rpcB\x0bStatusProtoP\x01Z7google.golang.org/genproto/googleapis/rpc/status;status\xf8\x01\x01\xa2\x02\x03RPCb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Any", "google/protobuf/any.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Rpc
    Status = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.Status").msgclass
  end
end

#### Source proto file: google/rpc/status.proto ####
#
# // Copyright 2025 Google LLC
# //
# // Licensed under the Apache License, Version 2.0 (the "License");
# // you may not use this file except in compliance with the License.
# // You may obtain a copy of the License at
# //
# //     http://www.apache.org/licenses/LICENSE-2.0
# //
# // Unless required by applicable law or agreed to in writing, software
# // distributed under the License is distributed on an "AS IS" BASIS,
# // WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# // See the License for the specific language governing permissions and
# // limitations under the License.
#
# syntax = "proto3";
#
# package google.rpc;
#
# import "google/protobuf/any.proto";
#
# option cc_enable_arenas = true;
# option go_package = "google.golang.org/genproto/googleapis/rpc/status;status";
# option java_multiple_files = true;
# option java_outer_classname = "StatusProto";
# option java_package = "com.google.rpc";
# option objc_class_prefix = "RPC";
#
# // The `Status` type defines a logical error model that is suitable for
# // different programming environments, including REST APIs and RPC APIs. It is
# // used by [gRPC](https://github.com/grpc). Each `Status` message contains
# // three pieces of data: error code, error message, and error details.
# //
# // You can find out more about this error model and how to work with it in the
# // [API Design Guide](https://cloud.google.com/apis/design/errors).
# message Status {
#   // The status code, which should be an enum value of
#   // [google.rpc.Code][google.rpc.Code].
#   int32 code = 1;
#
#   // A developer-facing error message, which should be in English. Any
#   // user-facing error message should be localized and sent in the
#   // [google.rpc.Status.details][google.rpc.Status.details] field, or localized
#   // by the client.
#   string message = 2;
#
#   // A list of messages that carry the error details.  There is a common set of
#   // message types for APIs to use.
#   repeated google.protobuf.Any details = 3;
# }
