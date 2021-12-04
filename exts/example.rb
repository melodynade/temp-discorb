require "discorb"

class Example
  include Discorb::Extension

  event :message do |message|
    next if message.author.bot?
    next unless message.content == "hello"

    message.channel.post("hello")
  end
end