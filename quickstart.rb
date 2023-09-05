require 'cloudinary'

if Cloudinary.config.api_key.blank?
  require './config'
end

puts 'My cloud name is:' + Cloudinary.config.cloud_name

upload1=Cloudinary::Uploader.upload("public\Demo.mp4", 
    use_filename:true, 
    unique_filename:false,
    overwrite:true
    )

# Retrieve some attributes from the first upload response.

  puts "File size of the #{upload1['public_id']}.#{upload1['format']} #{upload1['resource_type']}: #{upload1['bytes']/1024} KB"     
