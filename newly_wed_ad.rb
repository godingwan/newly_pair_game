$p_1_q = []
$p_1_a = []
$p_2_a = []

def ask_question
  puts "How many questions would you like to ask?"
  $qu_numb = gets.chomp.to_i
  x = $qu_numb.is_a? Integer
  while x == false
    puts "That is not a number. Please put in a number."
    $qu_numb = gets.chomp.to_i
    x = $qu_numb.is_a? Integer
  end
end
#if the gets does != an int. Repeat the question.

def player_one
  i = 0
  while i < $qu_numb.to_i
    puts "What is question #{i + 1}?"
    ques = gets.chomp
    $p_1_q.push(ques)
    puts "What is the answer to \##{i + 1}?"
    ans = gets.chomp.downcase
    $p_1_a.push(ans)
    i += 1
  end
end

def player_two
  i = 0
  score = 0
  while i < $qu_numb.to_i
    puts $p_1_q[i].capitalize
    ans_2 = gets.chomp.downcase
    $p_2_a.push(ans_2)
    if $p_1_a[i] == $p_2_a[i]
      score += 1
      puts "Correct! You now have #{score} point."
    else
      puts "Sorry, that is the wrong answer"
    end
    i += 1
  end
  puts
  puts
  puts "Your score total is #{score}. Good job!"
end

ask_question
player_one
player_two

#Make a safe place so that if they input a blank line it repeats the question again.
