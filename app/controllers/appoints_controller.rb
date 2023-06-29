class AppointsController < ApplicationController
  def index
    @appoints = Appoint.all
    @appointsCount = Appoint.count
    @date = Date.today.to_s(:date)
  end
  
  def new
    @appoint = Appoint.new
  end
  
  def create
    @appoint = Appoint.new(params.require(:appoint).permit(:title, :start_date, :end_date, :all_day_flag, :memo))
    if @appoint.save
      flash[:notice] = "スケジュールを登録しました"
      redirect_to :appoints
    else
      render "new", status: :unprocessable_entity
    end
  end
  
  def show
    @appoint = Appoint.find(params[:id])
  end
  
  def edit
    @appoint = Appoint.find(params[:id])
  end
  
  def update
     @appoint = Appoint.find(params[:id])
    if @appoint.update(params.require(:appoint).permit(:title, :start_date, :end_date, :all_day_flag, :memo))
      flash[:notice] = "スケジュールを更新しました"
      redirect_to :appoints
    else
      render "edit"
    end
  end
  
  def destroy
    @appoint = Appoint.find(params[:id])
    @appoint.destroy
    flash[:notice] = "スケジュールを削除しました"
    redirect_to :appoints
  end
end
