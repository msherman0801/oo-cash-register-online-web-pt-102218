require 'pry'
class CashRegister
  
  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    if discount > 0
      @discount = discount
    end
  end 
  

  def add_item(title, price, quantity=1)
    if quantity > 1
      @total += (price*quantity)
    else
      @total += price 
    end
  end
  
  def apply_discount
    discount = @discount.to_f / 100
    @total = (@total - (@total*discount)).to_i 
    "After the discount, the total comes to #{@total}"
  end
  
  
end