##function fish_greeting
#  printf "Welcome! Let's fish!\n"
#end
#
function fish_greeting

	# Greeting messages
	set powered_msgs \
		"HackerOne" \
    #"rubber bands" \
    #"a Black Hole" \
    #"logic" \
    #"electromagnetic cheese"

	# Randomly pick a message
	set chosen_msg (random)"%"(count $powered_msgs)
	set chosen_msg $powered_msgs[(math $chosen_msg"+1")]

	# Output it to the console
	printf "FishShellAmazing! This terminal session is powered by %s\n" $chosen_msg | lolcat

end


