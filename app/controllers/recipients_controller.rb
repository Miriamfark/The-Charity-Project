class RecipientsController < ApplicationController

    def index 
        recipients = Recipient.all 
        render json: recipients.limit(5)
    end

end
