class CashRegister 
  attr_accessor :total
  
  @@items = []
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    
  end
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
  end
  
  def apply_discount 
    if @discount != 0
      @total -= (@total * @discount)
    else
      puts "There is no discount apply."
    end
  end
  
  # def self.items
  #   @@items << 
    
  # end
  
end
