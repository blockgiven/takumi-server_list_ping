require 'socket'

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
      socket.setsockopt(Socket::IPPROTO_TCP, Socket::TCP_NODELAY, 1)
      socket.write(handshake.to_s)
      socket.write(status_request.to_s)
      socket.flush

      packets = "".encode(Encoding::BINARY)
      loop do
        buf = socket.recv(1024)
        break if buf.empty?
        packets << buf
      end
      Takumi::ServerListPing::StatusResponse.decode(packets)
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
