class Admin::DealersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @dealers = Dealer.all.page(params[:page]).per(10)
  end

  def new
    @dealer = Dealer.new
  end

  def create
    @dealer = Dealer.new(dealer_params)
    if @dealer.save
      flash[:notice] = "ディーラーを新規登録しました"
      redirect_to admin_dealer_path(@dealer.id)
    else

    end
  end

  def show
  end

  def edit
  end

  def update
  end
end
