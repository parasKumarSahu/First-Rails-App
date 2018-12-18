class GreeterController < ApplicationController
  def hello
  	names = ['Paras', 'Suraj', 'Kumar']
  	@name = names.sample
  	@time = Time.now
  end
  def goodbye
  end	
end
