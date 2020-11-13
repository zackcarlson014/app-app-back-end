class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :appetizer

  validates :user_id, uniqueness: {scope: :appetizer_id}

end
