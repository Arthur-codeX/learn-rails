require "active_support/time"


def dd(d)  #double digits
  if(d<10)
    return "0#{d}"
  end
  return d
end



def mpesa_time
  t=Time.at(Time.now).in_time_zone("Africa/Nairobi")

  year=t.year
  month=dd(t.month)
  day=dd(t.day)
  hour=dd(t.hour)
  minute=dd(t.min)
  second=dd(t.sec)


  return "#{year}#{month}#{day}#{hour}#{minute}#{second}"
end

# puts mpesa_time()
