class String
  define_method(:sleep_in) do
    date_array=self.split("/")
    month = date_array[0]
    day=date_array[1]
    year=date_array[2]
    date_format=Time.new(year,month,day)
    day_of_week=date_format.wday()
    if day_of_week==0
      "Today is Sunday you can sleep in"
    elsif day_of_week==1
      "Monday"
    elsif day_of_week==2
      "Tuesday"
    elsif day_of_week==3
      "Wednesday"
    elsif day_of_week==4
      "Thursday"
    elsif day_of_week==5
      "Friday"
    elsif day_of_week==6
      "Today is Saturday you can sleep in"
    end
  end
end
