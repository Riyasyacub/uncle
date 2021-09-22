class PagesController < ApplicationController
  def index
    
  end

  def details
  end

  def other
    @entry = Entry.new
    @s = ["Stamping","Cerificate Attestation","Stamping & Attestation","Emigration","Tour Visa","Hotel Booking"]
    @places = ["Saudi","Qatar","Kuwait","Oman","Bahrain","UAE","Singapore","Malaysia"]
  end

  def print
    # raise params.inspect
    @entry = Entry.where(id: params[:id]).first
    @format = params[:format]
  end
  def print_money
    @money = Money.where(id: params[:id]).first
    @format = params[:format]
  end
  def flight
    @places = Place.where(status: 1).all.pluck(:name)
    @val = "Flight Ticket"
    @entry = Entry.new
    @s = ["Indigo Airlines", "AIR INDIA","AirIndia Express", "Emirates", "Spice Jet", "Qatar Airways", "Air Arabia", "flydubai","Etihad","VIStaRa", "SriLankan Airlines", "British Airways","Oman Airways", "Gulf Air","Singapore Airlines","Malaysia Airlines","Saudi Airlines","Flynas","Go First","Air Asia"]
  end

  def train
    @places = Place.where(status: 2).all.pluck(:name)
    @entry = Entry.new
    @val = "Train Ticket"
    @s = ["IRCTC"]
  end

  def money
    @money = Money.new
  end

  def money_update
    en = Money.new(money_params)
    if en.save
      redirect_to print_money_path(en,en.id.to_s + en.phone)
    else
      redirect_to :back
    end
  end

  def entry_update
    en = Entry.new(entry_params)
    if en.save
      redirect_to print_path(en, en.id.to_s+en.phone)
    else
      redirect_to :back
    end
  end

  def search_money
    @money = Money.where(phone: params[:phone]).last

    respond_to do |format|
      format.json {render json: @money}
    end

  end
  def reprint_ticket
    @entry = Entry.where.not(s_type: nil).all
  end
  def reprint_money
    @money = Money.all
  end
  def reprint_other
    @entry = Entry.where(s_type: nil).all
  end

  private

    def entry_params
      params.require(:entry).permit(:members,:from,:to,:price,:s_type,:service_name,:id_number,:phone,:paid,:name => [])
    end
    def money_params
      params.require(:money).permit(:from,:country,:phone,:name,:acc_no,:ifsc,:company,:aadhar_no,:pan_no,:amount,:address,:id_no,:phone)
    end
end
