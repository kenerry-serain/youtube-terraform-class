variable "tags" {
  type = object({
    Project = string,
    Environment = string
  })

  default = {
    Project = "youtube-class"
    Environment = "dev"
  }
}