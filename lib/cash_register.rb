require 'pry'

class CashRegister 
  attr_accessor :total, :discount, :quantity, :items
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    @title = title
    @quantity = quantity
    @quantity.times do 
      @items << @title
    end
    
  end
  
  def apply_discount 
    if @discount != 0
      @total -= (@total * @discount * 0.01)
      "After the discount, the total comes to $#{@total.round}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    
    @items
  end
  
  def void_last_transaction 
    last = @items.pop
    binding.pry
    loop do 
      if last == @items[-1]
        @items.pop
      else
        break
      end
    end
  end
  
end
