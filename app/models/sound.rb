class Sound < ApplicationRecord
  has_one_attached :audio

  validates :title, presence: true
  validate :audio_presence
  validate :audio_content

  private

  def audio_presence
    return if audio.attached?

    errors.add(:audio, 'is required')
  end

  def audio_content
    return unless audio.attached?
    return if audio.blob.content_type.start_with? 'audio/'

    audio.purge_later
    errors.add(:audio, 'needs to be an audio file')
  end
end
