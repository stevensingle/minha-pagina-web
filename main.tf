provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  endpoints {
    ecs = "http://localhost:4566"
  }
}

resource "aws_ecs_cluster" "main_cluster" {
  name = "minha-pagina-web-cluster"
}
