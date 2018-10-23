Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :orders
      get 'order_status/:reference', to: 'orders#show_status'
      get 'list_per_channel/:purchase_channel', to: 'orders#list_per_channel'
      get 'financial_report/', to: 'orders#financial_report'
      resources :batches
      get 'create_batch/:purchase_channel', to: 'batches#create'
      get 'production_batch/:reference', to: 'batches#production'
      get 'close_batch/:reference/:delivery_service', to: 'batches#close'
    end
  end
end