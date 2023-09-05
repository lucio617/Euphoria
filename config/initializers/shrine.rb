require "cloudinary"
require "shrine/storage/cloudinary"

Cloudinary.config(
  cloud_name: "...",
  api_key:    "...",
  api_secret: "...",
)

Shrine.storages = {
  cache: Shrine::Storage::Cloudinary.new(prefix: "cache"), # for direct uploads
  store: Shrine::Storage::Cloudinary.new,
}

Shrine.plugin :activerecord 
Shrine.plugin :cached_attachment_data
Shrine.plugin :restore_cached_data