class Appetizer < ApplicationRecord
    has_many :favorites
    has_many :appetizers, through: :favorites

    validates_uniqueness_of :title
    
end
