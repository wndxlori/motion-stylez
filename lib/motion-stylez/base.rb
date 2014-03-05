module MotionStylez
  class Base
    attr_accessor :stylesheet, :selector

    def self.shared
      Dispatch.once { @shared ||= new }
      @shared
    end

    def style(style_names)
      begin
        puts "\[STYLEZ ERROR] no stylesheet selected" unless self.stylesheet

        view = self.selector
        view = view.new if view.class == Class
        [style_names].flatten.each do |style|
          self.stylesheet.public_send(style, view)
        end
        yield view if block_given?
        view
      rescue NoMethodError => e
        if e.message =~ /.*#{style_name.to_s}.*/
          puts "\n[STYLEZ ERROR]  style_name :#{style_name} doesn't exist for a #{view.class.name}. Add 'def #{style_name}(v)' to #{stylesheet.class.name} class\n\n"
        else
          raise e
        end
      end
    end
  end
end