# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/control.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/api/control.proto", :syntax => :proto3) do
    add_message "google.api.Control" do
      optional :environment, :string, 1
    end
  end
end

module Google
  module Api
    Control = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.Control").msgclass
  end
end
