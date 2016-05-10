class SoundCardsController < ApplicationController
  before_action :set_sound_card, only: [:show, :edit, :update, :destroy]

  # GET /sound_cards
  # GET /sound_cards.json
  def index
    @sound_cards = SoundCard.all
  end

  # GET /sound_cards/1
  # GET /sound_cards/1.json
  def show
  end

  # GET /sound_cards/new
  def new
    @sound_card = SoundCard.new
  end

  # GET /sound_cards/1/edit
  def edit
  end

  # POST /sound_cards
  # POST /sound_cards.json
  def create
    @sound_card = SoundCard.new(sound_card_params)

    respond_to do |format|
      if @sound_card.save
        format.html { redirect_to @sound_card, notice: 'Sound card was successfully created.' }
        format.json { render :show, status: :created, location: @sound_card }
      else
        format.html { render :new }
        format.json { render json: @sound_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sound_cards/1
  # PATCH/PUT /sound_cards/1.json
  def update
    respond_to do |format|
      if @sound_card.update(sound_card_params)
        format.html { redirect_to @sound_card, notice: 'Sound card was successfully updated.' }
        format.json { render :show, status: :ok, location: @sound_card }
      else
        format.html { render :edit }
        format.json { render json: @sound_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sound_cards/1
  # DELETE /sound_cards/1.json
  def destroy
    @sound_card.destroy
    respond_to do |format|
      format.html { redirect_to sound_cards_url, notice: 'Sound card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sound_card
      @sound_card = SoundCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sound_card_params
      params.require(:sound_card).permit(:name, :price, :code, :brand, :model, :chipset, :channels, :samplerate, :digitalaudio, :snr, :linein, :lineout, :spdif, :mic, :auxport, :otherport, :interface, :os, :systemrequirements, :features, :dimension, :weight, :packagecontents, :plug, :other)
    end
end
