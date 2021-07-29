class AppleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :variety, :harvest, :notes, :image_url, :categories
end
