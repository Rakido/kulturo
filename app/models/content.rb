class Content < ApplicationRecord
  has_many :bookmarks

  DURATIONS = [5, 10, 15, 30]
  KINDS = %w(video article podcast)
  THEMES = %w(politics society economics arts environment sciences technology history)

  THEMES_CHANNELS_MAPPING = {
    politics:     ['UCAcAnMF0OrCtUep3Y4M-ZPw','UCVeMw72tepFl1Zt5fvf9QKQ','UCALQmB6ug_RUYac5yrtKfXg','UCdnaDhU-LDQrIEEmSIfq0-Q'],
    society:      ['UC1yLBhh8eDSPm-_Hgz8AvNA','UCwWCBw7M0kskNlv0coVP53w','UCGeFgMJfWclTWuPw8Ok5FUQ','UCHQda5vLxrH0Ff0I0kMq4zw'],
    economics:    ['UC7sXGI8p8PvKosLWagkK9wQ','UCyJDHgrsUKuWLe05GvC2lng','UChZWs6PJY0hND384d2_RrhQ','UCtbPu7ZHD5mWBtej5Tx4xWw'],
    environment:  ['UC5Twj1Axp_-9HLsZ5o_cEQQ','UC6dMVNhZmJYFf7SPv1WLMuQ'],
    sciences:     ['UCsXVk37bltHxD1rDPwtNM8Q','UCLA_DiR1FfKNvjuUpBHmylQ','UCZYTClx2T1of7BRZ86-8fow','UCHnyfMqiRRG1u-2MsSQLbXA','UCzWQYUVCpZqtN93H8RR44Qw','UCv0aU2eKry3kdSTnFa8QAWA'],
    technology:   ['UCNiauGTV7XhkOpUAIXod4xA'],
    history:      ['UC5Twj1Axp_-9HLsZ5o_cEQQ','UC_iuTGIGPWQBLGbd_TgwB-Q','UCP46_MXP_WG_auH88FnfS*1A','UCKjDY4joMPcoRMmd-G1yz1Q'],
    arts:         ['UCafm6w_rPndqAtokQy04Jdw','UCzi49Gp-XX9m5foHOWWGKeA','UCqeQl48e0r-M30d_EVWfA2Q']
  }
end


