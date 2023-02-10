# # PLAN POLICY
# #
# # This example plan policy prevents you from creating weak passwords, and warns 
# # you when passwords are meh.
# #
# # You can read more about plan policies here:
# #
# # https://docs.spacelift.io/concepts/policy/terraform-plan-policy
# resource "spacelift_policy" "plan-that-prevents-creating-weak-passwords" {
#   type = "TERRAFORM_PLAN"
#
#   name = "Enforce password strength"
#   body = file("${path.module}/policies/plan.rego")
# }
#
# # Plan policies only take effect when attached to the stack.
# resource "spacelift_policy_attachment" "plan" {
#   policy_id = spacelift_policy.plan-that-prevents-creating-weak-passwords.id
#   stack_id  = spacelift_stack.managed.id
# }
