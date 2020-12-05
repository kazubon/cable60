class SamplesController < ApplicationController
  def show
  end

  def update
    SampleJob.perform_later(cookies.signed[:cable_code])
    render json: {}
  end
end
