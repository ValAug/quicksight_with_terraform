#--main/datasource--

resource "aws_quicksight_data_source" "datasource" {
  data_source_id = var.data_source_id
  name           = "My Cool Data in S3"

  parameters {
    s3 {
      manifest_file_location {
        bucket = var.bucket_name
        key    = "manifest/manifest.json"
      }
    }
  }

  type = "S3"
}

resource "aws_s3_bucket" "qs_bucket" {
  bucket = var.bucket_name
}


resource "aws_iam_role" "quicksight_role" {
  name = var.quicksight_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "quicksight.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_policy" "s3_access_policy" {
  name        = var.quicksight_role_policy_name
  description = "Policy to allow QuickSight access to S3 bucket"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = ["s3:GetObject"],
        Effect = "Allow",
        Resource = "${aws_s3_bucket.qs_bucket.arn}/*"
        Condition = {
          StringEqualsIfExists = {
            "aws:RequestedRegion": "us-east-1"
          }
        }
      },
      {
        Action = ["s3:ListBucket"],
        Effect = "Allow",
        Resource = "${aws_s3_bucket.qs_bucket.arn}"
      }
    ]
  })
}


resource "aws_iam_role_policy_attachment" "quicksight_policy_attachment" {
  policy_arn = aws_iam_policy.s3_access_policy.arn
  role       = aws_iam_role.quicksight_role.name
}

