class InstrumentsController < ApplicationController
  before_action :find_instrument, only: :show

  def show
  end

  def index
    @instruments = Instrument.all
  end

  private

  def find_instrument
    @instrument = Instrument.find(params[:id])
  end
end
