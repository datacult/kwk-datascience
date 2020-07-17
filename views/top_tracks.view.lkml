view: top_tracks {
  sql_table_name: `spotify.top_tracks`
    ;;

  measure: acous {
    label: "Acoustic"
    description: "A confidence measure from 0.0 to 1.0 of whether the track is acoustic"
    type: sum
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
    sql: ${TABLE}.bpm ;;
  }

  measure: d_b {
    label: "Loudness"
    description: "The overall loudness of a track in decibels"
    type: sum
    sql: ${TABLE}.dB ;;
  }

  measure: dnce {
    label: "Danceability"
    description: "A value of 0.0 is least danceable and 1.0 is most danceable"
    type: sum
    sql: ${TABLE}.dnce ;;
  }

  measure: dur {
    label: "Duration"
    description: "Song Duration in Milliseconds"
    type: sum
    sql: ${TABLE}.dur ;;
  }

  measure: live {
    label: "Liveness"
    description: "Detects the presence of an audience in the recording"
    type: sum
    sql: ${TABLE}.live ;;
  }

  measure: nrgy {
    label: "Energy"
    description: "A measure from 0.0 to 1.0 and represents a perceptual measure of intensity and activity"
    type: sum
    sql: ${TABLE}.nrgy ;;
  }

  measure: pop {
    label: "Popularity"
    description: "Number Between 1 and 100"
    type: sum
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

  measure: val {
    label: "Valence"
    description: "musical positiveness conveyed by a track"
    type: sum
    sql: ${TABLE}.val ;;
  }

  dimension: year {
    type: date_day_of_year
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }



}
