class Category < ApplicationRecord
    has_many :intermediates
    has_many :toolkits, through: :intermediates, dependent: :destroy
end
  