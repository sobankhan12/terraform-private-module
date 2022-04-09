variable "bucket-name" {
  type = string

}
variable "tags" {
  type = map(string)
  default = {
    "Name" = "demo"
  }


}