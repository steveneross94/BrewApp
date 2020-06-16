class CustomersController < ApplicationController
    before_action :find_customer, only: [:show, :edit, :update, :delete]


    def index
        @customers = Customer.all
    end

    def new
        @customer = Customer.new
    end

    def edit
    end

    def update
        @customer.update 
        redirect_to customer_path(@customer)
    end

    def create
        customer = Customer.create(customer_params)
        redirect_to customers_path
    end

    def delete
        @customer.delete
        redirect_to customers_path
    end

    private

    def find_customer
        @customer = Customer.find(params[:id])
    end

    ## what about a username/password combo? 
    def customer_params
        params.require(:customer).permit(:name)
    end

end