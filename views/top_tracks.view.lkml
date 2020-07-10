view: top_tracks {
  sql_table_name: `spotify.top_tracks`
    ;;

  dimension: acous {
    label: "Acoustic"
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
    type: number
    sql: ${TABLE}.dB ;;
  }

  dimension: dnce {
    label: "Danceability"
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
    type: number
    sql: ${TABLE}.live ;;
  }

  dimension: nrgy {
    label: "Energy"
    type: number
    sql: ${TABLE}.nrgy ;;
  }

  dimension: pop {
    label: "Popularity"
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
    type: number
    sql: ${TABLE}.val ;;
  }

  dimension: year {
    type: date
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }



}
