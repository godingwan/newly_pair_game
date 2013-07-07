def questions
  question = ["What is Josh's favorite color?", "What city was Josh born in?", "What sport does Joshua like to watch the most?"]
  correct_answers = ["green", "seoul", "basketball"]
  guessed_answers = Array.new
  score = 0
  for i in 0..2
    puts question[i]
    x = gets.chomp.downcase
    guessed_answers.push(x)
    if correct_answers[i] == guessed_answers[i]
      score += 1
      puts "Correct! Your score is now #{score}!"
    else
      puts "Sorry, that is the wrong answer. Your score is #{score}."
    end
  end
end

questions
