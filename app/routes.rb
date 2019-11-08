require File.dirname(__FILE__) + '/../lib/routing'

class Routes
  include Routing

  on_message '/start' do |bot, message|
    bot.api.send_message(chat_id: message.chat.id, text: "Bienvenido al sistema de pedidos LaNona! \nPara registrarse ingresá tu domicilio y teléfono con los comandos /domicilio y /telefono")
  end

  on_message_pattern %r{\/register (?<dom>.*)@(?<tel>.*)} do |bot, message, _args|
    bot.api.send_message(chat_id: message.chat.id, text: 'registracion exitosa')
  end
end