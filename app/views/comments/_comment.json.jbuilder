json.extract! comment, :id, :commentor, :text, :created_at, :updated_at
json.url comment_url(comment, format: :json)