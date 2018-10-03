json.extract! login, :id, :Userid, :Password, :created_at, :updated_at
json.url login_url(login, format: :json)
