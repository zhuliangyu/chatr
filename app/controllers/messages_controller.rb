class MessagesController < ApplicationController

  def index
    render json: Message.order(created_at: :desc)
  end

  def create
    Message.create!(body: params[:body])
    head :created
  end

  def destroy
    Message.find(params[:id]).destroy!
    head :ok
  end

end
