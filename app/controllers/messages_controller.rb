class MessagesController < ApplicationController

  def index
    render json: Message.order(created_at: :desc)
  end

  def create
    Message.create!(body: params[:body],user:params[:user])
    head :created
  end

  def destroy
    Message.find(params[:id]).destroy!
    head :ok
  end

  def update


    message=Message.find(params[:id])
    message.flag = !message.flag
    message.save
    head :ok


  end

end
