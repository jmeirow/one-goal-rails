json.array!(@system_texts) do |system_text|
  json.extract! system_text, :id, :key, :value
  json.url system_text_url(system_text, format: :json)
end
