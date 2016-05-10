json.array!(@tv_tuners) do |tv_tuner|
  json.extract! tv_tuner, :id, :name, :price, :code, :brand, :model, :type, :tvtuner, :tvstandards, :remotecontrol, :videoencoding, :tunerinterface, :lowprofileready, :fmtuner, :videoformat, :portsin, :systemrequirments, :processor, :graphicscard, :availableslot, :os, :features, :packagecontent, :other
  json.url tv_tuner_url(tv_tuner, format: :json)
end
