class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end 
  def losers 
    @loser_nums = Array.new

    5.times do
      rand_num = rand(1..100)
      @loser_nums.push(rand_num)
    end

    render({ :template => "lottery_stuff/oh_no.html.erb"})
  end

end
