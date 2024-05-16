class PartyMember < ApplicationRecord
  belongs_to :user
  belongs_to :row
  enum status: {pendente: 0, ativo: 1}
end
