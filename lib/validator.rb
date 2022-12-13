# frozen_string_literal: true

class Validator
  require 'sudoku'
  attr_accessor :puzzle_string

  def initialize(puzzle_string)
    @puzzle_string = puzzle_string
  end

  def self.validate(puzzle_string)
    new(puzzle_string).validate
  end

  def is_valid
    @puzzle_string = Sudoku.new(puzzle_string)
  end

  def validate
    return 'Sudoku is invalid.' unless @puzzle_string.valid?
    return 'Sudoku is valid but incomplete.' unless @puzzle_string.complete?
    'Sudoku is valid and complete.'
    end
end
