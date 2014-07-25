class MiropostsController < ApplicationController
  before_action :set_miropost, only: [:show, :edit, :update, :destroy]

  # GET /miroposts
  # GET /miroposts.json
  def index
    @miroposts = Miropost.all
  end

  # GET /miroposts/1
  # GET /miroposts/1.json
  def show
  end

  # GET /miroposts/new
  def new
    @miropost = Miropost.new
  end

  # GET /miroposts/1/edit
  def edit
  end

  # POST /miroposts
  # POST /miroposts.json
  def create
    @miropost = Miropost.new(miropost_params)

    respond_to do |format|
      if @miropost.save
        format.html { redirect_to @miropost, notice: 'Miropost was successfully created.' }
        format.json { render action: 'show', status: :created, location: @miropost }
      else
        format.html { render action: 'new' }
        format.json { render json: @miropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /miroposts/1
  # PATCH/PUT /miroposts/1.json
  def update
    respond_to do |format|
      if @miropost.update(miropost_params)
        format.html { redirect_to @miropost, notice: 'Miropost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @miropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /miroposts/1
  # DELETE /miroposts/1.json
  def destroy
    @miropost.destroy
    respond_to do |format|
      format.html { redirect_to miroposts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_miropost
      @miropost = Miropost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def miropost_params
      params.require(:miropost).permit(:content, :user_id)
    end
end
