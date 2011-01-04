module ANSI2HTML
  class Main
    def self.execute
      new(STDIN.read, STDOUT)
    end

    def initialize(ansi, out)
      s = StringScanner.new(ansi)
      while(!s.eos?)
        if s.scan(/\e\[31m/)
          out.print(%{<span class="red">})
        else
          if s.scan(/\e\[0m/)
            out.print(%{</span>})
          else
            out.print(s.scan(/./))
          end
        end
      end
    end
  end
end