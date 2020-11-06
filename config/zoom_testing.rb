require "base64"


api_key = "nodnlU8QSOe9BW2m5Jx2A"
api_secret = 'm7ptFFg3xTd0hBLc9wHR6WbJBAovXoYJ'

   
   
url = "https://zoom.us/oauth/token?grant_type=refresh_token&refresh_token=#{User.first.zoom_oauth_data.refresh_token}"

auth_header = "Authorization: Basic #{Base64.encode64(api_key + api_secret)}"


p `curl --http1.1 -i -H "#{auth_header}" -H "Accept: application/json" -H "Content-Type: application/json" #{url}`