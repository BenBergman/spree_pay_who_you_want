module Spree
  module Admin
    class RecipientsController < ApplicationController
      helper :all
	  layout "spree/layouts/admin"

	  def index
		  @recipients = Recipient.all
	  end

      protected
        def build_resource
          if params[:recipient]
            @recipient = Recipient.new(params[:recipient])
          else
            @recipient = Recipient.new
          end
          @recipient
        end

        def location_after_save
          spree.edit_admin_recipient_url(@recipient)
        end
	end
  end
end
