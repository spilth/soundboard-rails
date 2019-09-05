module Types
  class SoundType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :url, String, null: true
    field :audio_url, String, null: true
  end
end
