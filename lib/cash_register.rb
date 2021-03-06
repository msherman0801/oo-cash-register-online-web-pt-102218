require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :items


  def initialize(discount=0)
    @total = 0
    @items = []
    if discount > 0
      @discount = discount
    end
  end 
  

  def add_item(title, price, quantity=1)
    @last_price = price
    if quantity > 1
      @total += (price*quantity)
      counter = 0
      while counter < quantity
        counter += 1
        @items << title
      end
    else
      @total += price 
      @items << title
    end
  end
  
  def apply_discount
    original = @total
    discount = @discount.to_f / 100
    @total = (@total - (@total*discount)).to_i 
    if original != @total
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end
  end
  
  def items
    @items 
  end
  
  def void_last_transaction
    @items.delete(@items.last)
    @total -= @last_price
  end
  
end