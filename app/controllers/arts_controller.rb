class ArtsController < ApplicationController

  def new
    @art = Art.new
  end

  def create
    art = Art.create(art_params)
    binding.pry
  end

  private

  def art_params
    params.require(:art).permit(:name, :description, :banner, :thumbnail, :original, :user_id)
  end
end
