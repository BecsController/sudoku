class LandingController < ApplicationController
  attr_accessor :grid

  def index(size = {})
    @board = size.fetch(:grid, default_grid)
  end

  class Cell
    attr_accessor :value
    def initialize(value = "X")
      @value = value
    end
  end

  private

  def default_grid
    Array.new(9) { Array.new(9) { Cell.new } }
  end
end
