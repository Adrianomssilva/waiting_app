class PartyMembersController < ApplicationController

  def create
    @party_member = PartyMember.new
    @party_member.row = Row.find(params[:row_id])
    @party_member.user = current_user
    @party_member.save!
  end

  def ativo
    @party_member = PartyMember.find(params[:id])
    @party_member.ativo!
  end


  def destroy
    @party_member = PartyMember.find(params[:id])
    @party_member.destroy
  end


  private
  def party_member_params
    params.require(:party_member).permit(:row_id)
  end
end
