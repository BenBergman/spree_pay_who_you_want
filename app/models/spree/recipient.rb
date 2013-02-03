module Spree
  class Recipient < ActiveRecord::Base
    has_many :product_recipients, :dependent => :destroy
    has_many :products, :through => :product_recipients

    attr_accessible :name, :description, :pay_out_note

	validates :name, :uniqueness => true, :presence => true
	validates :description, :presence => true
  end
end
