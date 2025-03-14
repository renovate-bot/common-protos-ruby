# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/context.proto

require 'google/protobuf'


descriptor_data = "\n\x18google/api/context.proto\x12\ngoogle.api\"1\n\x07\x43ontext\x12&\n\x05rules\x18\x01 \x03(\x0b\x32\x17.google.api.ContextRule\"\x8d\x01\n\x0b\x43ontextRule\x12\x10\n\x08selector\x18\x01 \x01(\t\x12\x11\n\trequested\x18\x02 \x03(\t\x12\x10\n\x08provided\x18\x03 \x03(\t\x12\"\n\x1a\x61llowed_request_extensions\x18\x04 \x03(\t\x12#\n\x1b\x61llowed_response_extensions\x18\x05 \x03(\tBn\n\x0e\x63om.google.apiB\x0c\x43ontextProtoP\x01ZEgoogle.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig\xa2\x02\x04GAPIb\x06proto3"

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
  module Api
    Context = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.Context").msgclass
    ContextRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.ContextRule").msgclass
  end
end

#### Source proto file: google/api/context.proto ####
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
# package google.api;
#
# option go_package = "google.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig";
# option java_multiple_files = true;
# option java_outer_classname = "ContextProto";
# option java_package = "com.google.api";
# option objc_class_prefix = "GAPI";
#
# // `Context` defines which contexts an API requests.
# //
# // Example:
# //
# //     context:
# //       rules:
# //       - selector: "*"
# //         requested:
# //         - google.rpc.context.ProjectContext
# //         - google.rpc.context.OriginContext
# //
# // The above specifies that all methods in the API request
# // `google.rpc.context.ProjectContext` and
# // `google.rpc.context.OriginContext`.
# //
# // Available context types are defined in package
# // `google.rpc.context`.
# //
# // This also provides mechanism to allowlist any protobuf message extension that
# // can be sent in grpc metadata using “x-goog-ext-<extension_id>-bin” and
# // “x-goog-ext-<extension_id>-jspb” format. For example, list any service
# // specific protobuf types that can appear in grpc metadata as follows in your
# // yaml file:
# //
# // Example:
# //
# //     context:
# //       rules:
# //        - selector: "google.example.library.v1.LibraryService.CreateBook"
# //          allowed_request_extensions:
# //          - google.foo.v1.NewExtension
# //          allowed_response_extensions:
# //          - google.foo.v1.NewExtension
# //
# // You can also specify extension ID instead of fully qualified extension name
# // here.
# message Context {
#   // A list of RPC context rules that apply to individual API methods.
#   //
#   // **NOTE:** All service configuration rules follow "last one wins" order.
#   repeated ContextRule rules = 1;
# }
#
# // A context rule provides information about the context for an individual API
# // element.
# message ContextRule {
#   // Selects the methods to which this rule applies.
#   //
#   // Refer to [selector][google.api.DocumentationRule.selector] for syntax
#   // details.
#   string selector = 1;
#
#   // A list of full type names of requested contexts, only the requested context
#   // will be made available to the backend.
#   repeated string requested = 2;
#
#   // A list of full type names of provided contexts. It is used to support
#   // propagating HTTP headers and ETags from the response extension.
#   repeated string provided = 3;
#
#   // A list of full type names or extension IDs of extensions allowed in grpc
#   // side channel from client to backend.
#   repeated string allowed_request_extensions = 4;
#
#   // A list of full type names or extension IDs of extensions allowed in grpc
#   // side channel from backend to client.
#   repeated string allowed_response_extensions = 5;
# }
