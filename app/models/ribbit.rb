class Ribbit < ApplicationRecord
  default_scope { order 'created_at DESC' }
  # attr_accessor :content, :userid
  belongs_to :user

  validates :content, length: { maximum: 140 }
end
