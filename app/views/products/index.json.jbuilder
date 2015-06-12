json.array!(@products) do |product|
  json.extract! product, :id, :masp, :tensp, :soluong, :giaban, :short_description, :long_description, :image, :xuatxu, :gia_khuyenmai, :view
  json.url product_url(product, format: :json)
end
