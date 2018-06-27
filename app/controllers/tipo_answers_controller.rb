class TipoAnswersController < ApplicationController
  before_action :set_tipo_answer, only: [:show, :edit, :update, :destroy]

  # GET /tipo_answers
  # GET /tipo_answers.json
  def index
    @tipo_answers = TipoAnswer.all
  end

  # GET /tipo_answers/1
  # GET /tipo_answers/1.json
  def show
  end

  # GET /tipo_answers/new
  def new
    @tipo_answer = TipoAnswer.new
  end

  # GET /tipo_answers/1/edit
  def edit
  end

  # POST /tipo_answers
  # POST /tipo_answers.json
  def create
    @tipo_answer = TipoAnswer.new(tipo_answer_params)

    respond_to do |format|
      if @tipo_answer.save
        format.html { redirect_to @tipo_answer, notice: 'Tipo answer was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_answer }
      else
        format.html { render :new }
        format.json { render json: @tipo_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_answers/1
  # PATCH/PUT /tipo_answers/1.json
  def update
    respond_to do |format|
      if @tipo_answer.update(tipo_answer_params)
        format.html { redirect_to @tipo_answer, notice: 'Tipo answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_answer }
      else
        format.html { render :edit }
        format.json { render json: @tipo_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_answers/1
  # DELETE /tipo_answers/1.json
  def destroy
    @tipo_answer.destroy
    respond_to do |format|
      format.html { redirect_to tipo_answers_url, notice: 'Tipo answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_answer
      @tipo_answer = TipoAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_answer_params
      params.require(:tipo_answer).permit(:topic)
    end
end
