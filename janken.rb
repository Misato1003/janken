def janken
    puts "[0]:グー\n[1]:チョキ\n[2]:パー"
    
    player_hand = gets.to_i

    program_hand = rand(3)
    
    if player_hand > 2
         puts "入力された値が無効です"
         puts "------"
         puts "最初はグー、じゃんけん・・・"
         return true
    end

    jankens = ["グー", "チョキ", "パー"]

    puts "あなたの手:#{jankens[player_hand]}, わたしの手:#{jankens[program_hand]}"

    if player_hand == program_hand
      puts "あいこで"
      return true
    elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
      puts "あなたの勝ちです"
      return false
    else
      puts "あなたの負けです"
      return false
    end
end

puts "---------"

#あいこの時にもう一回ジャンケンされる

  next_game = true

  puts "最初はグー、じゃんけん..."

  while next_game do
    next_game = janken
  end
  
  puts "--------"
  
def look_over_there
    puts "あっち向いて・・・・"

    puts "[0]:上\n[1]:下\n[2]:右\n[3]:左"
    player_hand = gets.to_i
    program_hand = rand (4)
    
    if player_hand > 3
         puts "入力された値が無効です"
         puts "------"
    end
  
    face = ["上","下","右","左"]
    puts "あっち向いて・・・"
    puts "    ほい"
    puts "あなたは#{face[player_hand]}です ,私は#{face[program_hand]}です"
    puts "-----"
    
    #勝敗を決める
    if player_hand == program_hand
       puts "あなたの勝ちです"
       return false
      
    else
      puts "もう一回じゃんけんです"
      
      #ジャンケンをもう一回繰り返す
      next_game = true

      puts "最初はグー、じゃんけん..."

      while next_game do
       next_game = janken
      end
      return true
      
    end
end
      
      puts "--------"
    
    #あっち向いてほいをする
      puts look_over_there

   #あっち向いてホイが繰り返される
     one_game = true
     
     while one_game do
       one_game = look_over_there
     end
     
     
  puts "終了です"
