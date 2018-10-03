json.extract! user, :id, :Name, :Userid, :Password, :Batch, :Branch, :Email, :created_at, :updated_at
json.url user_url(user, format: :json)
