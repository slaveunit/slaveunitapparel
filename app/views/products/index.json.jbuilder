json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :created_at, :updated_at, :colour, :photo_file_name, :photo_content_type, :photo_file_size, :photo_updated_at, :price, :active, :size
  json.url product_url(product, format: :json)
end
