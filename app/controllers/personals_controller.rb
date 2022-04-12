# frozen_string_literal: true

class PersonalsController < ApplicationController
  before_action :set_personal, only: %i[show update destroy]

  # GET /personals
  def index
    @personals = Personal.all

    render
  end

  # GET /personals/1
  def show
    render
  end

  # POST /personals
  # def create
  #   @personal = Personal.new(personal_params)

  #   if @personal.save
  #     render json: @personal, status: :created, location: @personal
  #   else
  #     render json: @personal.errors, status: :unprocessable_entity
  #   end
  # end

  # # PATCH/PUT /personals/1
  # def update
  #   if @personal.update(personal_params)
  #     render json: @personal
  #   else
  #     render json: @personal.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /personals/1
  # def destroy
  #   @personal.destroy
  # end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_personal
    @personal = Personal.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  # def personal_params
  #   params.fetch(:personal, {})
  # end
end
