class PartyMembersController < ApplicationController

  def create
    @party_member = PartyMember.new
    @party_member.row = Row.find(params[:row_id])
    @party_member.user = current_user
    @party_member.save!
  end


  private
  def party_member_params
    params.require(:party_member).permit(:row_id)
  end
end
