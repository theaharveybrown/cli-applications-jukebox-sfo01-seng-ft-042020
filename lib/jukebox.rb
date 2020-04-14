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
  hash = {}
  songs.each_with_index { |val,index| puts "#{index + 1}. #{val}"}
end 

def play(songs)
  puts "Please enter a song name or number:"
  user_song = gets.strip
  if user_song.is_a?(Integer) && (1..9).include?(user_song)
    puts "Playing #{songs[user_song-1]}"
  else 
    input_type = user_song.is_a?(Integer)
    in_range = (1..9).include?(user_song)
    puts "Input: #{input_type} range: #{in_range}"
  end
end 

play(songs)