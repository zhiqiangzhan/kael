class TemplateStrategiesController < ApplicationController
  before_action :find_message_config
  before_action :set_template_strategy, only: [:show, :edit, :update, :destroy]

  # GET /template_strategies
  # GET /template_strategies.json
  def index
    @template_strategies = @message_config.template_strategies
  end

  # GET /template_strategies/1
  # GET /template_strategies/1.json
  def show
    if request.xhr?
      render '_show', layout: false;
    end
  end

  # GET /template_strategies/new
  def new
    @template_strategy = @message_config.template_strategies.new
    if request.xhr?
      render 'partials/_strategy_form', layout: false;
    end
  end

  # GET /template_strategies/1/edit
  def edit
    if request.xhr?
      render 'partials/_strategy_form', layout: false;
    end
  end

  # POST /template_strategies
  # POST /template_strategies.json
  def create
    @template_strategy = @message_config.template_strategies.new(template_strategy_params)

    respond_to do |format|
      if @template_strategy.save
        format.html { redirect_to message_config_template_strategy_url(@message_config, @template_strategy), notice: 'Template strategy was successfully created.' }
        format.json { render :show, status: :created, location: message_config_template_strategy_url(@message_config, @template_strategy) }
      else
        format.html { render :new }
        format.json { render json: @template_strategy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /template_strategies/1
  # PATCH/PUT /template_strategies/1.json
  def update
    respond_to do |format|
      if @template_strategy.update(template_strategy_params)
        format.html { redirect_to message_config_template_strategy_url(@message_config, @template_strategy), notice: 'Template strategy was successfully updated.' }
        format.json { render :show, status: :ok, location: message_config_template_strategy_url(@message_config, @template_strategy) }
      else
        format.html { render :edit }
        format.json { render json: @template_strategy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /template_strategies/1
  # DELETE /template_strategies/1.json
  def destroy
    @template_strategy.destroy
    respond_to do |format|
      format.html { redirect_to message_config_template_strategies_url, notice: 'Template strategy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template_strategy
      @template_strategy = @message_config.template_strategies.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def template_strategy_params
      params.require(:template_strategy).permit(:message_config_id, :strategy_type, :language, :script)
    end

    def find_message_config()
      @message_config = find_resource_by_nested_path
    end
end
