class Category < ApplicationRecord
  has_and_belongs_to_many :apples
  accepts_nested_attributes_for :apples
end