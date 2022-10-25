class DonationsController < ApplicationController

    def index 
        donations = Donation.all
        render json: donations.order("amount ASC")
    end

    def show 
        donation = Donation.find(params[:id])
        if donation
            render json: donation   
        else
            render json: { error: "Donation does not exist" }, status: :not_found
        end
    end

    def create 
        donation = Donation.create(donation_params)
        render json: donation, status: :created
    end

    private

    def donation_params 
        params.permit(:amount)
    end
end
