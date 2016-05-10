Rails.application.routes.draw do

  resources :network_dvrs

  resources :security_cameras

  resources :surveillance_power_supplies

  resources :network_cameras

  resources :surveillance_cables

  resources :other_media

  resources :dvd_media

  resources :cd_media

  resources :bluray_storages

  resources :securities

  resources :operating_systems

  resources :home_offices

  resources :tablets

  resources :servers

  resources :laptops

  resources :desktop_computers

  resources :pc_accessories

  resources :wireless_routers

  resources :wireless_adapters

  resources :routers

  resources :powerline_adapters

  resources :network_switches

  resources :modems

  resources :network_adapters

  resources :networking_accessories

  resources :karaoke_speakers

  resources :amplifiers

  resources :tv_mounts

  resources :tvs

  resources :phone_accessories

  resources :led_signs

  resources :home_theater_systems

  resources :cameras

  get "/home" => "pages#home"#don't have one so have to create a home in view folder
  #get "/" => "pages#home"   #below is shortcut version
  root "pages#home"

  get "/about" => "pages#about"

  get "/contact" => "pages#contact"

  #RESTful Resource
  resources :burner_readers
  resources :cables
  resources :computer_cases
  resources :cpus
  resources :flash_digitals
  resources :hard_drives
  resources :headsets
  resources :io_controllers
  resources :keyboard_mouses
  resources :memories
  resources :computer_monitors
  resources :motherboards
  resources :power_protections
  resources :power_supplies
  resources :printers
  resources :car_accessories
  resources :appliances
  resources :android_tvs
  resources :webcams
  resources :video_cards
  resources :tv_tuners
  resources :tools
  resources :speakers
  resources :sound_cards

end
