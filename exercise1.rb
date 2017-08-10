# Solution With method

#Define a method that accepts two arguments representing the day of the month and the month of the year
print "What day is your birthday?: "
day = gets.chomp.to_i
print "What month were you born?: "
month = gets.chomp.downcase

def calculate(month, day)

  signs = [
  {name: "Aries", start_date: {month: "march", day: 21}, end_date: {month: "april", day: 19}},
  {name: "Taurus", start_date: {month: "april", day: 20}, end_date: {month: "may", day: 20}},
  {name: "Gemini", start_date: {month: "may", day: 21}, end_date: {month: "june", day: 20}},
  {name: "Cancer", start_date: {month: "june", day: 21}, end_date: {month: "july", day: 22}},
  {name: "Leo", start_date: {month: "july", day: 23}, end_date: {month: "august", day: 22}},
  {name: "Virgo", start_date: {month: "august", day: 23}, end_date: {month: "september", day: 22}},
  {name: "Libra", start_date: {month: "september", day: 23}, end_date: {month: "october", day: 22}},
  {name: "Scorpio", start_date: {month: "october", day: 23}, end_date: {month: "november", day: 21}},
  {name: "Sagittarius", start_date: {month: "november", day: 22}, end_date: {month: "december", day: 21}},
  {name: "Aquarius", start_date: {month: "january", day: 20}, end_date: {month: "february", day: 18}},
  {name: "Pisces", start_date: {month: "february", day: 19}, end_date: {month: "march", day: 20}}
  ]


  signs.find do |sign|
    if month == sign[:start_date][:month] && day >= sign[:start_date][:day] || month == sign[:end_date][:month] && day <= sign[:end_date][:day]
      puts "You were born on #{month}, #{day} you are a #{sign[:name]}"
    end
  end
end


display = calculate(month, day)



#Solution without method
#
#   signs = [
#   {name: "Aries", start_date: {month: "March", day: 21}, end_date: {month: "April", day: 19}},
#   {name: "Taurus", start_date: {month: "April", day: 20}, end_date: {month: "May", day: 20}},
#   {name: "Gemini", start_date: {month: "May", day: 21}, end_date: {month: "June", day: 20}},
#   {name: "Cancer", start_date: {month: "June", day: 21}, end_date: {month: "July", day: 22}},
#   {name: "Leo", start_date: {month: "July", day: 23}, end_date: {month: "August", day: 22}},
#   {name: "Virgo", start_date: {month: "August", day: 23}, end_date: {month: "September", day: 22}},
#   {name: "Libra", start_date: {month: "September", day: 23}, end_date: {month: "October", day: 22}},
#   {name: "Scorpio", start_date: {month: "October", day: 23}, end_date: {month: "November", day: 21}},
#   {name: "Sagittarius", start_date: {month: "November", day: 22}, end_date: {month: "December", day: 21}},
#   {name: "Aquarius", start_date: {month: "January", day: 20}, end_date: {month: "February", day: 18}},
#   {name: "Pisces", start_date: {month: "February", day: 19}, end_date: {month: "March", day: 20}}
#   ]
#
# #Define a method that accepts two arguments representing the day of the month and the month of the year
# print "What day is your birthday?: "
# day = gets.chomp.to_i
# print "What month were you born?: "
# month = gets.chomp
#
# # def calculate(month, day)
#
# display =  signs.find do |sign|
#     if month == sign[:start_date][:month] && day >= sign[:start_date][:day] || month == sign[:end_date][:month] && day <= sign[:end_date][:day]
#     puts "You were born on the #{day}th of #{month}, you are a #{sign[:name]}"
#     end
#   end
# # end
#
#
#
# # display = calculate(month, day)
# puts display
