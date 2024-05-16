class AddColunmStatusToPartyMembers < ActiveRecord::Migration[7.1]
  def change
    add_column :party_members, :status, :integer, default: 0
  end
end
