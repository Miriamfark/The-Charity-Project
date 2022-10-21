class DonationsController < ApplicationController

    def index 
        donations = Donation.all
        render json: donations.order("amount ASC")
    end

end
