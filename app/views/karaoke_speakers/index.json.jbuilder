json.array!(@karaoke_speakers) do |karaoke_speaker|
  json.extract! karaoke_speaker, :id, :name, :price, :code, :brand, :brandmodel, :type, :soldas, :driverunits, :frequencyresponse, :nominalimpedance, :sensitivity, :features, :dimensions, :weight, :other, :warranty
  json.url karaoke_speaker_url(karaoke_speaker, format: :json)
end
