module Api
  module V1
    class OrdersController < ApplicationController
      def index
        orders = Order.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded orders', data:orders},status: :ok
      end 

      def create
        order = Order.new(order_params)

        if order.save
          render json: {status: 'SUCCESS', message:'Saved order', data:order},status: :ok
        else
          render json: {status: 'ERROR', message:'Order not saved', data:order.errors},status: :unprocessable_entity
        end
      end

      def show_status
        order = Order.where(reference: params[:reference]).first

        render json: {status: 'SUCCESS', message:'Status of Order', data:order.status},status: :ok
      end

       def financial_report
        
        num_or = Order.select('COUNT(purchase_channel) as qty, SUM(total_value) as total, purchase_channel')
          .group(:purchase_channel)
               
        render json: {status: 'SUCCESS', message:'Financial Report by Purchase Channel', data:num_or},status: :ok
      
      end

       def list_per_channel
        orders = Order.where(purchase_channel: params[:purchase_channel])
         render json: {
            status: 'SUCCESS', 
            message:'Order Listed per Purchase Channel', 
            data: orders
          },status: :ok
      end


      def destroy
        order = Order.find(params[:reference])
        order.destroy
        render json: {status: 'SUCCESS', message:'Deleted order', data:order},status: :ok
      end

      private

      def order_params
        params.permit(:reference, :purchase_channel, :client_name, :address, :delivery_service, :total_value, :line_items, :status)
      end
    end
  end
end