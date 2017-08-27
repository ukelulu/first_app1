json.extract! weibo, :id, :title, :description, :created_at, :updated_at
json.url weibo_url(weibo, format: :json)
