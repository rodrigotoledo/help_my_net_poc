class Api::V1::FixesController < ApplicationController
  before_action :set_fix, only: %i[ show update destroy ]

  # GET /fixes
  def index
    @fixes = Fix.all

    render json: @fixes
  end

  # GET /fixes/1
  def show
    render json: @fix
  end

  # POST /fixes
  def create
    @fix = Fix.new(fix_params)

    if @fix.save
      render json: @fix, status: :created, location: @fix
    else
      render json: @fix.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fixes/1
  def update
    if @fix.update(fix_params)
      render json: @fix
    else
      render json: @fix.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fixes/1
  def destroy
    @fix.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fix
      @fix = Fix.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fix_params
      params.require(:fix).permit(:professional, :user, :description, :address)
    end
end
