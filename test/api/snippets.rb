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

  puts "response: #{$response.inspect}".green
  puts "headers: #{$headers.inspect}".green
  puts "data: #{$data}".blue
end

def send_request(type, path, payload)
  puts "#{type}: #{$request_path} / #{$request_payload}".cyan
  RestClient.send(type, "#{$base_url}/#{path}", payload) do |response, request, result|
    parse_reponse(response)
  end
end

send_request(:post, "auth/sign_in", {"email": $email, "password": $password})
