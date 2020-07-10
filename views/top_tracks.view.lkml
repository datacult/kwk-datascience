view: top_tracks {
  sql_table_name: `spotify.top_tracks`
    ;;

  dimension: acous {
    label: "Acoustic"
    description: "A confidence measure from 0.0 to 1.0 of whether the track is acoustic"
    type: number
    sql: ${TABLE}.acous;;
  }

  dimension: artist {
    label: "Artist Name"
    type: string
    sql: ${TABLE}.artist ;;
  }

  dimension: bpm {
    label: "Beats Per Minute or Tempo"
    type: number
    sql: ${TABLE}.bpm ;;
  }

  dimension: d_b {
    label: "Loudness"
    description: "The overall loudness of a track in decibels"
    type: number
    sql: ${TABLE}.dB ;;
  }

  dimension: dnce {
    label: "Danceability"
    description: "A value of 0.0 is least danceable and 1.0 is most danceable"
    type: number
    sql: ${TABLE}.dnce ;;
  }

  dimension: dur {
    label: "Duration"
    description: "Song Duration in Milliseconds"
    type: number
    sql: ${TABLE}.dur ;;
  }

  dimension: live {
    label: "Liveness"
    description: "Detects the presence of an audience in the recording"
    type: number
    sql: ${TABLE}.live ;;
  }

  dimension: nrgy {
    label: "Energy"
    description: "A measure from 0.0 to 1.0 and represents a perceptual measure of intensity and activity"
    type: number
    sql: ${TABLE}.nrgy ;;
  }

  dimension: pop {
    label: "Popularity"
    description: "Number Between 1 and 100"
    type: number
    sql: ${TABLE}.pop ;;
  }

  dimension: song_id {
    label: "Song ID"
    type: number
    sql: ${TABLE}.song_id ;;
  }

  dimension: spch {
    label: "Speech"
    description: "Speechiness detects the presence of spoken words in a track"
    type: number
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

  dimension: val {
    label: "Valence"
    description: "musical positiveness conveyed by a track"
    type: number
    sql: ${TABLE}.val ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }



}
