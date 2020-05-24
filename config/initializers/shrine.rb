require 'shrine'
require 'shrine/storage/s3'

# s3_options = {
#   bucket: 'labs-uploaded-files',
#   region: 'eu-central-1',
#   access_key_id: ENV.fetch('SHRINE_ACCESS_KEY_ID'),
#   secret_access_key: ENV.fetch('SHRINE_SECRET_ACCESS_KEY')
# }
s3_options = {
  bucket: 'labs-uploaded-files',
  region: 'eu-central-1',
  access_key_id: 'AKIA5RJ2SE7QT6CWVZNL',
  secret_access_key: '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'
}

Shrine.storages = {
  cache: Shrine::Storage::S3.new(prefix: 'cache', **s3_options),
  store: Shrine::Storage::S3.new(prefix: 'store', **s3_options)
}

Shrine.plugin :mongoid
Shrine.plugin :cached_attachment_data
Shrine.plugin :restore_cached_data
