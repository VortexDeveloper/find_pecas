class NewslletersController < ApplicationController
  before_action :set_newslleter, only: [:show, :edit, :update, :destroy]

  # GET /newslleters
  # GET /newslleters.json
  def index
    @newslleters = Newslleter.all
  end

  # GET /newslleters/1
  # GET /newslleters/1.json
  def show
  end

  # GET /newslleters/new
  def new
    @newslleter = Newslleter.new
  end

  # GET /newslleters/1/edit
  def edit
  end

  # POST /newslleters
  # POST /newslleters.json
  def create
    @newslleter = Newslleter.new(newslleter_params)

    respond_to do |format|
      if @newslleter.save
        format.html { redirect_to @newslleter, notice: 'Newslleter was successfully created.' }
        format.json { render :show, status: :created, location: @newslleter }
      else
        format.html { render :new }
        format.json { render json: @newslleter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newslleters/1
  # PATCH/PUT /newslleters/1.json
  def update
    respond_to do |format|
      if @newslleter.update(newslleter_params)
        format.html { redirect_to @newslleter, notice: 'Newslleter was successfully updated.' }
        format.json { render :show, status: :ok, location: @newslleter }
      else
        format.html { render :edit }
        format.json { render json: @newslleter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newslleters/1
  # DELETE /newslleters/1.json
  def destroy
    @newslleter.destroy
    respond_to do |format|
      format.html { redirect_to newslleters_url, notice: 'Newslleter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newslleter
      @newslleter = Newslleter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newslleter_params
      params.require(:newslleter).permit(
        :name,
        :email
      )
    end
end
