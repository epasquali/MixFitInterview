json.extract! postman_user, :id, :name, :email, :height, :weight, :created_at, :updated_at
json.url postman_user_url(postman_user, format: :json)
