class Admin::VisitsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @visits = Visit.all.page(params[:page]).per(10)
  end

  def show
    @visit = Visit.find(params[:id])
  end

  def edit
    @visit = Visit.find(params[:id])
  end

  def update
    @visit = Visit.find(params[:id])
    if @visit.update(visit_params)
      flash[:notice] = "来店予約の情報を更新しました"
    else

    end
  end
end
