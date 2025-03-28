# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/type/calendar_period.proto

require 'google/protobuf'


descriptor_data = "\n!google/type/calendar_period.proto\x12\x0bgoogle.type*\x7f\n\x0e\x43\x61lendarPeriod\x12\x1f\n\x1b\x43\x41LENDAR_PERIOD_UNSPECIFIED\x10\x00\x12\x07\n\x03\x44\x41Y\x10\x01\x12\x08\n\x04WEEK\x10\x02\x12\r\n\tFORTNIGHT\x10\x03\x12\t\n\x05MONTH\x10\x04\x12\x0b\n\x07QUARTER\x10\x05\x12\x08\n\x04HALF\x10\x06\x12\x08\n\x04YEAR\x10\x07\x42x\n\x0f\x63om.google.typeB\x13\x43\x61lendarPeriodProtoP\x01ZHgoogle.golang.org/genproto/googleapis/type/calendarperiod;calendarperiod\xa2\x02\x03GTPb\x06proto3"

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
  module Type
    CalendarPeriod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.type.CalendarPeriod").enummodule
  end
end

#### Source proto file: google/type/calendar_period.proto ####
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
# package google.type;
#
# option go_package = "google.golang.org/genproto/googleapis/type/calendarperiod;calendarperiod";
# option java_multiple_files = true;
# option java_outer_classname = "CalendarPeriodProto";
# option java_package = "com.google.type";
# option objc_class_prefix = "GTP";
#
# // A `CalendarPeriod` represents the abstract concept of a time period that has
# // a canonical start. Grammatically, "the start of the current
# // `CalendarPeriod`." All calendar times begin at midnight UTC.
# enum CalendarPeriod {
#   // Undefined period, raises an error.
#   CALENDAR_PERIOD_UNSPECIFIED = 0;
#
#   // A day.
#   DAY = 1;
#
#   // A week. Weeks begin on Monday, following
#   // [ISO 8601](https://en.wikipedia.org/wiki/ISO_week_date).
#   WEEK = 2;
#
#   // A fortnight. The first calendar fortnight of the year begins at the start
#   // of week 1 according to
#   // [ISO 8601](https://en.wikipedia.org/wiki/ISO_week_date).
#   FORTNIGHT = 3;
#
#   // A month.
#   MONTH = 4;
#
#   // A quarter. Quarters start on dates 1-Jan, 1-Apr, 1-Jul, and 1-Oct of each
#   // year.
#   QUARTER = 5;
#
#   // A half-year. Half-years start on dates 1-Jan and 1-Jul.
#   HALF = 6;
#
#   // A year.
#   YEAR = 7;
# }
