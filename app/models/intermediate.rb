class Intermediate < ApplicationRecord
    belongs_to :toolkit, optional: true
    belongs_to :category, optional: true
end
  