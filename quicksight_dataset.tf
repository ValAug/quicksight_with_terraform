# --main/dataset--

resource "aws_quicksight_data_set" "dataset" {
  data_set_id =var.data_set_id
  name        = var.data_set_name
  import_mode = "SPICE"

  physical_table_map {
    physical_table_map_id = var.physical_table_map_id
    s3_source {
      data_source_arn = aws_quicksight_data_source.datasource.arn
      input_columns {
        name = "Column1"
        type = "STRING"
      }
      upload_settings {
        format = "JSON"
      }
    }
  }
}