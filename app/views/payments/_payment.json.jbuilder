json.extract! payment, :id, :status, :created_at, :updated_at
json.url payment_url(payment, format: :json)
