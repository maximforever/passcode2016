class PagesController < ApplicationController

  @@win1, @@win2, @@win3, @@win4, @@win5, @@win6 = false, false, false, false, false, false

  def index
    @@win1, @@win2, @@win3, @@win4, @@win5, @@win6 = false, false, false, false, false, false
    @num = params["number"]
  end

  def submit

      messages = [
        "That's... not even close.",
        "Yeeeeeah, that's not it.",
        "They told me you were moderately intelligent.",
        "Yeah! Wait... no. That's wrong.",
        "Incorrect.",
        "You only get six more tries.",
        "Eso es tan malo. Mucho, mucho malo.",
        "Nyet",
        "What's tall, skinny, and has a big empty head?",
        "Not with that attitude, you don't.",
        "Humans are adorable, but as dumb as 1GB of ram.",
        "While you were trying to figure out this one, I resolved the Middle Eastern crisis."
      ]

    if(params["riddle"] == "1")
      if([params["1"], params["2"], params["3"], params["4"], params["5"], params["6"], params["7"]] == %w(b a l c o n y))
        @@win1 = true
        redirect_to "/win1"
      else
        flash[:error] = messages.sample
        redirect_to "/riddle1"
      end

    elsif(params["riddle"] == "2")
      if([params["1"], params["2"], params["3"], params["4"], params["5"]] == %w(g r e e n))
        @@win2 = true
        redirect_to "/win2"
      else
        flash[:error] = messages.sample
        redirect_to "/riddle2"
      end
    elsif(params["riddle"] == "3")
      if([params["1"], params["2"], params["3"], params["4"]] == %w(k y l e))
        @@win3 = true
        redirect_to "/win3"
      else
        flash[:error] = messages.sample
        redirect_to "/riddle3"
      end
    elsif(params["riddle"] == "4")
      if([params["1"], params["2"], params["3"]] == %w(s i x))
        @@win4 = true
        redirect_to "/win4"
      else
        flash[:error] = messages.sample
        redirect_to "/riddle4"
      end
    elsif(params["riddle"] == "5")
      if([params["1"], params["2"], params["3"], params["4"], params["5"],
          params["6"], params["7"], params["8"], params["9"], params["10"],
          params["11"], params["12"], params["13"], params["14"]] == %w(a p o l l o q u a c i o u s))
        @@win5 = true
        redirect_to "/win5"
      else
        flash[:error] = messages.sample
        redirect_to "/riddle5"
      end
    elsif(params["riddle"] == "6")
      if([params["1"], params["2"], params["3"], params["4"], params["5"],params["6"], params["7"]] == %w(i s i l d u r))
        @@win6 = true
        redirect_to "/win6"
      else
        flash[:error] = messages.sample
        redirect_to "/riddle5"
      end
    else
      flash[:error] = "Something is wrong"
        redirect_to root_path
    end
  end


  def riddle2
     unless @@win1 == true 
      puts "oh no!"
      flash[:error] = "You have to solve this one first."
      redirect_to "/riddle1"
    end
  end

  def riddle3
    unless @@win2 == true 
      puts "oh no!"
      flash[:error] = "You have to solve this one first."
      redirect_to "/riddle2"
    end
  end

  def riddle4
    unless @@win3 == true 
      puts "oh no!"
      flash[:error] = "You have to solve this one first."
      redirect_to "/riddle3"
    end
  end

  def riddle5
    unless @@win4 == true 
      puts "oh no!"
      flash[:error] = "You have to solve this one first."
      redirect_to "/riddle4"
    end
  end

  def riddle6
    unless @@win5 == true 
      puts "oh no!"
      flash[:error] = "You have to solve this one first."
      redirect_to "/riddle5"
    end
  end


  def win1
     unless @@win1 == true 
      puts "oh no!"
      flash[:error] = "You have to solve this one first."
      redirect_to "/riddle1"
    end
  end

  def win2
    unless @@win2 == true 
      puts "oh no!"
      flash[:error] = "You have to solve this one first."
      redirect_to "/riddle2"
    end
  end

  def win3
    unless @@win3 == true 
      puts "oh no!"
      flash[:error] = "You have to solve this one first."
      redirect_to "/riddle3"
    end
  end

  def win4
    unless @@win4 == true 
      puts "oh no!"
      flash[:error] = "You have to solve this one first."
      redirect_to "/riddle4"
    end
  end

  def win5
    unless @@win5 == true 
      puts "oh no!"
      flash[:error] = "You have to solve this one first."
      redirect_to "/riddle5"
    end
  end 

  def win6
    unless @@win5 == true 
      puts "oh no!"
      flash[:error] = "You have to solve this one first."
      redirect_to "/riddle5"
    end
  end 


  def victory
    unless @@win5 == true 
      puts "oh no!"
      flash[:error] = "You have to solve this one first."
      redirect_to "/riddle5"
    end
  end 


  def test


      flash[:error] = "This shit works!"
      redirect_to root_path

  end



  def secret
    redirect_to root_path unless @@win 
    @@win = false
    
  end

  def guess
  end

end
