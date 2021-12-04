require "discorb"
require_relative "exts/example"

client = Discorb::Client.new

extensions = [Example]

extensions.each { |extension| 
  client.load_extension(extension)
}

client.run(ENV["DISCORD_BOT_TOKEN"])