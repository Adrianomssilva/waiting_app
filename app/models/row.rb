class Row < ApplicationRecord
  belongs_to :user
  has_many :party_members
  validates :name, :descrição, presence: true
  validates :user,  uniqueness: true
end
