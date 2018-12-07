
class LandingController < ApplicationController
  attr_accessor :board, :row, :column

  NUMBERS = [1, 2, 3, 4, 5, 6, 7, 8, 9]

  def index
    @board = default_board
    @row = make_row
  end

  private

  def make_row
    row = []
    until row.size == 9 do
      random = NUMBERS.sample
      row << random unless row.include? random
    end
    row
  end

  def default_board
    Array.new(9) { Array.new(9) { "I WANT YOU TO BE A CELL" } }
  end
end
