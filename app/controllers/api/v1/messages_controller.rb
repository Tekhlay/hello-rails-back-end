class Api::V1::MessagesController < ApplicationController
  def index
    random_message = Message.order('RANDOM()').first
    render json: { message: random_message.text }
  end
end
