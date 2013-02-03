module Spree
  module RecipientsHelper

    def options_for_recipients(product)
      existing = product.recipients.map { |recipient| recipient.name }
	  options = []
	  Recipient.all.each { |recipient| options << recipient.name unless existing.include? recipient.name }
      options_for_select(options)
    end

  end
end
