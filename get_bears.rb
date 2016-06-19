### usage: bundle exec ruby get_bears.rb

require 'date'

require 'swagger_client'

api_instance = SwaggerClient::DefaultApi.new

bear = SwaggerClient::NewBear.new # NewBear | Bear to add to the store
bear.name='ruby interactive @ ' + DateTime.now.to_s


begin
  result = api_instance.add_bear(bear)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefaultApi->add_bear: #{e}"
end



