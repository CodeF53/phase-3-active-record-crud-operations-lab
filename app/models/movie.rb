class Movie < ActiveRecord::Base
  def self.create_with_title(title)
    create(title: title)
  end

  def self.first_movie
    first
  end

  def self.last_movie
    last
  end

  def self.movie_count
    count
  end

  def self.find_movie_with_id(id)
    find_by_id(id)
  end

  def self.find_movie_with_attributes(attr)
    # pp attr
    # pp find_by(attr)
    find_by(attr)
  end\

  def self.find_movies_after_2002
    where("release_date > 2002")
  end

  def update_with_attributes(attributes)
    # attributes.each do |key, value|
    #   send("#{key}=", value)
    # end
    update(attributes)
  end

  def self.update_all_titles(new_title)
    all.each do |movie|
      movie.update(title: new_title)
      # movie.send("#{:title}=", new_title)
    end
  end

  def self.delete_by_id(id)
    find(id).destroy
  end

  def self.delete_all_movies
    delete_all
  end

end
