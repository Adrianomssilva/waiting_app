class Row < ApplicationRecord
  belongs_to :user
  validates :name, :descrição, presence: true
  validates :user,  uniqueness: true
end
