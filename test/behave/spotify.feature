Feature: Spotify Music Streaming Skill

  Scenario Outline: User asks to play a specific song
    Given an english speaking user
      When the user says "<play song title>"
      Then "mycroft-timer" should reply with "I'm starting a timer for 5 minutes"

   Examples: start a timer for for a specified duration
     | start a timer for a specified duration |
     | timer 10 minutes |
     | timer 30 seconds |
     | set a timer for 5 minutes |
     | start a 1 minute timer |
     | start a timer for 1 minute and 30 seconds |
     | begin timer 2 minutes |
     | create a timer for 1 hour |
     | create a timer for 1 hour and 30 minutes |
     | ping me in 5 minutes |
