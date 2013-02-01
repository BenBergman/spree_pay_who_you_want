module Spree
  class Recipient < ActiveRecord::Base
    attr_accessible :name, :description, :pay_out_note
  end
end
