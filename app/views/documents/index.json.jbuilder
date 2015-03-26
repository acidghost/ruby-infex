json.array!(@documents) do |document|
  json.extract! document, :id, :original, :tagged
  json.url document_url(document, format: :json)
end
