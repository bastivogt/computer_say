module SV
  class ComputerSay


    def initialize(yes: "Computer say: yes", no: "Computer say: no", start_prompt: "Enter a question", exit_prompt: "Your course:", exit_key: "q")
      @yes = yes
      @no = no
      @start_prompt = start_prompt
      @exit_prompt = exit_prompt
      @exit_key = exit_key
      @question = nil
      @answer = nil
      @course = []
    end

    def rand_answer
      ret = rand(0..1)
      if ret === 0
        return @no
      end
      @yes
    end

    def list_course
      i = 0
      @course.each do |item|
        i += 1
        puts "#{i}. #{item[:q]} | #{item[:a]}"
      end
    end

    def start
      while true
        game
      end
    end





    private

    def game
      puts @start_prompt
      @question = gets.chomp
      if @question === @exit_key
        puts ""
        quit_game
      end
      @answer = rand_answer
      @course.push({q: @question, a: @answer})
      puts @answer
      puts ""
    end

    def quit_game
      puts @exit_prompt
      list_course
      exit
    end


  end
end
