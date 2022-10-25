class DonorsController < ApplicationController

    def index 
        donors = Donor.all 
        render json: donors
    end

    def show 
        donor = Donor.find(params[:id])
        if donor
            render json: donor  
        else
            render json: { error: "Donor does not exist" }, status: :not_found
        end    
    end

    def create 
        donor = Donor.create(donor_params)
        render json: donor, status: :created
    end

    private

    def donor_params 
        params.permit(:name)
    end

end
