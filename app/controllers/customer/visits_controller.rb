class Customer::VisitsController < ApplicationController
  before_action :authenticate_customer!, only: [:new, :create, :confirm, :finish]

  def new
    @visit = Visit.new
  end

  def create
    @visit = Visit.new(visit_params)
    @visit.customer_id = current_customer.id
    if @visit.save
      redirect_to finish_visits_path
    else
      render "new"
    end
  end

  def confirm
    @visit = Visit.new(visit_params)
  end

  def finish
  end

  # Strong parameters
  private
  def visit_params
    params.require(:visit).permit(:customer_id, :dealer_id, :name, :name_kana, :phone_number, :email, :visit, :visit_status)
  end
end
