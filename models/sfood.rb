class StreetFood <ActiveRecord::Base

  def to_s
    "#{item_name} (#{country})"
  end
end


