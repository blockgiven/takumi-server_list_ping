module Takumi
  module ServerListPing
    class StatusRequest < Base
      include Takumi::Packet::Dsl

      field :packet_id, :varint

      def self.create(attrs = {})
        new(default_attrs.merge(attrs))
      end

      def self.default_attrs
        {packet_id: 0}
      end
    end
  end
end
