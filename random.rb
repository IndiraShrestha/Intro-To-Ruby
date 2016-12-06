hangman_board = [
                ["|", " ", " ", " ", " ", " ", "|"],
                ["|", " ", " ", " ", " ", " ", "|"],
                ["|", " ", " ", " ", " ", " ", "|"],
                ["|", " ", " ", " ", " ", " ", "|"],
                ["|", " ", " ", " ", " ", " ", "|"],
                ["|", " ", " ", " ", " ", " ", "|"]
              ]

hangman_board.each do |row|
      puts row.join('')
end   

hangman_board[0][3] = "("
hangman_board[0][5] = ")"

hangman_board.each do |row|
      puts row.join('')
end  