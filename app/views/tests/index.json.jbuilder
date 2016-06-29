json.array!(@tests) do |test|
  json.extract! test, :id, :p1, :p2, :p3, :p4, :p5
  json.url test_url(test, format: :json)
end
