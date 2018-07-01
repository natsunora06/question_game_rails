class AnswerHistoriesController < ApplicationController
  before_action :set_answer_history, only: [:show, :edit, :update, :destroy]

  # GET /answer_histories
  # GET /answer_histories.json
  def index
    @answer_histories = AnswerHistory.all
    @answer_history = AnswerHistory.new
  end

  # GET /answer_histories/1
  # GET /answer_histories/1.json
  def show
  end

  # GET /answer_histories/new
  def new
    @answer_history = AnswerHistory.new
  end

  # GET /answer_histories/1/edit
  def edit
  end

  # POST /answer_histories
  # POST /answer_histories.json
  def create
    @answer_history = AnswerHistory.new(answer_history_params)

    respond_to do |format|
      if @answer_history.save
        format.html { redirect_to @answer_history, notice: 'Answer history was successfully created.' }
        format.json { render :show, status: :created, location: @answer_history }
      else
        format.html { render :new }
        format.json { render json: @answer_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answer_histories/1
  # PATCH/PUT /answer_histories/1.json
  def update
    respond_to do |format|
      if @answer_history.update(answer_history_params)
        format.html { redirect_to @answer_history, notice: 'Answer history was successfully updated.' }
        format.json { render :show, status: :ok, location: @answer_history }
      else
        format.html { render :edit }
        format.json { render json: @answer_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answer_histories/1
  # DELETE /answer_histories/1.json
  def destroy
    @answer_history.destroy
    respond_to do |format|
      format.html { redirect_to answer_histories_url, notice: 'Answer history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer_history
      @answer_history = AnswerHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_history_params
      params.require(:answer_history).permit(:question_id, :answer_id)
    end

end
