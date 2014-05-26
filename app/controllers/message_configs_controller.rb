class MessageConfigsController < ApplicationController
  before_action :set_message_config, only: [:show, :edit, :update, :destroy]

  # GET /message_configs
  # GET /message_configs.json
  def index
    @message_configs = MessageConfig.all
  end

  # GET /message_configs/1
  # GET /message_configs/1.json
  def show
  end

  # GET /message_configs/new
  def new
    @message_config = MessageConfig.new
  end

  # GET /message_configs/1/edit
  def edit
  end

  # POST /message_configs
  # POST /message_configs.json
  def create
    @message_config = MessageConfig.new(message_config_params)

    respond_to do |format|
      if @message_config.save
        format.html { redirect_to @message_config, notice: 'Message config was successfully created.' }
        format.json { render :show, status: :created, location: @message_config }
      else
        format.html { render :new }
        format.json { render json: @message_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /message_configs/1
  # PATCH/PUT /message_configs/1.json
  def update
    respond_to do |format|
      if @message_config.update(message_config_params)
        format.html { redirect_to @message_config, notice: 'Message config was successfully updated.' }
        format.json { render :show, status: :ok, location: @message_config }
      else
        format.html { render :edit }
        format.json { render json: @message_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /message_configs/1
  # DELETE /message_configs/1.json
  def destroy
    @message_config.destroy
    respond_to do |format|
      format.html { redirect_to message_configs_url, notice: 'Message config was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message_config
      @message_config = MessageConfig.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_config_params
      params.require(:message_config).permit(:group, :biz_type, :name, :desc)
    end
end
