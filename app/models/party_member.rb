class PartyMember < ApplicationRecord
  belongs_to :user
  belongs_to :row
end
