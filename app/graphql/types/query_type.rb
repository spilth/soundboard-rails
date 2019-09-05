module Types
  class QueryType < Types::BaseObject
    field :sounds, 
      [Types::SoundType],
      null: false,
      description: "Returns a list of sounds"

    def sounds
      Sound.all
    end
  end
end
