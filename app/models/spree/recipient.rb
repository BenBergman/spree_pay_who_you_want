module Spree
  class Recipient < Spree::Activator
    attr_accessible :name, :description, :pay_out_notes
  end
end
