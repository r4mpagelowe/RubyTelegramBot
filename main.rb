require 'telegram/bot'
token = '710175791:AAGVYWA5z6b4LXJcJ_m9ScPPXNsb02CyKsM'
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.sendMessage(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
    end
  end
end