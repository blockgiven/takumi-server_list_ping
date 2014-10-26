module Takumi
  module ServerListPing
    class Handshake < Base
      include Takumi::Packet::Dsl

      field :packet_id,      :varint
      field :version,        :varint
      field :server_address, :string
      field :port,           :ushort
      field :next_state,     :varint

      def self.create(attrs = {})
        new(default_attrs.merge(attrs))
      end

      def self.default_attrs
        {
          packet_id:      0,
          version:        Takumi::ServerListPing::PROTOCOL_VERSION,
          server_address: 'localhost',
          port:           Takumi::ServerListPing::PORT,
          next_state:     Takumi::ServerListPing::NEXT_STATUS
        }
      end
    end
  end
end
