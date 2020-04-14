# Add your code here

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(songs) 
  songs.each_with_index { 
    |val,index| puts "index: #{index} for #{val}" if val < 30}
end 

def play(songs)
  puts "Please enter a song name or number:"
  user_song = gets.strip
  if list(songs).include?(user_song)
    puts "Playing #{user_song}"
  else 
    puts "Invalid input, please try again"
  end
end 

play(songs)