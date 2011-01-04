require 'stringio'
require 'ansi2html/main'

module ANSI2HTML
  describe Main do
    it "prints non-ansi as-is" do
      out = StringIO.new
      Main.new("Hello", out)
      out.string.should == "Hello"
    end
  end
end