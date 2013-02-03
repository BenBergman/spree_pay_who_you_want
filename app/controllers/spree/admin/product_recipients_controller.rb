module Spree
  module Admin
    class ProductRecipientsController < ResourceController
      helper 'spree/recipients'

      belongs_to 'spree/product', :find_by => :permalink
      before_filter :find_recipients
      before_filter :setup_recipient, :only => [:index]

      # We use a "custom" finder in destroy
      # Because the request is scoped without a product
      # on account of the request coming from the "link_to_remove_fields"
      # helper on the admin/product_recipients view
      skip_before_filter :load_resource, :only => [:destroy]

      def destroy
        product_recipient = Spree::ProductRecipient.find(params[:id])
        product_recipient.destroy
        render :text => nil
      end

      private
        def find_recipients
          @properties = Spree::Recipient.pluck(:name)
        end

        def setup_recipient
          @product.product_recipients.build
        end
    end
  end
end
