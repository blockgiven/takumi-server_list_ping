module Takumi
  module ServerListPing
    NEXT_STATUS      = 1
    PROTOCOL_VERSION = 4
    PORT             = 25565
  end
end
require "takumi/packet"
require "takumi/server_list_ping/version"
require "takumi/server_list_ping/base"
require "takumi/server_list_ping/handshake"
require "takumi/server_list_ping/status_request"
require "takumi/server_list_ping/status_response"
