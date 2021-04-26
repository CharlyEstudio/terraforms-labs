# resource "aws_iam_group" "administradores" {
#   name = "Administradores"
# }

# resource "aws_iam_policy_attachment" "admins_attach" {
#   name = "admins-attach"
#   groups = [ "${aws_iam_group.administradores.name}" ]
#   policy_arn = "arn:aws:iam::aws:policy/job-function/SystemAdministrator"
# }

# resource "aws_iam_user" "admin1" {
#   name = "admin1"
# }

# resource "aws_iam_user" "admin2" {
#   name = "admin2"
# }

# resource "aws_iam_group_membership" "admins_users" {
#   name = "admins_users"
#   users = [
#     "${aws_iam_user.admin1.name}",
#     "${aws_iam_user.admin2.name}"
#   ]

#   group = "${aws_iam_group.administradores.name}"
# }

# resource "aws_iam_access_key" "admin1_access" {
#   user = "${aws_iam_user.admin1.name}"
# }

# resource "aws_iam_access_key" "admin2_access" {
#   user = "${aws_iam_user.admin2.name}"
# }

# output "admin1_access_key" {
#   value = "${aws_iam_access_key.admin1_access.id}"
# }

# output "admin1_secret_key" {
#   value = "${aws_iam_access_key.admin1_access.secret}"
#   sensitive = true
# }

# output "admin2_access_key" {
#   value = "${aws_iam_access_key.admin2_access.id}"
# }

# output "admin2_secret_key" {
#   value = "${aws_iam_access_key.admin2_access.secret}"
#   sensitive = true
# }