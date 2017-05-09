def winners_circle
  win("Thanks for rescuing the kittens.")
end

def kitten_room
    puts "This room contains 100 kittens, all of whom need a home. How many do you adopt?"

    print "> "
    choice = $stdin.gets.chomp
    
        
    if choice.include? "zero" or choice.include? "none"
        dead("You should have rescued at least one kitten!")
    end
    
    if choice.include? "all" or choice.include? "many"
        puts "The kittens are so happy to have a real home!"
        winners_circle
    elsif choice.include? "few" or choice.include? "couple"
        puts "The kittens are so happy to have a real home!"
        winners_circle
    end
    
    how_many = choice.to_i
    
    if how_many > 0
        winners_circle
    elsif how_many ==0
        dead("You should've rescued at least one kitten. You're mean.")
    else
        puts "Not sure what you mean. Try again."
        kitten_room
    end

    
end


def cat_room
    puts "There are many cats happily living here in their permanent, loving home."
    puts "The cats have a bunch of treats you could feed them, and some cat teaser toys to play with."
    puts "There's a really fat cat named Chubbs in front of another door."
    puts "If you're able to move Chubbs, you'll be able to 'open the door'. How are you going to move Chubbs?"
    chubbs_moved = false
    
    while true
    print "> "
    choice = $stdin.gets.chomp
    
    if choice.include? "scare" or choice.include? "shoo"
        dead("Chubbs looks at you then claws your face off.")
    elsif choice.include? "pet" or choice.include? "play"
        puts "Chubbs has moved from the door. You can go through it now."
        chubbs_moved = true
    elsif choice.include? "feed" or choice.include? "treat"
        puts "Chubbs has moved from the door. You can go through it now."
        chubbs_moved = true
    elsif choice == "open the door" && chubbs_moved = true
        kitten_room
    elsif
        dead("Chubbs gets pissed off and claws your leg off.")
    else
        puts "I got no idea what that means."
    end
end
end


def parrot_room
    puts "Here you see the great Captain Jack."
    puts "He is very territorial."
    puts "Do you flee for your life or offer him a piece of apple?"
    captain_nice = false
    
    while true
    print "> "
    choice = $stdin.gets.chomp
    
    if choice.include? "flee"
        dead("Captain Jack is a parrot and you're a chicken for fleeing. He's a nice bird, dummy, but you scared him with your sudden movements and he mauled you to death with his amazing beak. BLNT.")
    elsif choice.include? "apple"
        captain_nice = true
        puts "You gave Captain Jack a piece of apple and he thanked you with a loud beeping sound. As he noms on his favorite treat, you are able to exit through a really cool looking door labeled 'beware of kittens'."
        kitten_room
    else
        dead("You scared Captain Jack and he mauled you death.")
    end
end
end


def dead(why)
    puts why, "You suck!"
    exit(0)
end

def win(why)
    puts why, "You have won the game. Check your bank account in 24 hours for a huge payout! (Just kidding. This is just a text adventure game, no real prizes here!)"
    exit(0)
end

def start
    puts "You are in a dark room."
    puts "There is a door to your right and left."
    puts "Which one do you take?"
    
    print "> "
    choice = $stdin.gets.chomp
    
    if choice == "left"
        cat_room
    elsif choice == "right"
        parrot_room
    else
        dead("You stumble around the room until you starve.")
    end
end

start