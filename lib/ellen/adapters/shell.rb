module Ellen
  module Adapters
    class Shell < Base
      register :shell

      def run
        explain
        listen
      end

      private

      def explain
        puts "Type `exit` or `quit` to end the session."
      end

      def prompt
        print "> "
      end

      def read
        gets.chomp
      end

      def listen
        loop { step }
      end

      def step
        prompt
        case read
        when "exit", "quit"
          exit
        end
      end
    end
  end
end
