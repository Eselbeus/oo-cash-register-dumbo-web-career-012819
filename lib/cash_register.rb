require 'pry'

class CashRegister 
  attr_accessor :total, :discount
  
  @@items = []
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    # binding.pry
    
  end
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
  end
  
  def apply_discount 
    if @discount != 0
      @total -= (@total * @discount * 0.01)
      @total = @total.round
    else
      return "There is no discount to apply."
    end
  end
  
  # def self.items
  #   @@items << 
    
  # end
  
end
