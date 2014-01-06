json.array!(@web_resources) do |web_resource|
  json.extract! web_resource, :id, :url, :description, :recommending_member, :status, :declined_reason
  json.url web_resource_url(web_resource, format: :json)
end
