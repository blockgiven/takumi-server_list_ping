# Takumi::ServerListPing

minecraft server list ping packet and tools.

Details: [Server List Ping - MinecraftCoalition](http://wiki.vg/Server_List_Ping)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'takumi-server_list_ping'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install takumi-server_list_ping

## Usage

    $ bundle exec takumi-server_list_ping YOUR_SERVER_IP_ADDRESS_OR_HOSTNAME
    {"description":"A Minecraft Server","players":{"max":20,"online":0},"version":{"name":"1.8","protocol":47}}

## Contributing

1. Fork it ( https://github.com/blockgiven/takumi-server_list_ping/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
