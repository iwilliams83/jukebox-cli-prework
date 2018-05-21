#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
# "Wolf" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
# "Blue" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
# }

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(song_list)
  puts "Here is a list of songs you can play:"
  song_list.each_with_index do |s,i|
    puts "#{i+1}. #{s}"
  end
end

def play(song_list)
  count = song_list.length
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
  if song_list.include?(song_choice)
    puts "Playing #{song_choice}"
  elsif (1..count).include?(song_choice.to_i)
    i = song_choice.to_i
    i = i-1
    puts "Playing #{song_list[i]}"
  else
    puts "Invalid input, please try again"
  end

end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)

  puts "Please enter a command:"
  command = gets.chomp

  while command != "exit"
    if command == "play"
      play(songs)
    elsif command == "list"
      list(songs)
    elsif command == "help"
      help
    else
      puts "Invalid Command"
    end
    puts "Please enter a command"
    command = gets.chomp
  end

  if command == "exit"
    exit_jukebox
  end
end
