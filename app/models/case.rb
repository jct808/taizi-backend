class Case < ApplicationRecord
  has_rich_text :content
  acts_as_taggable_on :tags
end
