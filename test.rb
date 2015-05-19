require 'test/unit'
require './tic_tac_toe.rb'

class Tc_MyTest < Test::Unit::TestCase

	def setup
		row_1 = [1,2,3]
		row_2 = [4,5,6]
		row_3 = [7,8,9]

		@board = [row_1, row_2, row_3]

	end

	def test_diagonals
		assert_equal [[1,5,9],[3,5,7]], diagonals
	end

	def test_columns
		assert_equal [[1,4,7],[2,5,8],[3,6,9]], columns
	end

	def test_rows
		assert_equal [[1,2,3],[4,5,6],[7,8,9]], rows
	end

	def test_ai_middle
		@board = [['X',2,3],[4,5,6],[7,8,9]]
		ai(1)
		assert_equal [['X',2,3],[4,'O',6],[7,8,9]], @board,
		"AI should choose middle on its turn if player has not"
		
	
	end
	

	def test_ai_rows
		#test ai row top
		@board = [['X','X', 3],[4,'O',6],[7,8,9]]
		ai(2) #this parameter just has to be greater then 1
		assert_equal  [['X','X','O'],[4,'O',6],[7,8,9]], @board,
		"The AI's move to block player winning top row left to right is not working"

		@board = [[1,2,3],[4,'O',6],[7,'X','X']]
		ai(2) #this parameter just has to be greater then 1
		assert_equal  [[1,2,3],[4,'O',6],['O','X','X']], @board, 
		"The AI's should block player winning top row right to left"

		@board = [[1,2,3],[4,'O',6],['X','X',9]]
		ai(2) #this parameter just has to be greater then 1
		assert_equal  [[1,2,3],[4,'O',6],['X','X','O']], @board,
		"The AI should block player winning on bottom row, left to right"

		@board = [[1,2,3],[4,'O',6],[7,'X','X']]
		ai(2) #this parameter just has to be greater then 1
		assert_equal  [[1,2,3],[4,'O',6],['O','X','X']], @board,
		"The AI should block player winning on bottom row, right to left"

	end

	def test_ai_columns

		@board = [[1,2,'X'],[4,'O','X'],[7,8,9]]
		ai(2) #this parameter just has to be greater then 1
		assert_equal  [[1,2,'X'],[4,'O','X'],[7,8,'O']], @board,
		"The AI should block player winnning on right column top to bottom"

		@board = [[1,2,3],[4,'O','X'],[7,8,'X']]
		ai(2) #this parameter just has to be greater then 1
		assert_equal  [[1,2,'O'],[4,'O','X'],[7,8,'X']], @board
		"The AI should block player winnning on right column, bottom to top"

		@board = [['X',2,3],['X','O',6],[7,8,9]]
		ai(2) #this parameter just has to be greater then 1
		assert_equal  [['X',2,3],['X','O',6],['O',8,9]], @board,
		"The AI should block player winnning on left column top to bottom"

		@board = [[1,2,3],['X','O',6],['X',8,9]]
		ai(2) #this parameter just has to be greater then 1
		assert_equal  [['O',2,3],['X','O',6],['X',8,9]], @board,
		"The AI should block player winnning on left column, bottom to top"


	end


	def test_ai_diagonls
		@board = [[1,2,'X'],[4,'X','O'],[7,8,9]]
		ai(2) #this parameter just has to be greater then 1
		assert_equal  [[1,2,'X'],[4,'X','O'],['O',8,9]], @board,
		"The AI should block player winnning on diagonal top right to bottom left"

		@board = [[1,2,3],[4,'X','O'],['X',8,9]]
		ai(2) #this parameter just has to be greater then 1
		assert_equal  [[1,2,'O'],[4,'X','O'],['X',8,9]], @board,
		"The AI should block player winnning on diagonal bottom left to top right"

		@board = [[1,2,3],[4,'X','O'],[7,8,'X']]
		ai(2) #this parameter just has to be greater then 1
		assert_equal  [['O',2,3],[4,'X','O'],[7,8,'X']], @board,
		"The AI should block player winnning on diagonal bottom right to top left"

		@board = [['X',2,3],[4,'X','O'],[7,8,9]]
		ai(2) #this parameter just has to be greater then 1
		assert_equal  [['X',2,3],[4,'X','O'],[7,8,'O']], @board,
		"The AI should block player winnning on diagonal top left to bottom right"
	end


	def test_computer_move
		assert_equal [[1,2,'O'],[4,5,6],[7,8,9]], computer_move(3)
		assert_equal [['O',2,'O'],[4,5,6],[7,8,9]], computer_move(1)
	end



	def test_ai

	
		

		#this test row is not working
		
		
		#this column test is not working
	#	@board = [[1,2,3],[4,'O','X'],[7,8,'X']]
	#	ai(2) #this parameter just has to be greater then 1
	#	assert_equal  [[1,2,'O'],[4,'O','X'],[7,8,'X']], @board



	end

end	