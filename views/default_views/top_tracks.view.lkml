view: top_tracks {
  sql_table_name: `spotify.top_tracks`
    ;;

  measure: acous {
    label: "Acoustic"
    description: "A confidence measure from 0.0 to 1.0 of whether the track is acoustic"
    type: sum
    drill_fields: [year, artist, top_genre, song_id, title]
    sql: ${TABLE}.acous;;
  }

  dimension: artist {
    label: "Artist Name"
    type: string
    sql: ${TABLE}.artist ;;
  }

  measure: bpm {
    label: "Beats Per Minute or Tempo"
    type: sum
    drill_fields: [year, artist, top_genre, song_id, title]
    sql: ${TABLE}.bpm ;;
  }

  measure: d_b {
    label: "Loudness"
    description: "The overall loudness of a track in decibels"
    type: sum
    drill_fields: [year, artist, top_genre, song_id, title]
    sql: ${TABLE}.dB ;;
  }

  measure: dnce {
    label: "Danceability"
    description: "A value of 0.0 is least danceable and 1.0 is most danceable"
    type: average
    drill_fields: [year, artist, top_genre, song_id, title]
    value_format: "0.0"
    sql: ${TABLE}.dnce ;;
  }

  measure: dur {
    label: "Duration"
    description: "Song Duration in Milliseconds"
    type: sum
    drill_fields: [year, artist, top_genre, song_id, title]
    sql: ${TABLE}.dur ;;
  }

  measure: live {
    label: "Liveness"
    description: "Detects the presence of an audience in the recording"
    type: sum
    drill_fields: [year, artist, top_genre, song_id, title]
    sql: ${TABLE}.live ;;
  }

  measure: nrgy {
    label: "Energy"
    description: "A measure from 0.0 to 1.0 and represents a perceptual measure of intensity and activity"
    type: average
    drill_fields: [year, artist, top_genre, song_id, title]
    value_format: "0.0"
    sql: ${TABLE}.nrgy ;;
  }

  measure: pop {
    label: "Popularity"
    description: "Number Between 1 and 100"
    type: average
    value_format: "0.0"
    drill_fields: [year, artist, top_genre, song_id, title]
    sql: ${TABLE}.pop ;;
  }

  dimension: song_id {
    label: "Song ID"
    type: number
    sql: ${TABLE}.song_id ;;
    primary_key: yes
  }

  measure: spch {
    label: "Speech"
    description: "Speechiness detects the presence of spoken words in a track"
    type: sum
    drill_fields: [year, artist, top_genre, song_id, title]
    sql: ${TABLE}.spch ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: top_genre {
    type: string
    sql: ${TABLE}.top_genre ;;
  }

  dimension: genre_parent {
    type: string
    sql: CASE
      WHEN ${TABLE}.top_genre LIKE ('%pop%') THEN 'pop'
      WHEN ${TABLE}.top_genre LIKE ('%hip hop%') THEN 'hip hop'
      WHEN (${TABLE}.top_genre LIKE ('%edm%') OR ${TABLE}.top_genre LIKE ('%house%') OR ${TABLE}.top_genre LIKE ('%electro%') OR ${TABLE}.top_genre LIKE ('%dance%')) THEN 'dance'
      WHEN ${TABLE}.top_genre LIKE ('%indie%') THEN 'indie'
      WHEN ${TABLE}.top_genre LIKE ('%country%') THEN 'country'
      WHEN ${TABLE}.top_genre LIKE ('%latin%') THEN 'latin'
      ELSE 'other'
      END ;;
  }

  measure: val {
    label: "Valence"
    description: "musical positiveness conveyed by a track"
    type: sum
    drill_fields: [year, artist, top_genre, song_id, title]
    sql: ${TABLE}.val ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year;;
  }

  measure: count {
    type: count
    drill_fields: [year, artist, top_genre, song_id, title]
  }



}
