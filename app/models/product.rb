class Product < ApplicationRecord
  belongs_to :supplier
  belongs_to :category

  store :description, accessors: %i[material, size, comment]

  has_many_attached :images
  acts_as_taggable_on :tags
end
