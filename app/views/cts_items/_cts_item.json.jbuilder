json.extract! cts_item, :id, :technical_data, :ordering_information, :connection_data, :dimensions, :image, :created_at, :updated_at
json.url cts_item_url(cts_item, format: :json)
json.image url_for(cts_item.image)
