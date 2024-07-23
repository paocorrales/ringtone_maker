# Create your own ringtone! 

library(Rmusic) # Install it with remotes::install_github("keithmcnulty/Rmusic")

seed <- 56   #choose a seed
n_notes <- 5 #choose a integer between 1 and 5


# Don't change anything after this line
notes <- c("A", "B", "C", "D", "E", "F", "G")
durations <- c(0.25, 0.33, 0.5, 0.75, 1, 1.5)
semitones <- c("#", "b")

set.seed(seed)

song <- sample(notes, n_notes, replace = TRUE)
song <- paste0(song, sample(semitones, 1))
song <- c(song, paste0(song[n_notes], "b"))

duration <- sample(durations, n_notes, replace = TRUE)
duration <- c(duration, 2)

# Play the ringtone!
play_music(song, duration)