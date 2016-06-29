class WelcomeController < ApplicationController
  def index
    @computers = Computer.all
    @message = Message.new
  end
end
