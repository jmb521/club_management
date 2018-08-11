class FamiliesController < ApplicationController

  def show
    @family = Family.find(params[:id])

  end

  def edit
    @family = Family.find(params[:id])
  end

  def update
    @family = Family.find(params[:id])
    @family.update(family_params)
    redirect_to family_path(@family)
  end

  private

  def family_params
    params.permit(:families).require(:user_birthday, :spouse, :spouse_birthday, :profile_id)
  end
end
