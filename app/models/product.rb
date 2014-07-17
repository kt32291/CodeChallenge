class Product < ActiveRecord::Base

  has_many :orders

  validates_presence_of :title, :price, :pic, :description
  validates_numericality_of :price

  mount_uploader :pic, PicUploader

  def formatted_price

  end

end
