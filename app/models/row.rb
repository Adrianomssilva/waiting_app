class Row < ApplicationRecord
  belongs_to :user
  has_many :party_members, :dependent => :destroy
  validates :name, :descrição, presence: true
  validates :user,  uniqueness: true
end
