def say(command)
  if command.include?("simon says")
    command.split("simon says ")[1]
  else
    ":/"
  end
end
