# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/field_behavior.proto

require 'google/protobuf'

require 'google/protobuf/descriptor_pb'


descriptor_data = "\n\x1fgoogle/api/field_behavior.proto\x12\ngoogle.api\x1a google/protobuf/descriptor.proto*\xb6\x01\n\rFieldBehavior\x12\x1e\n\x1a\x46IELD_BEHAVIOR_UNSPECIFIED\x10\x00\x12\x0c\n\x08OPTIONAL\x10\x01\x12\x0c\n\x08REQUIRED\x10\x02\x12\x0f\n\x0bOUTPUT_ONLY\x10\x03\x12\x0e\n\nINPUT_ONLY\x10\x04\x12\r\n\tIMMUTABLE\x10\x05\x12\x12\n\x0eUNORDERED_LIST\x10\x06\x12\x15\n\x11NON_EMPTY_DEFAULT\x10\x07\x12\x0e\n\nIDENTIFIER\x10\x08:U\n\x0e\x66ield_behavior\x12\x1d.google.protobuf.FieldOptions\x18\x9c\x08 \x03(\x0e\x32\x19.google.api.FieldBehaviorB\x02\x10\x00\x42p\n\x0e\x63om.google.apiB\x12\x46ieldBehaviorProtoP\x01ZAgoogle.golang.org/genproto/googleapis/api/annotations;annotations\xa2\x02\x04GAPIb\x06proto3"

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
    FieldBehavior = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.FieldBehavior").enummodule
  end
end

#### Source proto file: google/api/field_behavior.proto ####
#
# // Copyright 2023 Google LLC
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
# import "google/protobuf/descriptor.proto";
#
# option go_package = "google.golang.org/genproto/googleapis/api/annotations;annotations";
# option java_multiple_files = true;
# option java_outer_classname = "FieldBehaviorProto";
# option java_package = "com.google.api";
# option objc_class_prefix = "GAPI";
#
# extend google.protobuf.FieldOptions {
#   // A designation of a specific field behavior (required, output only, etc.)
#   // in protobuf messages.
#   //
#   // Examples:
#   //
#   //   string name = 1 [(google.api.field_behavior) = REQUIRED];
#   //   State state = 1 [(google.api.field_behavior) = OUTPUT_ONLY];
#   //   google.protobuf.Duration ttl = 1
#   //     [(google.api.field_behavior) = INPUT_ONLY];
#   //   google.protobuf.Timestamp expire_time = 1
#   //     [(google.api.field_behavior) = OUTPUT_ONLY,
#   //      (google.api.field_behavior) = IMMUTABLE];
#   repeated google.api.FieldBehavior field_behavior = 1052 [packed = false];
# }
#
# // An indicator of the behavior of a given field (for example, that a field
# // is required in requests, or given as output but ignored as input).
# // This **does not** change the behavior in protocol buffers itself; it only
# // denotes the behavior and may affect how API tooling handles the field.
# //
# // Note: This enum **may** receive new values in the future.
# enum FieldBehavior {
#   // Conventional default for enums. Do not use this.
#   FIELD_BEHAVIOR_UNSPECIFIED = 0;
#
#   // Specifically denotes a field as optional.
#   // While all fields in protocol buffers are optional, this may be specified
#   // for emphasis if appropriate.
#   OPTIONAL = 1;
#
#   // Denotes a field as required.
#   // This indicates that the field **must** be provided as part of the request,
#   // and failure to do so will cause an error (usually `INVALID_ARGUMENT`).
#   REQUIRED = 2;
#
#   // Denotes a field as output only.
#   // This indicates that the field is provided in responses, but including the
#   // field in a request does nothing (the server *must* ignore it and
#   // *must not* throw an error as a result of the field's presence).
#   OUTPUT_ONLY = 3;
#
#   // Denotes a field as input only.
#   // This indicates that the field is provided in requests, and the
#   // corresponding field is not included in output.
#   INPUT_ONLY = 4;
#
#   // Denotes a field as immutable.
#   // This indicates that the field may be set once in a request to create a
#   // resource, but may not be changed thereafter.
#   IMMUTABLE = 5;
#
#   // Denotes that a (repeated) field is an unordered list.
#   // This indicates that the service may provide the elements of the list
#   // in any arbitrary  order, rather than the order the user originally
#   // provided. Additionally, the list's order may or may not be stable.
#   UNORDERED_LIST = 6;
#
#   // Denotes that this field returns a non-empty default value if not set.
#   // This indicates that if the user provides the empty value in a request,
#   // a non-empty value will be returned. The user will not be aware of what
#   // non-empty value to expect.
#   NON_EMPTY_DEFAULT = 7;
#
#   // Denotes that the field in a resource (a message annotated with
#   // google.api.resource) is used in the resource name to uniquely identify the
#   // resource. For AIP-compliant APIs, this should only be applied to the
#   // `name` field on the resource.
#   //
#   // This behavior should not be applied to references to other resources within
#   // the message.
#   //
#   // The identifier field of resources often have different field behavior
#   // depending on the request it is embedded in (e.g. for Create methods name
#   // is optional and unused, while for Update methods it is required). Instead
#   // of method-specific annotations, only `IDENTIFIER` is required.
#   IDENTIFIER = 8;
# }
