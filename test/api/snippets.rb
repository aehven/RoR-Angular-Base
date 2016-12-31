require 'json'
require 'rest-client'
require 'colorize'

$base_url = "localhost:3000"
$email = "a0@null.com"
$password = "password"
$uid = $email

def parse_reponse(response)
  $response = response
  $headers = $response.headers
  $token = $headers[:access_token]
  $client = $headers[:client]
  $data = JSON.parse!($response.body)

  puts "response: #{$response.inspect}".cyan
  puts "headers: #{$headers.inspect}".cyan
  puts
  puts "data: #{$data}".blue
  puts
end

def request(type, path, payload=nil)
  headers = {
    uid: $uid,
    client: $client,
    access_token: $token
  }

  url = "#{$base_url}/#{path}"

  puts "[#{type}] [#{path}] [#{payload}] ([#{headers}])".green
  puts

  case type
    when :post, :put
      RestClient.send(type, url, payload, headers) do |response, request, result|
        parse_reponse(response)
      end
    when :get
      RestClient.get(url, headers) do |response, request, result|
        parse_reponse(response)
    end
  end
end

request(:post, "auth/sign_in", {"email": $email, "password": $password})

request(:get, "users")

request(:get, "users/1")

request(:put, "users/1", {user: {first_name: "blah"}})
