class Content < ApplicationRecord
  has_many :bookmarks

  DURATIONS = [5, 10, 15, 30]
  KINDS = %w(video article podcast)
  THEMES = %w(politics society economics arts environment sciences technology history)

  THEMES_CHANNELS_MAPPING = {
    politics:     ['UCVeMw72tepFl1Zt5fvf9QKQ'],
    society:      ['UCZaT_X_mc0BI-djXOlfhqWQ'],
    economics:    ['UCIALMKvObZNtJ6AmdCLP7Lg'],
    environment:  ['UCpVm7bg6pXKo1Pr6k5kxG9A'],
    sciences:     ['UCZYTClx2T1of7BRZ86-8fow'],
    technology:   ['UCXGgrKt94gR6lmN4aN3mYTg'],
    history:      ['UC510QYlOlKNyhy_zdQxnGYw'],
    arts:         ['UC9CswYtb5rL31CHwyVoyJvQ']
  }
end

