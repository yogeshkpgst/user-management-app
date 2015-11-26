class Sample < ActiveRecord::Base

  def self.insert(name1, name2)    
    Sample.connection.insert("INSERT INTO samples (name1, name2) VALUES( 'xyz', 'abc') ");
  end


#INSERT INTO `sample`(`name1`, `name2`) VALUES ([value-1],[value-2])

  attr_accessible :name1, :name2

end

