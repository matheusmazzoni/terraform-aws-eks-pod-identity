module "wrapper" {
  source = "../"

  for_each = var.items

  additional_policy_arns                                   = try(each.value.additional_policy_arns, var.defaults.additional_policy_arns, {})
  amazon_managed_service_prometheus_policy_name            = try(each.value.amazon_managed_service_prometheus_policy_name, var.defaults.amazon_managed_service_prometheus_policy_name, null)
  amazon_managed_service_prometheus_workspace_arns         = try(each.value.amazon_managed_service_prometheus_workspace_arns, var.defaults.amazon_managed_service_prometheus_workspace_arns, [])
  appmesh_controller_policy_name                           = try(each.value.appmesh_controller_policy_name, var.defaults.appmesh_controller_policy_name, null)
  appmesh_envoy_proxy_policy_name                          = try(each.value.appmesh_envoy_proxy_policy_name, var.defaults.appmesh_envoy_proxy_policy_name, null)
  attach_amazon_managed_service_prometheus_policy          = try(each.value.attach_amazon_managed_service_prometheus_policy, var.defaults.attach_amazon_managed_service_prometheus_policy, false)
  attach_aws_appmesh_controller_policy                     = try(each.value.attach_aws_appmesh_controller_policy, var.defaults.attach_aws_appmesh_controller_policy, false)
  attach_aws_appmesh_envoy_proxy_policy                    = try(each.value.attach_aws_appmesh_envoy_proxy_policy, var.defaults.attach_aws_appmesh_envoy_proxy_policy, false)
  attach_aws_cloudwatch_observability_policy               = try(each.value.attach_aws_cloudwatch_observability_policy, var.defaults.attach_aws_cloudwatch_observability_policy, false)
  attach_aws_ebs_csi_policy                                = try(each.value.attach_aws_ebs_csi_policy, var.defaults.attach_aws_ebs_csi_policy, false)
  attach_aws_efs_csi_policy                                = try(each.value.attach_aws_efs_csi_policy, var.defaults.attach_aws_efs_csi_policy, false)
  attach_aws_fsx_lustre_csi_policy                         = try(each.value.attach_aws_fsx_lustre_csi_policy, var.defaults.attach_aws_fsx_lustre_csi_policy, false)
  attach_aws_gateway_controller_policy                     = try(each.value.attach_aws_gateway_controller_policy, var.defaults.attach_aws_gateway_controller_policy, false)
  attach_aws_lb_controller_policy                          = try(each.value.attach_aws_lb_controller_policy, var.defaults.attach_aws_lb_controller_policy, false)
  attach_aws_lb_controller_targetgroup_binding_only_policy = try(each.value.attach_aws_lb_controller_targetgroup_binding_only_policy, var.defaults.attach_aws_lb_controller_targetgroup_binding_only_policy, false)
  attach_aws_node_termination_handler_policy               = try(each.value.attach_aws_node_termination_handler_policy, var.defaults.attach_aws_node_termination_handler_policy, false)
  attach_aws_privateca_issuer_policy                       = try(each.value.attach_aws_privateca_issuer_policy, var.defaults.attach_aws_privateca_issuer_policy, false)
  attach_aws_vpc_cni_policy                                = try(each.value.attach_aws_vpc_cni_policy, var.defaults.attach_aws_vpc_cni_policy, false)
  attach_cert_manager_policy                               = try(each.value.attach_cert_manager_policy, var.defaults.attach_cert_manager_policy, false)
  attach_cluster_autoscaler_policy                         = try(each.value.attach_cluster_autoscaler_policy, var.defaults.attach_cluster_autoscaler_policy, false)
  attach_custom_policy                                     = try(each.value.attach_custom_policy, var.defaults.attach_custom_policy, false)
  attach_external_dns_policy                               = try(each.value.attach_external_dns_policy, var.defaults.attach_external_dns_policy, false)
  attach_external_secrets_policy                           = try(each.value.attach_external_secrets_policy, var.defaults.attach_external_secrets_policy, false)
  attach_mountpoint_s3_csi_policy                          = try(each.value.attach_mountpoint_s3_csi_policy, var.defaults.attach_mountpoint_s3_csi_policy, false)
  attach_velero_policy                                     = try(each.value.attach_velero_policy, var.defaults.attach_velero_policy, false)
  aws_ebs_csi_kms_arns                                     = try(each.value.aws_ebs_csi_kms_arns, var.defaults.aws_ebs_csi_kms_arns, [])
  aws_ebs_csi_policy_name                                  = try(each.value.aws_ebs_csi_policy_name, var.defaults.aws_ebs_csi_policy_name, null)
  aws_efs_csi_policy_name                                  = try(each.value.aws_efs_csi_policy_name, var.defaults.aws_efs_csi_policy_name, null)
  aws_fsx_lustre_csi_policy_name                           = try(each.value.aws_fsx_lustre_csi_policy_name, var.defaults.aws_fsx_lustre_csi_policy_name, null)
  aws_fsx_lustre_csi_service_role_arns                     = try(each.value.aws_fsx_lustre_csi_service_role_arns, var.defaults.aws_fsx_lustre_csi_service_role_arns, [])
  aws_gateway_controller_policy_name                       = try(each.value.aws_gateway_controller_policy_name, var.defaults.aws_gateway_controller_policy_name, null)
  aws_lb_controller_policy_name                            = try(each.value.aws_lb_controller_policy_name, var.defaults.aws_lb_controller_policy_name, null)
  aws_lb_controller_targetgroup_arns                       = try(each.value.aws_lb_controller_targetgroup_arns, var.defaults.aws_lb_controller_targetgroup_arns, [])
  aws_lb_controller_targetgroup_only_policy_name           = try(each.value.aws_lb_controller_targetgroup_only_policy_name, var.defaults.aws_lb_controller_targetgroup_only_policy_name, null)
  aws_node_termination_handler_policy_name                 = try(each.value.aws_node_termination_handler_policy_name, var.defaults.aws_node_termination_handler_policy_name, null)
  aws_node_termination_handler_sqs_queue_arns              = try(each.value.aws_node_termination_handler_sqs_queue_arns, var.defaults.aws_node_termination_handler_sqs_queue_arns, [])
  aws_privateca_issuer_acmca_arns                          = try(each.value.aws_privateca_issuer_acmca_arns, var.defaults.aws_privateca_issuer_acmca_arns, [])
  aws_privateca_issuer_policy_name                         = try(each.value.aws_privateca_issuer_policy_name, var.defaults.aws_privateca_issuer_policy_name, null)
  aws_vpc_cni_enable_ipv4                                  = try(each.value.aws_vpc_cni_enable_ipv4, var.defaults.aws_vpc_cni_enable_ipv4, false)
  aws_vpc_cni_enable_ipv6                                  = try(each.value.aws_vpc_cni_enable_ipv6, var.defaults.aws_vpc_cni_enable_ipv6, false)
  aws_vpc_cni_policy_name                                  = try(each.value.aws_vpc_cni_policy_name, var.defaults.aws_vpc_cni_policy_name, null)
  cert_manager_hosted_zone_arns                            = try(each.value.cert_manager_hosted_zone_arns, var.defaults.cert_manager_hosted_zone_arns, [])
  cert_manager_policy_name                                 = try(each.value.cert_manager_policy_name, var.defaults.cert_manager_policy_name, null)
  cluster_autoscaler_cluster_names                         = try(each.value.cluster_autoscaler_cluster_names, var.defaults.cluster_autoscaler_cluster_names, [])
  cluster_autoscaler_policy_name                           = try(each.value.cluster_autoscaler_policy_name, var.defaults.cluster_autoscaler_policy_name, null)
  create                                                   = try(each.value.create, var.defaults.create, true)
  custom_policy_description                                = try(each.value.custom_policy_description, var.defaults.custom_policy_description, "Custom IAM Policy")
  description                                              = try(each.value.description, var.defaults.description, null)
  external_dns_hosted_zone_arns                            = try(each.value.external_dns_hosted_zone_arns, var.defaults.external_dns_hosted_zone_arns, [])
  external_dns_policy_name                                 = try(each.value.external_dns_policy_name, var.defaults.external_dns_policy_name, null)
  external_secrets_create_permission                       = try(each.value.external_secrets_create_permission, var.defaults.external_secrets_create_permission, false)
  external_secrets_kms_key_arns                            = try(each.value.external_secrets_kms_key_arns, var.defaults.external_secrets_kms_key_arns, [])
  external_secrets_policy_name                             = try(each.value.external_secrets_policy_name, var.defaults.external_secrets_policy_name, null)
  external_secrets_secrets_manager_arns                    = try(each.value.external_secrets_secrets_manager_arns, var.defaults.external_secrets_secrets_manager_arns, [])
  external_secrets_ssm_parameter_arns                      = try(each.value.external_secrets_ssm_parameter_arns, var.defaults.external_secrets_ssm_parameter_arns, [])
  max_session_duration                                     = try(each.value.max_session_duration, var.defaults.max_session_duration, null)
  mountpoint_s3_csi_bucket_arns                            = try(each.value.mountpoint_s3_csi_bucket_arns, var.defaults.mountpoint_s3_csi_bucket_arns, [])
  mountpoint_s3_csi_bucket_path_arns                       = try(each.value.mountpoint_s3_csi_bucket_path_arns, var.defaults.mountpoint_s3_csi_bucket_path_arns, [])
  mountpoint_s3_csi_policy_name                            = try(each.value.mountpoint_s3_csi_policy_name, var.defaults.mountpoint_s3_csi_policy_name, null)
  name                                                     = try(each.value.name, var.defaults.name, "")
  override_policy_documents                                = try(each.value.override_policy_documents, var.defaults.override_policy_documents, [])
  path                                                     = try(each.value.path, var.defaults.path, "/")
  permissions_boundary_arn                                 = try(each.value.permissions_boundary_arn, var.defaults.permissions_boundary_arn, null)
  policy_name_prefix                                       = try(each.value.policy_name_prefix, var.defaults.policy_name_prefix, "AmazonEKS_")
  policy_statements                                        = try(each.value.policy_statements, var.defaults.policy_statements, [])
  source_policy_documents                                  = try(each.value.source_policy_documents, var.defaults.source_policy_documents, [])
  tags                                                     = try(each.value.tags, var.defaults.tags, {})
  trust_policy_statements                                  = try(each.value.trust_policy_statements, var.defaults.trust_policy_statements, [])
  use_name_prefix                                          = try(each.value.use_name_prefix, var.defaults.use_name_prefix, true)
  velero_policy_name                                       = try(each.value.velero_policy_name, var.defaults.velero_policy_name, null)
  velero_s3_bucket_arns                                    = try(each.value.velero_s3_bucket_arns, var.defaults.velero_s3_bucket_arns, [])
  velero_s3_bucket_path_arns                               = try(each.value.velero_s3_bucket_path_arns, var.defaults.velero_s3_bucket_path_arns, [])
}
