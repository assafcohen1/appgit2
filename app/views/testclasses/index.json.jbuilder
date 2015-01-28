json.array!(@testclasses) do |testclass|
  json.extract! testclass, :id
  json.url testclass_url(testclass, format: :json)
end
