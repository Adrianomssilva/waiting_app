class Row < ApplicationRecord
  belongs_to :user
  validates :name, :descrição, presence: true
end
