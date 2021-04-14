# In a Terminal, type "irb" to load interactive Ruby
#
# Paste this code in, and call the "rock_paper_scissors" method
#
# Try to beat the computer!
#
def rock_paper_scissors
  puts "1"; sleep(1)
  puts "2"; sleep(1)
  ["rock", "paper", "scissors"].shuffle.first
end
