# main/qs

resource "aws_quicksight_dashboard" "your_first_qs_dashboard" {
  dashboard_id        = var.dashboard_id
  name                = var.dashboard_name
  version_description = var.version_description
  definition {
    data_set_identifiers_declarations {
      data_set_arn = aws_quicksight_data_set.dataset.arn
      identifier   = "1"
    }
    sheets {
      title    = "Sheet_one"
      sheet_id = "Sheet_one_id"
      visuals {
        line_chart_visual {
          visual_id = "LineChart"
          title {
            format_text {
              plain_text = "Line Chart"
            }
          }
          chart_configuration {
            field_wells {
              line_chart_aggregated_field_wells {
                category {
                  categorical_dimension_field {
                    field_id = "1"
                    column {
                      data_set_identifier = "1"
                      column_name         = "Column_one"
                    }
                  }
                }
                values {
                  categorical_measure_field {
                    field_id = "2"
                    column {
                      data_set_identifier = "1"
                      column_name         = "Column_one"
                    }
                    aggregation_function = "COUNT"
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}