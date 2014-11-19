class FinderController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.order(:name, :asc)
  end

  def missing_email
    @customers = Customer.all.where(:email_address, nil)
  end
end
