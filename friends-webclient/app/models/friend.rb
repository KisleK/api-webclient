class Friend
  attr_accessor :id, :character, :location, :quote

  def initialize(hash_options)
    @id = hash_options["id"]
    @character = hash_options["character"]
    @location = hash_options["location"]
    @quote = hash_options["quote"]
  end

  def self.find(id)
    Friend.new(Unirest.get("#{ ENV["API_HOST"] }/api/v2/friends/#{ id }.json").body)
  end

  def self.all
    friends = []
    Unirest.get("#{ ENV["API_HOST"] }/api/v2/friends.json").body.each do |friend_hash|
      friends << Friend.new(friend_hash)  end
end
