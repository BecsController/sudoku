
class LandingController < ApplicationController
  attr_accessor :board

  def index
    @board = default_grid
  end

  private

  def default_grid
    Array.new(9) { Array.new(9) { "X" } }
  end
end
