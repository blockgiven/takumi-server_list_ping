require 'json'

module Takumi
  module ServerListPing
    class StatusResponse < Base
      include Takumi::Packet::Dsl

      field :packet_id, :varint
      field :json,      :string

      def initialize(attrs)
        super
        if self[:json]
          self.info = JSON.parse(self[:json])
        end
      end
    end
  end
end
