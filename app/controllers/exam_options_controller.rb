class ExamOptionsController < ApplicationController
  # GET /exam_options
  # GET /exam_options.json
  def index
    @exam_options = ExamOption.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exam_options }
    end
  end

  # GET /exam_options/1
  # GET /exam_options/1.json
  def show
    @exam_option = ExamOption.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exam_option }
    end
  end

  # GET /exam_options/new
  # GET /exam_options/new.json
  def new
    @exam_option = ExamOption.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exam_option }
    end
  end

  # GET /exam_options/1/edit
  def edit
    @exam_option = ExamOption.find(params[:id])
  end

  # POST /exam_options
  # POST /exam_options.json
  def create
    @exam_option = ExamOption.new(params[:exam_option])

    respond_to do |format|
      if @exam_option.save
        format.html { redirect_to @exam_option, notice: 'Exam option was successfully created.' }
        format.json { render json: @exam_option, status: :created, location: @exam_option }
      else
        format.html { render action: "new" }
        format.json { render json: @exam_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exam_options/1
  # PUT /exam_options/1.json
  def update
    @exam_option = ExamOption.find(params[:id])

    respond_to do |format|
      if @exam_option.update_attributes(params[:exam_option])
        format.html { redirect_to @exam_option, notice: 'Exam option was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exam_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exam_options/1
  # DELETE /exam_options/1.json
  def destroy
    @exam_option = ExamOption.find(params[:id])
    @exam_option.destroy

    respond_to do |format|
      format.html { redirect_to exam_options_url }
      format.json { head :no_content }
    end
  end
end
