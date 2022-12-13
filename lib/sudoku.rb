# frozen_string_literal: true

class Sudoku
  attr_reader :puzzle_array

  def initialize(puzzle_array)
    @puzzle_array = puzzle_array
  end

  def valid?
    valid_squares? && valid_rows? && valid_columns?
  end

  def complete?
    rows.each do |row|
      return false if row.include? 0
    end
    true
  end

  def rows
    puzzle_array
    Range.new(1,9).to_a
  end

  def columns
    (0..8).map do |col_index|
      rows.map do |row|
        row[col_index]
      end
    end

  def squares
    rows.each_slice(3).map do |rows_square|
        row.each_slice(3)[rows_square]
      end
      (0..2).map do |square_index|
          row.each_slice[square_index]
        end
      end
    end
  end

  def valid_rows?
    valid_arrays?(rows)
  end

  def valid_squares?
    valid_arrays?(squares)
  end

  def valid_columns?
    valid_arrays?(columns)
  end

  def valid_arrays?(arrays)
    arrays.none? do |array|
      repetition?(array)
    end
  end

  def repetition?(array)
    array.uniq.length <  array.length
  end

