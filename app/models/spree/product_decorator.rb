Spree::Product.class_eval do
  has_many :product_recipients, :dependent => :destroy
  has_many :recipients, :through => :product_recipients

  attr_accessible :product_recipients_attributes

  accepts_nested_attributes_for :product_recipients, :allow_destroy => true, :reject_if => lambda { |pp| pp[:recipient_name].blank? }
end
