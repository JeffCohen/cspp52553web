class ExamAnswersController < ApplicationController
  # GET /exam_answers
  # GET /exam_answers.json
  def index
    @exam_answers = ExamAnswer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exam_answers }
    end
  end

  # GET /exam_answers/1
  # GET /exam_answers/1.json
  def show
    @exam_answer = ExamAnswer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exam_answer }
    end
  end

  # GET /exam_answers/new
  # GET /exam_answers/new.json
  def new
    @exam_answer = ExamAnswer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exam_answer }
    end
  end

  # GET /exam_answers/1/edit
  def edit
    @exam_answer = ExamAnswer.find(params[:id])
  end

  # POST /exam_answers
  # POST /exam_answers.json
  def create
    @exam_answer = ExamAnswer.new(params[:exam_answer])

    respond_to do |format|
      if @exam_answer.save
        format.js   { head :ok }
        format.html { redirect_to @exam_answer, notice: 'Exam answer was successfully created.' }
        format.json { render json: @exam_answer, status: :created, location: @exam_answer }
      else
        format.html { render action: "new" }
        format.json { render json: @exam_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exam_answers/1
  # PUT /exam_answers/1.json
  def update
    @exam_answer = ExamAnswer.find(params[:id])

    respond_to do |format|
      if @exam_answer.update_attributes(params[:exam_answer])
        format.html { redirect_to @exam_answer, notice: 'Exam answer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exam_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exam_answers/1
  # DELETE /exam_answers/1.json
  def destroy
    @exam_answer = ExamAnswer.find(params[:id])
    @exam_answer.destroy

    respond_to do |format|
      format.html { redirect_to exam_answers_url }
      format.json { head :no_content }
    end
  end
end
