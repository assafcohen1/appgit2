json.array!(@testclass2s) do |testclass2|
  json.extract! testclass2, :id
  json.url testclass2_url(testclass2, format: :json)
end
