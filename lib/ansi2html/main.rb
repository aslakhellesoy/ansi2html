module ANSI2HTML
  class Main
    def self.execute
      new(STDIN.read, STDOUT)
    end

    def initialize(ansi, out)
      out.print ansi
    end
  end
end