require_relative '../lib/validator'

describe 'End-to-end test' do

  context 'when the sudoku is valid' do
    context 'and it is complete' do
      def it(row, column, square)

        if row.each { |row| row.uniq && row != 0 && row == Range.new(1,9).to_a}
          column.each { |col| col.uniq && col != 0 && col == Range.new(1,9).to_a }
          square.each { |square| square.uniq && square != 0 && square == Range.new(1,9).to_a }
        end
        end

        end
        end
        it 'returns a string saying so' do
        end
        file = File.read('spec/fixtures/valid_sudoku.rb')

        result = Validator.validate(file)

        expect(result).to eq 'Sudoku is valid.'
      end


    context 'and it is incomplete' do
      def it(i)
        if rows.each do i.uniq && i != 0 && i == Range.new(1,9).to_a
        end
        end
      end
      end
      it 'returns a string saying so' do
        file = File.read('spec/fixtures/valid_incomplete_sudoku.rb')

        result = Validator.validate(file)

        expect(result).to eq 'Sudoku is valid but incomplete.'
      end

  context 'when the sudoku is invalid' do
      def it(i)
      if rows.each do i != i.uniq && i != 0 && i != Range.new(1,9).to_a
      end
      end
      it 'returns a string saying so' do
        file = File.read('spec/fixtures/invalid_sudoku.rb')
        result = Validator.validate(file)

        expect(result).to eq 'Sudoku is invalid.'
      end
    end
  end
