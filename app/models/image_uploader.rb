class ImageUploader < Shrine
  plugin :validation_helpers

  Attacher.validate do
    validate_max_size 10 * 1024 * 1024
  end
end
