class SuggestbuylistsController < ApplicationController
	before_action :menu
  def index
  	@products = Product.all

  	@datos = Array.new

  	@products.each do |p|

  		inputs = p.stocks.where(reason_id: 1)
  		outputs = p.stocks.where(reason_id: 2)

  		@totalInputs = 0
  		inputs.each do |i|
  			@totalInputs = @totalInputs + i.quantity
  		end

  		@totalOutputs = 0
  		outputs.each do |o|
  			@totalOutputs = @totalOutputs + o.quantity
  		end


  		total = (p.stock + @totalInputs) - @totalOutputs

  		@datos.push('id'=>p.id, 'name' => p.name, 'stock' => total, 'minimum' => p.minimum ) 



  	end
  end

  private
  	def menu
  		setMenu('suggest')
  	end
end
