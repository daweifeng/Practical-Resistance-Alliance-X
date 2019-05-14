class Toolkit < ApplicationRecord
    has_many :steps, :dependent => :destroy
    has_many :stoolkits, :dependent => :destroy
end
