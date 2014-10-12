class LoansController < ApplicationController
  def index
    @loans = Loan.take(10)
  end

  def show
    @loan = Loan.find(params[:id])
  end
end
