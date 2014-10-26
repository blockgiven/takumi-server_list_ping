module Takumi
  module ServerListPing
    NEXT_STATUS      = 1
    PROTOCOL_VERSION = 4
    PORT             = 25565

    module_function

    def ping(server_address = 'localhost', port = PORT)
      handshake = Takumi::ServerListPing::Handshake.create({
        server_address: server_address,
        port:           port
      })
      status_request = Takumi::ServerListPing::StatusRequest.create

      socket = TCPSocket.open(handshake.server_address, handshake.port)
      socket.write(handshake.to_s)
      socket.write(status_request.to_s)

      Takumi::ServerListPing::StatusResponse.decode(socket.read)
    ensure
      socket.close if socket
    end
  end
end

require "takumi/packet"
require "takumi/server_list_ping/version"
require "takumi/server_list_ping/base"
require "takumi/server_list_ping/handshake"
require "takumi/server_list_ping/status_request"
require "takumi/server_list_ping/status_response"
