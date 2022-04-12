# frozen_string_literal: true

class CoporatesController < ApplicationController
  before_action :set_coporate, only: %i[show update destroy]

  # GET /coporates
  def index
    @coporates = Coporate.all

    render json: @coporates
  end

  # GET /coporates/1
  def show
    render json: @coporate
  end

  # # POST /coporates
  # def create
  #   @coporate = Coporate.new(coporate_params)

  #   if @coporate.save
  #     render json: @coporate, status: :created, location: @coporate
  #   else
  #     render json: @coporate.errors, status: :unprocessable_entity
  #   end
  # end

  # # PATCH/PUT /coporates/1
  # def update
  #   if @coporate.update(coporate_params)
  #     render json: @coporate
  #   else
  #     render json: @coporate.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /coporates/1
  # def destroy
  #   @coporate.destroy
  # end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_coporate
    @coporate = Coporate.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  # def coporate_params
  #   params.fetch(:coporate, {})
  # end
end
