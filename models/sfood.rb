class StreetFood <ActiveRecord::Base

  def to_s
    "#{name} (#{country})"
  end
end


# t.string :name
#       t.string :city
#       t.string :country
#       t.string :vendor
#       t.text :description
#       t.integer :rating
