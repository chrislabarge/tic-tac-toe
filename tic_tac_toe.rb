row_1 = [1,2,3]
row_2 = [4,5,6]
row_3 = [7,8,9]

@board = [row_1, row_2, row_3]



def count(line)
	line
end

def available_spaces # this is a good idea but i dont know if it works
	available = []
	@board.each do |row|
		available << row.select { |x| x != "X" && x != "O" }
	end
	available 
end


def board_layout(row)
	#line = "-----|-----|-----"
	

	row.each_with_index do |n,i| 
 		

 		if i == 0	
 			print "  #{n}  |"
 		elsif i == 1
 			print "  #{n}  |"	
 		else 
 			print "  #{n} "
 		end
 	end
 	#unless counter == 3
 	#puts
 	#puts line
  #end
end

def show_board

	line = "-----|-----|-----"						 	
	
	puts	
	
	@board.each do |row| 
 		board_layout(row)
		puts
 		unless row == @board.last
 			puts line
  	else
  		puts
  	end
  end
end

show_board


def ai(turn)
	
	#if @board [1][1] == 5 && turn == 1 #need to figure this out
 	#	computer_move(5) 
  if @board [1][1] != 5 && turn == 1 
  	computer_move [1,3,7,9].sample
  elsif	@board [1][1] == 5 && turn == 1
		computer_move(5)  
  end

  computer_move(where_is_2) if turn > 1


end


def computer_move(move)
	@board.each do |row| 
		row.collect! do |position|
			if position == move 
					"O"
				else
					position
			end		
		end
	end	
end


def player_move(move)
	@board.each do |row| 
		row.collect! do |position|
			if position == move 
					"X"
				else
					position
			end		
		end
	end	
end

def win?
	win = false
	

  win
end



def where_is_2 #refacter this whole part
		
	where = nil
	r_d_c = [rows, diagonals, columns]
	
	r_d_c.each do |x|
		if where == nil
			x.each do |three|
				if three.count('X') == 2	&& !three.include?('O')
					index = three.index { |x| x.is_a? Integer } 
					where = three[index]
				end	
			end	
		end

	end
	
  where
end


def rows

	@board

end



def columns
	col_1 = []
	col_2 = []
	col_3 = []
	
	@board.each do |row|
		col_1 << row[0]
		col_2 << row[1]
		col_3 << row[2]
	end	

	[col_1,col_2,col_3]

end	



def diagonals #this will just show the diagonals when called, in an array
	diagonal_1 = [@board[0][0],@board[1][1],@board[2][2]]
	diagonal_2 = [@board[0][2],@board[1][1],@board[2][0]]
  
  [diagonal_1,diagonal_2]
end

def dots
	print "Computer's Turn"
	8.times { print '.'; sleep(0.25)}
	puts
end

def play
		turn = 0
	while win? == false do 
		
		puts "Where would you like to go?"
		print ">> "
		move = gets.chomp.to_i
		player_move(move)
		show_board
		turn += 1
		ai(turn)
		dots
		show_board
	end	
	puts "You Lose!!"
end

play

#puts available_spaces

#puts board[row_1.index(8)]					 	

#play


##############################################################################


