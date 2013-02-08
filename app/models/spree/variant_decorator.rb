# Add recommended_price and minimum_price to variant model

Spree::Variant.class_eval do
  attr_accessible :non_split_amount
  validates :non_split_amount, :numericality => { :greater_than_or_equal_to => 0 }, :presence => true
end
