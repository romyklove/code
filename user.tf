resource "aws_iam_user" "code1" {
name = "Kouadio"
tags = {
    Team = "Devops"
    Env = "Dev"
    Created_by_Kouadio = "yes"
    Owner = "Kouakou"
}
}