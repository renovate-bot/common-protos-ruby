# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/type/decimal.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/type/decimal.proto", :syntax => :proto3) do
    add_message "google.type.Decimal" do
      optional :value, :string, 1
    end
  end
end

module Google
  module Type
    Decimal = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.type.Decimal").msgclass
  end
end
