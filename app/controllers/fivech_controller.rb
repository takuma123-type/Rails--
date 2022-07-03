class FivechController < ApplicationController

  before_action :set_fivech, only: [:edit, :update, :destroy]

  def index
    @fivechs = Fivech.all
  end

  def new
  end

  def create
   @fivech =  Fivech.create(fivech_params)
   if @fivech.save
    redirect_to root_path
   else
    redirect_to new_fivech_path
   end
  end

  def edit
  end

  def update
    @fivech.update(fivech_params)
    redirect_to root_path
  end

  # レコード指定
  #更新
  #トップページへ

  def destroy
   @fivech = Fivech.find(params[:id])
   @fivech.destroy
    redirect_to root_path
  end

  # レコード指定
  #削除
  #トップページへ



  private
  def fivech_params
    params.permit(:content)
  end

  def set_fivech
    @fivech = Fivech.find(params[:id])
  end


end
