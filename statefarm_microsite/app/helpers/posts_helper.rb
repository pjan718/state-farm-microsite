module PostsHelper
   def line_break(string)
      string.gsub("\n", '<br/>')
   end
end
