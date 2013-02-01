module Spree
  class Recipient < ActiveRecord::Base
    attr_accessible :name, :description, :pay_out_note

	validates :name, :uniqueness => true, :presence => true
	validates :description, :presence => true
  end
end
