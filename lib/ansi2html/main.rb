require 'strscan'

module ANSI2HTML
  class Main
    COLOR = {
       '1' => 'bold',
      '30' => 'black',
      '31' => 'red',
      '32' => 'green',
      '33' => 'yellow',
      '34' => 'blue',
      '35' => 'magenta',
      '36' => 'cyan',
      '37' => 'white',
      '90' => 'grey'
    }
    
    def self.execute
      new(STDIN.read, STDOUT)
    end

    def initialize(ansi, out)
      s = StringScanner.new(ansi)
      while(!s.eos?)
        if s.scan(/\e\[(3[0-7]|90|1)m/)
          out.print(%{<span class="#{COLOR[s[1]]}">})
        else
          if s.scan(/\e\[0m/)
            out.print(%{</span>})
          else
            out.print(s.scan(/./m))
          end
        end
      end
    end
  end
end