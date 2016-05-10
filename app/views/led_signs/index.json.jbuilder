json.array!(@led_signs) do |led_sign|
  json.extract! led_sign, :id, :name, :price, :code, :signmodel, :colors, :volts, :datatransfer, :features, :dimensions, :weight, :other
  json.url led_sign_url(led_sign, format: :json)
end
