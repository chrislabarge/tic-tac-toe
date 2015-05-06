row_1 = [1,2,3]
row_2 = [4,5,6]
row_3 = [7,8,9]

@board = [row_1, row_2, row_3]




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
#puts board[row_1.index(8)]					 	