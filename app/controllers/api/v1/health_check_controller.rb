# frozen_string_literal: true

class Api::V1::HealthCheckController < ApplicationController
  rescue_from(Exception) { head :internal_server_error }

  def show
    head :ok
  end
end
