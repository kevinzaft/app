json.array!(@tools) do |tool|
  json.extract! tool, :id, :name, :code, :price, :brand, :model, :tooltype, :details, :features, :warranty, :other
  json.url tool_url(tool, format: :json)
end
