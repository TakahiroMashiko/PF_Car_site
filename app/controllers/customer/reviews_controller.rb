class Customer::ReviewsController < ApplicationController
  before_action :authenticate_customer!, only: [:new, :create, :edit, :update, :destroy]

  def index
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end