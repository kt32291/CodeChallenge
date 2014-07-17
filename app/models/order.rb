class Order < ActiveRecord::Base

  belongs_to :product

  validates_presence_of :first_name, :last_name, :email, :credit_card, :expiration, :product_id
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :credit_card, length: { in: 13..16 }, numericality: { only_integer: true }
  validates_associated :product

end
