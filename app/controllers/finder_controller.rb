class FinderController < ApplicationController
  def index
    @title = "All Customers"
    @customers = Customer.all
  end

  def alphabetized
    @title = "Alphabetized Customer List By Full Name"
    @customers = Customer.order(:full_name, :asc)
    render :index
  end

  def missing_email
    @title = "Customers with Missing Emails"
    @customers = Customer.all.where(:email_address, nil)
    render :index
  end
end
