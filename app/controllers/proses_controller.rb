class ProsesController < ApplicationController
  # GET /proses
  # GET /proses.json
  def index
    @proses = Prose.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @proses }
    end
  end

  # GET /proses/1
  # GET /proses/1.json
  def show
    @prose = Prose.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prose }
    end
  end

  # GET /proses/new
  # GET /proses/new.json
  def new
    @prose = Prose.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prose }
    end
  end

  # GET /proses/1/edit
  def edit
    @prose = Prose.find(params[:id])
  end

  # POST /proses
  # POST /proses.json
  def create
    @prose = Prose.new(params[:prose])

    respond_to do |format|
      if @prose.save
        format.html { redirect_to @prose, notice: 'Prose was successfully created.' }
        format.json { render json: @prose, status: :created, location: @prose }
      else
        format.html { render action: "new" }
        format.json { render json: @prose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /proses/1
  # PUT /proses/1.json
  def update
    @prose = Prose.find(params[:id])

    respond_to do |format|
      if @prose.update_attributes(params[:prose])
        format.html { redirect_to @prose, notice: 'Prose was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @prose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proses/1
  # DELETE /proses/1.json
  def destroy
    @prose = Prose.find(params[:id])
    @prose.destroy

    respond_to do |format|
      format.html { redirect_to proses_url }
      format.json { head :ok }
    end
  end
end
