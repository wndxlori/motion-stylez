class MyViewController < UIViewController
  def viewDidLoad
    super
 
    z.stylesheet = MyStylesheet.new # works absolutely anywhere
 
    z(self.view, :white_bg)
 
    self.view.addSubview(z(UILabel, :bw_big) do |v|
      v.text = ":bw_big"
      v.frame = [[20, 40], [280, 50]]
    end)

    # OR YOU CAN DO THE LONG WAY
    # z(self.view).style(:white_bg)
    #
    # self.view.addSubview(z(UILabel).style(:bw_big) do |v|
    #   v.text = "Testing"
    # end)

    self.view.addSubview(z(UILabel, [:bw_big, :blue_bg]) do |v|
      v.text = ":bw_big & :blue_bg"
      v.frame = [[20, 100], [280, 50]]
    end)

    self.view.addSubview(UILabel.new.style([:bw_big, :blue_bg]) do |v|
      v.text = "alt sytax 1"
      v.frame = [[20, 160], [280, 50]]
    end)

    self.view.addSubview(UILabel.style([:bw_big, :blue_bg]) do |v|
      v.text = "alt sytax 2"
      v.frame = [[20, 220], [280, 50]]
    end)
 
  end
end