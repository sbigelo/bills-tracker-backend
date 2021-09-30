class BillsController < ApplicationController

    def index 
        @bills = Bill.all
        render json: @bills, include: ['users']
    end

    def create
        @bill = Bill.new(bill_params)
        if @bill.save
            render json: @bills, include: ['users']
        else
            render json: {error: 'Can not create bill.'}, status: 422
        end
    end

    def show 
        bill = Bill.find_by(slug: params[:slug])
        render json: bill
    end

    def update
        @bill = Bill.find_by(id: params[:id])
        if @bill.update(due_date: params[:bill][:due_date], amount_due: params[:bill][:amount_due], notes: params[:bill][:notes], paid_status: params[:bill][:paid_status], company_name: params[:bill][:company_name])
            @bill.save
            render json: @bill
        else
            render json: {error: "Wont work."}, status: 422
        end
    end

    def destroy
        @bill = Bill.find_by(id: params[:id])
        if @bill.destroy
            head :no_content
        else
        render json: {error: "Nope"}, status: 422
        end
    end

    private

    def bill_params
        params.require(:bill).permit(:due_date, :amount_due, :notes, :paid_status, :company_name)
    end


end






