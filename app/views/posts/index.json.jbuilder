json.array!(@posts) do |post|
  json.extract! post, :id, :text, :post_on
  json.url post_url(post, format: :json)
end
