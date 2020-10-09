class TopicssesController < ApplicationController
  before_action :set_topicss, only: [:show, :edit, :update, :destroy]

  # GET /topicsses
  # GET /topicsses.json
  def index
    @topicsses = Topicss.all
  end

  # GET /topicsses/1
  # GET /topicsses/1.json
  def show
  end

  # GET /topicsses/new
  def new
    @topicss = Topicss.new
  end

  # GET /topicsses/1/edit
  def edit
  end

  # POST /topicsses
  # POST /topicsses.json
  def create
    @topicss = Topicss.new(topicss_params)

    respond_to do |format|
      if @topicss.save
        format.html { redirect_to @topicss, notice: 'Topicss was successfully created.' }
        format.json { render :show, status: :created, location: @topicss }
      else
        format.html { render :new }
        format.json { render json: @topicss.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topicsses/1
  # PATCH/PUT /topicsses/1.json
  def update
    respond_to do |format|
      if @topicss.update(topicss_params)
        format.html { redirect_to @topicss, notice: 'Topicss was successfully updated.' }
        format.json { render :show, status: :ok, location: @topicss }
      else
        format.html { render :edit }
        format.json { render json: @topicss.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topicsses/1
  # DELETE /topicsses/1.json
  def destroy
    @topicss.destroy
    respond_to do |format|
      format.html { redirect_to topicsses_url, notice: 'Topicss was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topicss
      @topicss = Topicss.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def topicss_params
      params.require(:topicss).permit(:title, :description)
    end
end
