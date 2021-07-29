class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :apples
end
