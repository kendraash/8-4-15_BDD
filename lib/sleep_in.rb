class String
  define_method(:sleep_in) do
    date_array=self.split("/")
    month = date_array[0]
    day=date_array[1]
    year=date_array[2]
    date_format=Time.new(year,month,day)
    dow=date_format.wday()
    if dow==0
      "Sunday"
    elsif dow==1
      "Monday"
    elsif dow==2
      "Tuesday"
    elsif dow==3
      "Wednesday"
    elsif dow==4
      "Thursday"
    elsif dow==5
      "Friday"
    elsif dow==6
      "Saturday"
    end
  end
end
