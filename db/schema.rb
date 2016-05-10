# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160509191413) do

  create_table "amplifiers", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.text     "specification"
    t.text     "features"
    t.string   "dimensions"
    t.string   "weight"
    t.text     "other"
    t.text     "warranty"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "android_tvs", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "series"
    t.string   "tvmodel"
    t.string   "os"
    t.string   "cputype"
    t.string   "cpuspeed"
    t.string   "cores"
    t.string   "tech"
    t.string   "screensize"
    t.string   "touchscreen"
    t.text     "lcdfeatures"
    t.string   "resolution"
    t.string   "webcam"
    t.string   "gpuvpu"
    t.string   "videomemory"
    t.string   "builtinstorage"
    t.string   "cardreader"
    t.text     "memory"
    t.string   "opticaldrive"
    t.string   "wlan"
    t.string   "bluetooth"
    t.string   "usbport"
    t.string   "hdmi"
    t.string   "audioports"
    t.string   "audio"
    t.string   "battery"
    t.string   "service"
    t.text     "otherfeatures"
    t.text     "warranty"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "appliances", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "appliancetype"
    t.string   "brand"
    t.string   "appliancemodel"
    t.text     "features"
    t.text     "power"
    t.text     "specifications"
    t.string   "dimensions"
    t.string   "weight"
    t.text     "warranty"
    t.text     "other"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "bluray_storages", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "storagetype"
    t.string   "capacity"
    t.string   "maxspeedsupported"
    t.string   "quantity"
    t.string   "surfacetop"
    t.text     "features"
    t.string   "packaging"
    t.text     "other"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "burner_readers", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "price"
    t.string   "brand"
    t.string   "productmodel"
    t.string   "cdrom"
    t.string   "dvdrom"
    t.string   "drivetype"
    t.string   "dvdr"
    t.string   "dvdrdl"
    t.string   "dvdmr"
    t.string   "dvdmrdl"
    t.string   "dvdrw"
    t.string   "dvdmrw"
    t.string   "dvdmram"
    t.string   "cdmr"
    t.string   "cdmrw"
    t.string   "dvdzr"
    t.string   "dvdzrdl"
    t.string   "dvdzrw"
    t.string   "os"
    t.string   "buffer"
    t.string   "disc"
    t.string   "cdda"
    t.string   "mmcd"
    t.text     "other"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "cables", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "cabletype"
    t.text     "description"
    t.string   "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cameras", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.text     "cameramodel"
    t.text     "details"
    t.text     "imagesensor"
    t.text     "whitebalance"
    t.text     "viewfinder"
    t.text     "lcdmonitor"
    t.text     "focus"
    t.text     "exposure"
    t.text     "shutter"
    t.text     "flash"
    t.text     "drive"
    t.text     "function"
    t.text     "recording"
    t.text     "movie"
    t.text     "lens"
    t.text     "other"
    t.text     "warranty"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "car_accessories", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "camodel"
    t.string   "catype"
    t.text     "features"
    t.text     "spec"
    t.text     "dimensions"
    t.text     "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cd_media", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "mediatype"
    t.string   "capacity"
    t.string   "recordtime"
    t.string   "maxspeedsupported"
    t.string   "quantity"
    t.text     "features"
    t.string   "packaging"
    t.text     "other"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "computer_cases", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "casetype"
    t.string   "brand"
    t.string   "casemodel"
    t.string   "motherboard"
    t.string   "material"
    t.text     "drivebay"
    t.string   "weight"
    t.string   "expansion"
    t.string   "dimensions"
    t.string   "thickness"
    t.string   "iopanel"
    t.text     "cooling"
    t.text     "power"
    t.string   "cpucompatibility"
    t.string   "vgacompatibility"
    t.text     "other"
    t.string   "price"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "computer_monitors", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "price"
    t.string   "brand"
    t.string   "monitormodel"
    t.string   "monitortype"
    t.string   "paneltype"
    t.string   "display"
    t.string   "resolution"
    t.string   "ratio"
    t.string   "response"
    t.string   "contrast"
    t.string   "brightness"
    t.string   "displaycolors"
    t.string   "inputconnector"
    t.string   "touchscreen"
    t.string   "threed"
    t.string   "builtinspeaker"
    t.string   "usb"
    t.string   "tvtuner"
    t.string   "power"
    t.string   "heightadjustable"
    t.string   "tilt"
    t.string   "dimensions"
    t.string   "weight"
    t.string   "warranty"
    t.text     "other"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "cpus", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "cputype"
    t.string   "sockettype"
    t.string   "brand"
    t.string   "mpn"
    t.string   "cpumodel"
    t.string   "series"
    t.string   "cores"
    t.string   "threads"
    t.string   "clock"
    t.string   "cache"
    t.string   "power"
    t.string   "manufacturing"
    t.string   "memorytypes"
    t.string   "memorychannels"
    t.string   "graphics"
    t.string   "price"
    t.text     "other"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "desktop_computers", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "desktoptype"
    t.string   "usage"
    t.string   "colors"
    t.string   "processor"
    t.string   "processormainfeatures"
    t.string   "cacheperprocessor"
    t.string   "memory"
    t.string   "storage"
    t.string   "opticaldrive"
    t.string   "graphics"
    t.string   "audio"
    t.string   "ethernet"
    t.string   "powersupply"
    t.string   "keyboard"
    t.string   "mouse"
    t.string   "os"
    t.text     "specialfeatures"
    t.string   "cputype"
    t.string   "cpuspeed"
    t.string   "l2cachepercpu"
    t.string   "l3cachepercpu"
    t.string   "cpusockettype"
    t.text     "cpumainfeatures"
    t.string   "gpuvgatype"
    t.string   "memorycapacity"
    t.string   "memoryspeed"
    t.string   "memoryspec"
    t.string   "memoryslot"
    t.string   "maxmemorysupported"
    t.string   "hdd"
    t.string   "hddinterface"
    t.string   "hddrpm"
    t.string   "opticaldrivetype"
    t.string   "opticaldrivespec"
    t.string   "audiochipset"
    t.string   "audiochannels"
    t.string   "lanchipset"
    t.string   "lanspeed"
    t.string   "frontusb"
    t.string   "ps2"
    t.string   "videoports"
    t.string   "rearusb"
    t.string   "rj45"
    t.string   "rearaudioports"
    t.text     "pcislots"
    t.string   "mousetype"
    t.string   "keyboardtype"
    t.string   "dimensions"
    t.string   "weight"
    t.text     "warranty"
    t.text     "other"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "dvd_media", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "mediatype"
    t.string   "capacity"
    t.string   "maxspeedsupported"
    t.string   "quantity"
    t.text     "features"
    t.string   "packaging"
    t.text     "other"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "flash_digitals", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "storagetype"
    t.string   "price"
    t.string   "brand"
    t.string   "capacity"
    t.string   "color"
    t.string   "dimensions"
    t.string   "weight"
    t.string   "interface"
    t.string   "readspeed"
    t.string   "writespeed"
    t.text     "systemrequirements"
    t.text     "warranty"
    t.text     "note"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "hard_drives", force: :cascade do |t|
    t.string   "name"
    t.string   "drivetype"
    t.string   "code"
    t.string   "price"
    t.string   "capacity"
    t.string   "color"
    t.text     "dimensions"
    t.text     "weight"
    t.text     "interface"
    t.string   "texture"
    t.string   "warranty"
    t.string   "voltage"
    t.text     "requirements"
    t.text     "accessories"
    t.string   "temperature"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "headsets", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "price"
    t.string   "headsettype"
    t.string   "brand"
    t.string   "headsetmodel"
    t.string   "connection"
    t.string   "design"
    t.string   "frequency"
    t.string   "impedance"
    t.string   "sensitivity"
    t.string   "connectors"
    t.string   "warranty"
    t.string   "platform"
    t.text     "other"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "home_offices", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "officetype"
    t.string   "version"
    t.string   "os"
    t.text     "systemrequirements"
    t.text     "features"
    t.text     "warranty"
    t.text     "other"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "home_theater_systems", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "homemodel"
    t.string   "channels"
    t.string   "speakerpowerrating"
    t.string   "speakerfrequency"
    t.text     "features"
    t.text     "dimensions"
    t.text     "other"
    t.text     "warranty"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "io_controllers", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "price"
    t.string   "brand"
    t.string   "iomodel"
    t.text     "spec"
    t.string   "dimensions"
    t.text     "requirements"
    t.text     "other"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "karaoke_speakers", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "kstype"
    t.string   "soldas"
    t.text     "driverunits"
    t.string   "frequencyresponse"
    t.string   "nominalimpedance"
    t.string   "sensitivity"
    t.text     "features"
    t.text     "dimensions"
    t.string   "weight"
    t.text     "other"
    t.string   "warranty"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "keyboard_mouses", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "price"
    t.string   "brand"
    t.string   "productmodel"
    t.string   "producttype"
    t.string   "connection"
    t.string   "warranty"
    t.text     "other"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "laptops", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "series"
    t.string   "brandmodel"
    t.string   "partnumber"
    t.string   "cputype"
    t.string   "cpuspeed"
    t.string   "corename"
    t.string   "turbofrequency"
    t.string   "numberofcores"
    t.string   "cpul3cache"
    t.string   "screensize"
    t.string   "touchscreen"
    t.string   "widescreensupport"
    t.string   "resolution"
    t.string   "lcdfeatures"
    t.string   "os"
    t.string   "gpuvpu"
    t.string   "videomemory"
    t.string   "graphictype"
    t.string   "hdd"
    t.string   "hddrpm"
    t.string   "memory"
    t.string   "memoryspeed"
    t.string   "memoryspec"
    t.string   "memoryslottotal"
    t.string   "memoryslotavailable"
    t.string   "maxmemorysupported"
    t.string   "opticaldrivetype"
    t.string   "wlan"
    t.string   "bluetooth"
    t.string   "usbports"
    t.string   "videoports"
    t.string   "hdmi"
    t.string   "audioports"
    t.string   "webcam"
    t.string   "cardreader"
    t.string   "battery"
    t.string   "batterylife"
    t.string   "color"
    t.string   "dimensions"
    t.string   "weight"
    t.text     "warranty"
    t.text     "other"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "led_signs", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "signmodel"
    t.string   "colors"
    t.string   "volts"
    t.string   "datatransfer"
    t.text     "features"
    t.text     "dimensions"
    t.string   "weight"
    t.text     "other"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "memories", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "price"
    t.string   "memorytype"
    t.string   "brand"
    t.string   "mpn"
    t.string   "manufacturer"
    t.string   "website"
    t.text     "marketinginfo"
    t.string   "productline"
    t.string   "producttype"
    t.string   "errorchecking"
    t.string   "memorysize"
    t.string   "memoryspeed"
    t.string   "memorystandard"
    t.string   "memorytech"
    t.string   "signalprocessing"
    t.string   "formfactor"
    t.string   "length"
    t.string   "pins"
    t.string   "width"
    t.string   "caslatency"
    t.string   "voltage"
    t.string   "modules"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "modems", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "modemtype"
    t.text     "interface"
    t.string   "standards"
    t.text     "features"
    t.text     "package"
    t.text     "other"
    t.text     "warranty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "motherboards", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "price"
    t.string   "motherboardtype"
    t.string   "formfactor"
    t.text     "cpu"
    t.string   "chipset"
    t.text     "memory"
    t.text     "graphic"
    t.string   "multigpu"
    t.text     "expansion"
    t.text     "storage"
    t.text     "lan"
    t.text     "audio"
    t.text     "usb"
    t.text     "workstation"
    t.text     "special"
    t.text     "backio"
    t.text     "internalio"
    t.text     "accessories"
    t.text     "bios"
    t.string   "manageability"
    t.string   "supportdisc"
    t.text     "os"
    t.text     "other"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "names", force: :cascade do |t|
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "cameratype"
    t.string   "connectiontype"
    t.string   "wirelessstandard"
    t.string   "wirelessdatarate"
    t.string   "ports"
    t.text     "networkingprotocol"
    t.string   "zoom"
    t.string   "sensor"
    t.string   "maxres"
    t.string   "videocaptureres"
    t.string   "framerate"
    t.string   "lenstype"
    t.string   "security"
    t.string   "os"
    t.text     "features"
    t.text     "warranty"
    t.text     "other"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "network_adapters", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "standards"
    t.string   "wirelessdatarates"
    t.string   "security"
    t.string   "interface"
    t.string   "frequencyband"
    t.string   "channels"
    t.string   "modulation"
    t.text     "transmittedpower"
    t.string   "antenna"
    t.string   "color"
    t.text     "systemrequirements"
    t.text     "features"
    t.string   "dimenstions"
    t.string   "weight"
    t.string   "temperature"
    t.string   "humidity"
    t.text     "package"
    t.text     "other"
    t.text     "warranty"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "network_cameras", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "cameratype"
    t.string   "connectiontype"
    t.string   "wirelessstandard"
    t.string   "wirelessdatarate"
    t.string   "ports"
    t.text     "networkingprotocol"
    t.string   "zoom"
    t.string   "sensor"
    t.string   "maxres"
    t.string   "videocaptureres"
    t.string   "framerate"
    t.string   "lenstype"
    t.string   "security"
    t.string   "os"
    t.text     "features"
    t.text     "warranty"
    t.text     "other"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "network_dvrs", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.text     "supportedprotocols"
    t.string   "networkinterface"
    t.string   "videoinput"
    t.string   "videooutput"
    t.string   "framerate"
    t.string   "compressionformat"
    t.string   "storagecapacity"
    t.text     "powersupply"
    t.string   "temerature"
    t.string   "humidity"
    t.string   "dimensions"
    t.string   "weight"
    t.text     "warranty"
    t.text     "other"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "network_switches", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "series"
    t.string   "brandmodel"
    t.string   "format"
    t.text     "standards"
    t.string   "primaryports"
    t.string   "primaryportspeed"
    t.string   "layer"
    t.string   "power"
    t.text     "features"
    t.string   "dimensions"
    t.string   "weight"
    t.text     "package"
    t.text     "other"
    t.text     "warranty"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "networking_accessories", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "accessorytype"
    t.text     "features"
    t.string   "color"
    t.text     "dimensions"
    t.text     "details"
    t.text     "other"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "operating_systems", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.text     "disclaimer"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "bitversion"
    t.string   "version"
    t.text     "systemrequirements"
    t.string   "packaging"
    t.text     "features"
    t.text     "warranty"
    t.text     "other"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "other_media", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "mediatype"
    t.string   "capacity"
    t.string   "maxspeedsupported"
    t.string   "quantity"
    t.text     "features"
    t.string   "packaging"
    t.text     "other"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "pc_accessories", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "casetype"
    t.string   "color"
    t.string   "fitmostscreensize"
    t.string   "capacity"
    t.text     "features"
    t.string   "dimensions"
    t.string   "weight"
    t.text     "warranty"
    t.text     "other"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "phone_accessories", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "accessorymodel"
    t.string   "accessorytype"
    t.text     "compatiblilty"
    t.text     "features"
    t.text     "dimensions"
    t.text     "other"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "power_protections", force: :cascade do |t|
    t.string   "name"
    t.string   "pptype"
    t.string   "price"
    t.string   "code"
    t.text     "general"
    t.text     "technical"
    t.text     "battery"
    t.text     "power"
    t.text     "physical"
    t.string   "warranty"
    t.text     "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "power_supplies", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "model"
    t.string   "series"
    t.string   "powertype"
    t.string   "maxpower"
    t.string   "fans"
    t.string   "pfc"
    t.string   "mainconnector"
    t.string   "twelvevrails"
    t.string   "pci"
    t.string   "sata"
    t.string   "efficiency"
    t.string   "voltageprotection"
    t.string   "inputvoltage"
    t.string   "inputfrequency"
    t.string   "inputcurrent"
    t.string   "output"
    t.string   "dimensions"
    t.text     "features"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "powerline_adapters", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "standards"
    t.string   "encryption"
    t.string   "ports"
    t.string   "led"
    t.string   "certifications"
    t.string   "powerlinespeeds"
    t.string   "connectiontype"
    t.string   "connectionspeeds"
    t.string   "kittype"
    t.string   "systemrequirements"
    t.string   "temperature"
    t.string   "humidity"
    t.text     "features"
    t.string   "dimensions"
    t.string   "weight"
    t.text     "other"
    t.text     "warranty"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "printers", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "model"
    t.string   "printertype"
    t.string   "printtechnology"
    t.string   "outputtype"
    t.string   "resolution"
    t.string   "blackspeed"
    t.string   "colorspeed"
    t.string   "connectivity"
    t.string   "duplex"
    t.string   "maxdutycycle"
    t.string   "inputcapacity"
    t.string   "mediasize"
    t.string   "processor"
    t.string   "memory"
    t.string   "function"
    t.string   "copy"
    t.string   "fax"
    t.string   "capability"
    t.string   "scanner"
    t.string   "scanresolution"
    t.string   "autodocumentfeeder"
    t.text     "powerconsumption"
    t.string   "dimensions"
    t.string   "weight"
    t.string   "cartridges"
    t.text     "warranty"
    t.text     "other"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "routers", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "standards"
    t.string   "devicemanagement"
    t.string   "security"
    t.string   "wpawpa2"
    t.string   "wanports"
    t.string   "lanports"
    t.string   "led"
    t.string   "buttons"
    t.string   "wirelessdatarates"
    t.string   "frequencyband"
    t.string   "antenna"
    t.string   "channels"
    t.string   "transmittedpower"
    t.string   "interface"
    t.string   "poweradapter"
    t.string   "wirelessadapterincluded"
    t.text     "systemrequirements"
    t.string   "dimensions"
    t.string   "weight"
    t.text     "temperature"
    t.string   "humidity"
    t.text     "features"
    t.text     "package"
    t.text     "warranty"
    t.text     "other"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "securities", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "securitytype"
    t.text     "systemrequirements"
    t.text     "features"
    t.text     "warranty"
    t.text     "other"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "security_cameras", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "color"
    t.string   "securitycameratype"
    t.string   "cameratype"
    t.string   "wirelessdatarate"
    t.string   "sensor"
    t.string   "maxres"
    t.string   "videocaptureres"
    t.string   "lenstype"
    t.string   "shuttercontrol"
    t.string   "nightvision"
    t.text     "features"
    t.text     "package"
    t.text     "warranty"
    t.text     "other"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "servers", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "series"
    t.string   "brandmodel"
    t.string   "servertype"
    t.string   "cputype"
    t.string   "cpusocket"
    t.string   "numberofcpucores"
    t.string   "cachememory"
    t.string   "installedmemorysize"
    t.string   "memorytype"
    t.string   "maxmemorycapacity"
    t.text     "memoryfeatures"
    t.string   "numberofmemoryslots"
    t.string   "harddrive"
    t.string   "raidlevel"
    t.string   "mediadrives"
    t.string   "expansionslot"
    t.string   "expansionbays"
    t.string   "os"
    t.string   "powercharacteristics"
    t.string   "weight"
    t.text     "warranty"
    t.text     "other"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "sound_cards", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "model"
    t.string   "chipset"
    t.string   "channels"
    t.string   "samplerate"
    t.string   "digitalaudio"
    t.string   "snr"
    t.string   "linein"
    t.string   "lineout"
    t.string   "spdif"
    t.string   "mic"
    t.string   "auxport"
    t.string   "otherport"
    t.string   "interface"
    t.string   "os"
    t.text     "systemrequirements"
    t.text     "features"
    t.string   "dimension"
    t.string   "weight"
    t.text     "packagecontents"
    t.text     "plug"
    t.text     "other"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "speakers", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "speakertype"
    t.string   "speakerconfig"
    t.string   "power"
    t.string   "frequency"
    t.text     "systemrequirements"
    t.text     "dimensions"
    t.string   "weight"
    t.text     "features"
    t.text     "packagecontents"
    t.string   "plug"
    t.text     "warranty"
    t.text     "other"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "surveillance_cables", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "cat"
    t.string   "length"
    t.string   "color"
    t.string   "shielded"
    t.text     "features"
    t.text     "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surveillance_power_supplies", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "supplytype"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "input"
    t.string   "output"
    t.string   "cordlength"
    t.text     "dimensions"
    t.text     "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tablets", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "os"
    t.string   "cputype"
    t.string   "cpuspeed"
    t.string   "screensize"
    t.string   "touchscreen"
    t.string   "displaytype"
    t.string   "lcdfeatures"
    t.string   "resolution"
    t.string   "frontcamera"
    t.string   "rearcamera"
    t.string   "gpuvpu"
    t.string   "videomemory"
    t.string   "builtinstorage"
    t.string   "cardreader"
    t.string   "memory"
    t.string   "wlan"
    t.string   "bluetooth"
    t.string   "usb"
    t.string   "hdmi"
    t.string   "audioports"
    t.string   "audio"
    t.string   "battery"
    t.string   "service"
    t.string   "funcion"
    t.string   "dimensions"
    t.string   "weight"
    t.text     "warranty"
    t.text     "other"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "tools", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "price"
    t.string   "brand"
    t.string   "model"
    t.string   "tooltype"
    t.text     "details"
    t.text     "features"
    t.text     "warranty"
    t.text     "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tv_mounts", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "tvsizecapacity"
    t.string   "tvweightcapacity"
    t.string   "vesacompatible"
    t.text     "features"
    t.string   "dimensions"
    t.string   "weight"
    t.text     "other"
    t.text     "warranty"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "tv_tuners", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "model"
    t.string   "tunertype"
    t.string   "tvtuner"
    t.string   "tvstandards"
    t.string   "remotecontrol"
    t.string   "videoencoding"
    t.string   "tunerinterface"
    t.string   "lowprofileready"
    t.string   "fmtuner"
    t.string   "videoformat"
    t.text     "portsin"
    t.text     "systemrequirments"
    t.string   "processor"
    t.string   "graphicscard"
    t.string   "availableslot"
    t.text     "os"
    t.text     "features"
    t.text     "packagecontent"
    t.text     "other"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "tvs", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "tvmodel"
    t.string   "screensize"
    t.string   "maxres"
    t.string   "aspectratio"
    t.string   "displaycolor"
    t.string   "brightness"
    t.string   "contrastratio"
    t.string   "response"
    t.string   "refreshrate"
    t.text     "video"
    t.string   "tuner"
    t.text     "audio"
    t.string   "hdmi"
    t.string   "usb"
    t.string   "digiatlaudio"
    t.string   "componentvideo"
    t.text     "otherconnectors"
    t.text     "power"
    t.text     "mount"
    t.text     "features"
    t.text     "dimension"
    t.string   "weight"
    t.text     "other"
    t.text     "warranty"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "video_cards", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "videocardtype"
    t.string   "brand"
    t.string   "cardmodel"
    t.string   "interface"
    t.string   "chipsetmanufacturer"
    t.string   "gpu"
    t.text     "coreclock"
    t.text     "boostclock"
    t.text     "cudacores"
    t.string   "memoryclock"
    t.string   "memorysize"
    t.string   "memoryinterface"
    t.string   "memorytype"
    t.string   "directx"
    t.string   "opengl"
    t.string   "hdmiport"
    t.string   "multimonitorsupport"
    t.string   "displayport"
    t.text     "dvi"
    t.string   "ramdac"
    t.string   "maxres"
    t.string   "threedvisionready"
    t.string   "slisupport"
    t.string   "virtualrealityready"
    t.string   "cooler"
    t.text     "systemrequirements"
    t.string   "powerconnector"
    t.string   "duallinkdvi"
    t.string   "hdcpready"
    t.text     "features"
    t.string   "dimensions"
    t.string   "slotwidth"
    t.text     "package"
    t.text     "warranty"
    t.text     "other"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "webcams", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "webcammodel"
    t.string   "partnumber"
    t.string   "color"
    t.string   "interface"
    t.string   "maximageres"
    t.string   "videocaptureres"
    t.string   "os"
    t.text     "features"
    t.text     "package"
    t.text     "other"
    t.text     "warranty"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "wireless_adapters", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.text     "standards"
    t.string   "wirelessdatarates"
    t.text     "security"
    t.string   "interface"
    t.string   "frequencyband"
    t.text     "channel"
    t.text     "modulation"
    t.text     "transmittedpower"
    t.string   "antenna"
    t.string   "color"
    t.text     "systemrequirements"
    t.text     "features"
    t.string   "dimensions"
    t.string   "weight"
    t.string   "temperature"
    t.string   "humidity"
    t.text     "package"
    t.text     "warranty"
    t.text     "other"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "wireless_routers", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "code"
    t.string   "brand"
    t.string   "brandmodel"
    t.string   "standards"
    t.string   "devicemanagement"
    t.text     "secrurity"
    t.string   "wpawpa2"
    t.string   "wanports"
    t.string   "lanports"
    t.string   "led"
    t.string   "buttons"
    t.string   "wirelessdatarates"
    t.string   "frequencyband"
    t.string   "antenna"
    t.string   "channels"
    t.string   "transmittedpower"
    t.string   "interface"
    t.string   "poweradapter"
    t.string   "wirelessadapterincuded"
    t.text     "systemrequirements"
    t.string   "dimensions"
    t.string   "weight"
    t.text     "temperature"
    t.string   "humidity"
    t.text     "features"
    t.text     "package"
    t.text     "warranty"
    t.text     "other"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
