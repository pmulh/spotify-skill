Feature: Spotify Music Streaming Skill

  Scenario Outline: User asks to listen to Spotify
    Given an english speaking user
     And spotify is not currently playing
     When the user says "<play spotify>"
     Then "spotify-skill" should resume playing the last song played on Spotify

  Examples: play spotify
      | play spotify |
      | start spotify |
      | listen to spotify |

  Scenario Outline: User asks to play a specific song
    Given an english speaking user
      And spotify is not currently playing
      When the user says "<play come together>"
      Then mycroft reply should contain "<come together>"

   Examples: play song title
     | play come together |
     | play song 1999 |
     | play track don't stop believing |
     | play the track crazy |
     | play the song enter sandman |
     | play the song humble |
     | play the track baby |
     | play the song human |

  Scenario Outline: User asks to play a specific artist
    Given an english speaking user
      And spotify is not currently playing
      When the user says "<play the beatles>"
      Then mycroft reply should contain "<the beatles>"

   Examples: play artist
     | play the beatles | beatles |
     | play vampire weekend | vampire weekend |
     | play van halen | van halen |
     | play maroon 5 | maroon 5 |
     | play madonna | madonna |
     | play elton john | elton john |
     | play muse | muse |
     | play mariah carey | mariah carey |
     | play jay z | jay z |
     | play dunderpatrullen | dunderpatrullen |

  Scenario Outline: User asks to play a specific album
    Given an english speaking user
      And spotify is not currently playing
      When the user says "<play abbey road by the beatles>"
      Then mycroft reply should contain "<abbey road>"

   Examples: play artist
     | play abbey road by the beatles | abbey road |
     | play purpose by justin bieber | purpose |
     | play views by drake | views |
     | play starboy by the weeknd | starboy |
     | play x by ed sheeran | ed sheeran |
     | play play beerbongs and bentleys by post malone | beerbongs |

  Scenario Outline: User asks to play a playlist
    Given an english speaking user
      And spotify is not currently playing
      And the spotify user has a playlist called "<morning jams>"
      When the user says "<play morning jams>"
      Then mycroft reply should contain "<morning jams>"

   Examples: play playlist
     | play morning jams | morning jams |
     | play study time | sudy time |
     | play dance party | dance party |
     | play arena rock | arena rock |

  Scenario Outline: User wants to stop playback
    Given an english speaking user
      And spotify is currently playing
      When the user says "<stop>"
      Then mycroft should stop playback

     | stop |
     | stop playback |
     | quit |
     | end |
     | turn it off |
     | turn off the musice |
     | shut it off |
     | shut up |
     | silence |
     | be quiet |

  Scenario Outline: User wants to pause playback
    Given an english speaking user
      And spotify is currently playing
      When the user says "<pause>"
      Then mycroft should pause playback

     | pause |
     | pause song |
     | pause music |

  Scenario Outline: User wants to resume playback
    Given an english speaking user
      And spotify is currently playing
      When the user says "<resume>"
      Then mycroft should pause playback

     | resume |
     | resume playing |
     | play |
     | continue |
