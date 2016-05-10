json.array!(@sound_cards) do |sound_card|
  json.extract! sound_card, :id, :name, :price, :code, :brand, :model, :chipset, :channels, :samplerate, :digitalaudio, :snr, :linein, :lineout, :spdif, :mic, :auxport, :otherport, :interface, :os, :systemrequirements, :features, :dimension, :weight, :packagecontents, :plug, :other
  json.url sound_card_url(sound_card, format: :json)
end
