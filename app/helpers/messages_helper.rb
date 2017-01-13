module MessagesHelper
	def self_or_other(message)
    message.user == current_athlete ? "self" : "other"
  end

  def message_interlocutor(message)
    message.user == message.conversation.athlete ? message.conversation.athlete : message.conversation.trainer
  end
end

