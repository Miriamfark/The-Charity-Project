class RecipientsController < ApplicationController

    def index 
        recipients = Recipient.all 
        render json: recipients.limit(5)
    end

    def show 
        recipient = Recipient.find(params[:id])
        if recipient
            render json: recipient   
        else
            render json: { error: "Recipient does not exist" }, status: :not_found
        end
    end

    def create 
        recipient = Recipient.create(recipient_params)
        render json: recipient, status: :created
    end

    private

    def recipient_params 
        params.permit(:name)
    end

end
