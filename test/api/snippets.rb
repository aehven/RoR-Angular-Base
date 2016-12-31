require 'json'
require 'rest-client'
require 'colorize'

$base_url = "localhost:3000"
$email = "m0@null.com"
$password = "password"
$uid = $email
$rcount = 0

def parse_reponse(response)
  $response = response
  $headers = $response.headers
  $token = $headers[:access_token]
  $client = $headers[:client]
  $data = JSON.parse!($response.body)

  puts "#{$rcount}) response: #{$response.inspect}".cyan
  puts "#{$rcount}) headers: #{$headers.inspect}".cyan
  puts
  puts "#{$rcount}) data: #{$data}".blue
  puts
end

def request(type, path, payload=nil)
  $rcount += 1

  headers = {
    uid: $uid,
    client: $client,
    access_token: $token
  }

  url = "#{$base_url}/#{path}"

  puts "#{$rcount}) [#{type}] [#{path}] [#{payload}] ([#{headers}])".green
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

# request(:get, "users")
#
# request(:get, "users/1")
#
# request(:put, "users/1", {user: {first_name: "blah"}})

request(:post, "users",
        { user: {
            first_name: "api",
            last_name: "user",
            email: "apiuser4@null.com",
            password: "password",
            role: "regular"
          }
        }
       )
