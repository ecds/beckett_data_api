# frozen_string_literal: true

class ActivitiesController < ApplicationController
  before_action :set_activity, only: %i[show update destroy]

  # GET /activities
  def index
    @activities = Activity.all

    render
  end

  # GET /activities/1
  def show
    render
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_activity
    @activity = Activity.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  # def activity_params
  #   params.fetch(:activity, {})
  # end
end
