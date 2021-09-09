class BillsController < ApplicationController

    def index 
        user = User.find(params[:user_id])
        bills = Bill.all
        render json: bills
    end

    def create
        bills = Bill.create(bill_params)
        render json: bills
    end

    def update
        user = User.find_by(id: params[:user_id])
        bill = Bill.find_by(id: params[:id])
        bill.update(bill_params)
        render json: user
    end

    def show 
        bill = Bill.find_by(id: params[:id])
        render json: bill
    end

    def destroy
        bill = Bill.find_by(id: params[:id])
        user = User.find_by(id: params[:user_id])
        bill.destroy
        render json: user
    end

    private

    def bill_params
        params.require(:bill).permit(:due_date, :amount_due, :notes, :paid_status, :user_id, :company_name)
    end


end



