class Product < ApplicationRecord
  belogs_to :supplier
  belogs_to :category

  has_many_attached :images
  acts_as_taggable_on :tags
end
