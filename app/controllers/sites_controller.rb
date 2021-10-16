class SitesController < ApplicationController
  def home
  end

  def contact
    @message = Message.new
    
  end
  def message_create
    @message = Message.new(message_params)
    if @message.save
      AdminMailer.new_feedback(message_params[:name],message_params[:number],message_params[:message]).deliver
      redirect_to sites_contact_path, flash: {success: "Submitted Successfully"}
    end

  end
  def services
  end

  def news
  end

  def staff_login
    
  end

  private
    def message_params
      params.require(:message).permit(:name,:number,:message)
    end
end
