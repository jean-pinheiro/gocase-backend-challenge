module Api
  module V1
    class BatchesController < ApplicationController
      def index
        batches = Batch.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded orders', data:batches},status: :ok
      end 

      def create
        batch = Batch.new(batch_params)

        if batch.save
          render json: {status: 'SUCCESS', message:'Saved Batch', data:batch},status: :ok
        else
          render json: {status: 'ERROR', message:'Batch not saved', data:batch.errors},status: :unprocessable_entity
        end
      end


      def production
        batch = Batch.where(reference: params[:reference]).first
        orders_ref = batch.orders.split(";")
        
        orders = Order.where("reference in (?)", orders_ref);

        orders.each { |o| 
          o.status = "production"
          o.save()
        }

        render json: {data: orders}
      end

      def close
        batch = Batch.where(reference: params[:reference]).first
        orders_ref = batch.orders.split(";")
        
        orders = Order.where("reference in (?) and delivery_service=?", orders_ref, params[:delivery_service]);

        orders.each { |o| 
          o.status = "sent"
          o.save()
        }

        render json: {data: orders}
      end

      def destroy
        batch = Batch.find(params[:reference])
        batch.destroy
        render json: {status: 'SUCCESS', message:'Deleted batch', data:batch},status: :ok
      end

      private

        def batch_params
          ord = Array.new
          orders = Order.where(purchase_channel: params[:purchase_channel])

          orders.each do |o|
            ord.push(o.reference)
          end        
          ref = rand(9999)
    
          {
            :reference => ref, 
            :purchase_channel => params[:purchase_channel], 
            :orders => ord.join(";")
          }
        end
    end
  end
end