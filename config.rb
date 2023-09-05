# Replace the 'config_from_url' string value below with your
# product environment's credentials, available from your Cloudinary console.
# =====================================================

require 'cloudinary'
require 'uri'
url='cloudinary://224159392637356:63A9DDt1wq7Jce2Iqdqh47ovruE@df2ftzzb9'
encoded_url = CGI.escape(url)
ur=URI.parse(encoded_url)
Cloudinary.config_from_url(ur)
puts "@@@",ur
Cloudinary.config do |config|
  config.secure = true
end