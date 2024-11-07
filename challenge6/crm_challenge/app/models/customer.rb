require "image_processing/mini_magick"

class Customer < ApplicationRecord
  has_one_attached :image
  validates :full_name, :phone_number, presence: true

  after_save :resize_image
end
