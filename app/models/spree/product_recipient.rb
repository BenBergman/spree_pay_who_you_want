module Spree
  class ProductRecipient < ActiveRecord::Base
    belongs_to :product
    belongs_to :recipient

    validates :recipient, :presence => true
    validates :product, :presence => true

    attr_accessible :recipient_name

    # virtual attributes for use with AJAX completion stuff
    def recipient_name
      recipient.name if recipient
    end

    def recipient_name=(name)
      unless name.blank?
        unless recipient = Recipient.find_by_name(name)
          recipient = Recipient.create(:name => name, :presentation => name)
        end
        self.recipient = recipient
      end
    end
  end
end
