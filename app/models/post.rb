class Post
  include Mongoid::Document
  include ImageUploader::Attachment(:image)

  field :title, type: String
  field :body, type: String
  field :image_data, type: String
end
