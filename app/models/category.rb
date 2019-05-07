class Category < ApplicationRecord
    has_many :toolkits, :dependent => :destroy
end
  