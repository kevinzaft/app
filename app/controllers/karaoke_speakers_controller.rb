class KaraokeSpeakersController < ApplicationController
  before_action :set_karaoke_speaker, only: [:show, :edit, :update, :destroy]

  # GET /karaoke_speakers
  # GET /karaoke_speakers.json
  def index
    @karaoke_speakers = KaraokeSpeaker.all
  end

  # GET /karaoke_speakers/1
  # GET /karaoke_speakers/1.json
  def show
  end

  # GET /karaoke_speakers/new
  def new
    @karaoke_speaker = KaraokeSpeaker.new
  end

  # GET /karaoke_speakers/1/edit
  def edit
  end

  # POST /karaoke_speakers
  # POST /karaoke_speakers.json
  def create
    @karaoke_speaker = KaraokeSpeaker.new(karaoke_speaker_params)

    respond_to do |format|
      if @karaoke_speaker.save
        format.html { redirect_to @karaoke_speaker, notice: 'Karaoke speaker was successfully created.' }
        format.json { render :show, status: :created, location: @karaoke_speaker }
      else
        format.html { render :new }
        format.json { render json: @karaoke_speaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /karaoke_speakers/1
  # PATCH/PUT /karaoke_speakers/1.json
  def update
    respond_to do |format|
      if @karaoke_speaker.update(karaoke_speaker_params)
        format.html { redirect_to @karaoke_speaker, notice: 'Karaoke speaker was successfully updated.' }
        format.json { render :show, status: :ok, location: @karaoke_speaker }
      else
        format.html { render :edit }
        format.json { render json: @karaoke_speaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /karaoke_speakers/1
  # DELETE /karaoke_speakers/1.json
  def destroy
    @karaoke_speaker.destroy
    respond_to do |format|
      format.html { redirect_to karaoke_speakers_url, notice: 'Karaoke speaker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_karaoke_speaker
      @karaoke_speaker = KaraokeSpeaker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def karaoke_speaker_params
      params.require(:karaoke_speaker).permit(:name, :price, :code, :brand, :brandmodel, :kstype, :soldas, :driverunits, :frequencyresponse, :nominalimpedance, :sensitivity, :features, :dimensions, :weight, :other, :warranty)
    end
end
