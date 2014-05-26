class MessageDatasourcesController < ApplicationController
  before_action :set_message_datasource, only: [:show, :edit, :update, :destroy]

  # GET /message_datasources
  # GET /message_datasources.json
  def index
    @message_datasources = MessageDatasource.all
  end

  # GET /message_datasources/1
  # GET /message_datasources/1.json
  def show
  end

  # GET /message_datasources/new
  def new
    @message_datasource = MessageDatasource.new
  end

  # GET /message_datasources/1/edit
  def edit
  end

  # POST /message_datasources
  # POST /message_datasources.json
  def create
    @message_datasource = MessageDatasource.new(message_datasource_params)

    respond_to do |format|
      if @message_datasource.save
        format.html { redirect_to @message_datasource, notice: 'Message datasource was successfully created.' }
        format.json { render :show, status: :created, location: @message_datasource }
      else
        format.html { render :new }
        format.json { render json: @message_datasource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /message_datasources/1
  # PATCH/PUT /message_datasources/1.json
  def update
    respond_to do |format|
      if @message_datasource.update(message_datasource_params)
        format.html { redirect_to @message_datasource, notice: 'Message datasource was successfully updated.' }
        format.json { render :show, status: :ok, location: @message_datasource }
      else
        format.html { render :edit }
        format.json { render json: @message_datasource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /message_datasources/1
  # DELETE /message_datasources/1.json
  def destroy
    @message_datasource.destroy
    respond_to do |format|
      format.html { redirect_to message_datasources_url, notice: 'Message datasource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message_datasource
      @message_datasource = MessageDatasource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_datasource_params
      params.require(:message_datasource).permit(:name, :adapter, :params)
    end
end
