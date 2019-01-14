def prompt(message)
  puts "=> #{message}"
end

prompt("Welcome to the Mortgage Calculator! Please enter your first name.")
first_name = gets.chomp.capitalize

loop do
  loan_amount = ''

  loop do
    prompt("Hi, #{first_name}. Please enter the loan amount.") 
    loan_amount = gets.chomp

    if loan_amount.empty? || loan_amount.to_f < 0
      prompt("Please enter a valid number.")
    else
      break
    end
  end

  annual_percentage_rate = ''
  
  loop do
    prompt("Please enter the APR (ex: 2.5 for 2.5%).")
    annual_percentage_rate = gets.chomp

    if annual_percentage_rate.empty? || annual_percentage_rate.to_f < 0
      prompt("Please enter a valid number.")
    else
      break
    end
  end

  loan_duration = ''

  loop do
    prompt("What is the duration of the loan in years?")
    loan_duration = gets.chomp

    if loan_duration.empty? || loan_duration.to_i < 0
      prompt("Please enter a valid number.")
    else
      break
    end
  end

  rate_calculation = annual_percentage_rate.to_f / 100
  monthly_interest_rate = rate_calculation.to_f / 12
  monthly_duration = loan_duration.to_i * 12

  monthly_payment = loan_amount.to_f * 
                    (monthly_interest_rate / 
                    (1 - (1 + monthly_interest_rate)**(-monthly_duration.to_i)))

  prompt("Your monthly payment would be: $ #{format('%02.2f', monthly_payment)}")

  prompt("Do you want to perform another calculation? (y to calculate again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you! Good bye!")
