# frozen_string_literal: true

class Statement
  attr_accessor :history

  def initialize
    @history = []
  end



  def print_statement
    rows = []
    @history.each do |statement|
      rows << [statement[:date], statement[:credit], statement[:debit], statement[:balance]]
    end
    table = Terminal::Table.new headings: %w[Date Credit Debit Balance], rows: rows
    puts table
  end

  
end
