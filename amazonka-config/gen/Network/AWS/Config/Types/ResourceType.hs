{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.ResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ResourceType
  ( ResourceType
      ( ..,
        ResourceTypeAWSACMCertificate,
        ResourceTypeAWSAPIGATEWAYV2Api,
        ResourceTypeAWSAPIGATEWAYV2Stage,
        ResourceTypeAWSApiGatewayRestApi,
        ResourceTypeAWSApiGatewayStage,
        ResourceTypeAWSAutoScalingAutoScalingGroup,
        ResourceTypeAWSAutoScalingLaunchConfiguration,
        ResourceTypeAWSAutoScalingScalingPolicy,
        ResourceTypeAWSAutoScalingScheduledAction,
        ResourceTypeAWSCloudFormationStack,
        ResourceTypeAWSCloudFrontDistribution,
        ResourceTypeAWSCloudFrontStreamingDistribution,
        ResourceTypeAWSCloudTrailTrail,
        ResourceTypeAWSCloudWatchAlarm,
        ResourceTypeAWSCodeBuildProject,
        ResourceTypeAWSCodePipelinePipeline,
        ResourceTypeAWSConfigResourceCompliance,
        ResourceTypeAWSDynamoDBTable,
        ResourceTypeAWSEC2CustomerGateway,
        ResourceTypeAWSEC2EIP,
        ResourceTypeAWSEC2EgressOnlyInternetGateway,
        ResourceTypeAWSEC2FlowLog,
        ResourceTypeAWSEC2Host,
        ResourceTypeAWSEC2Instance,
        ResourceTypeAWSEC2InternetGateway,
        ResourceTypeAWSEC2NatGateway,
        ResourceTypeAWSEC2NetworkAcl,
        ResourceTypeAWSEC2NetworkInterface,
        ResourceTypeAWSEC2RegisteredHAInstance,
        ResourceTypeAWSEC2RouteTable,
        ResourceTypeAWSEC2SecurityGroup,
        ResourceTypeAWSEC2Subnet,
        ResourceTypeAWSEC2VPC,
        ResourceTypeAWSEC2VPCEndpoint,
        ResourceTypeAWSEC2VPCEndpointService,
        ResourceTypeAWSEC2VPCPeeringConnection,
        ResourceTypeAWSEC2VPNConnection,
        ResourceTypeAWSEC2VPNGateway,
        ResourceTypeAWSEC2Volume,
        ResourceTypeAWSELASTICLOADBALANCINGV2LoadBalancer,
        ResourceTypeAWSElasticBeanstalkApplication,
        ResourceTypeAWSElasticBeanstalkApplicationVersion,
        ResourceTypeAWSElasticBeanstalkEnvironment,
        ResourceTypeAWSElasticLoadBalancingLoadBalancer,
        ResourceTypeAWSElasticsearchDomain,
        ResourceTypeAWSIAMGroup,
        ResourceTypeAWSIAMPolicy,
        ResourceTypeAWSIAMRole,
        ResourceTypeAWSIAMUser,
        ResourceTypeAWSKMSKey,
        ResourceTypeAWSLambdaFunction,
        ResourceTypeAWSNetworkFirewallFirewall,
        ResourceTypeAWSNetworkFirewallFirewallPolicy,
        ResourceTypeAWSNetworkFirewallRuleGroup,
        ResourceTypeAWSQLDBLedger,
        ResourceTypeAWSRDSDBCluster,
        ResourceTypeAWSRDSDBClusterSnapshot,
        ResourceTypeAWSRDSDBInstance,
        ResourceTypeAWSRDSDBSecurityGroup,
        ResourceTypeAWSRDSDBSnapshot,
        ResourceTypeAWSRDSDBSubnetGroup,
        ResourceTypeAWSRDSEventSubscription,
        ResourceTypeAWSRedshiftCluster,
        ResourceTypeAWSRedshiftClusterParameterGroup,
        ResourceTypeAWSRedshiftClusterSecurityGroup,
        ResourceTypeAWSRedshiftClusterSnapshot,
        ResourceTypeAWSRedshiftClusterSubnetGroup,
        ResourceTypeAWSRedshiftEventSubscription,
        ResourceTypeAWSS3AccountPublicAccessBlock,
        ResourceTypeAWSS3Bucket,
        ResourceTypeAWSSNSTopic,
        ResourceTypeAWSSQSQueue,
        ResourceTypeAWSSSMAssociationCompliance,
        ResourceTypeAWSSSMFileData,
        ResourceTypeAWSSSMManagedInstanceInventory,
        ResourceTypeAWSSSMPatchCompliance,
        ResourceTypeAWSSecretsManagerSecret,
        ResourceTypeAWSServiceCatalogCloudFormationProduct,
        ResourceTypeAWSServiceCatalogCloudFormationProvisionedProduct,
        ResourceTypeAWSServiceCatalogPortfolio,
        ResourceTypeAWSShieldProtection,
        ResourceTypeAWSShieldRegionalProtection,
        ResourceTypeAWSWAFRateBasedRule,
        ResourceTypeAWSWAFRegionalRateBasedRule,
        ResourceTypeAWSWAFRegionalRule,
        ResourceTypeAWSWAFRegionalRuleGroup,
        ResourceTypeAWSWAFRegionalWebACL,
        ResourceTypeAWSWAFRule,
        ResourceTypeAWSWAFRuleGroup,
        ResourceTypeAWSWAFV2IPSet,
        ResourceTypeAWSWAFV2ManagedRuleSet,
        ResourceTypeAWSWAFV2RegexPatternSet,
        ResourceTypeAWSWAFV2RuleGroup,
        ResourceTypeAWSWAFV2WebACL,
        ResourceTypeAWSWAFWebACL,
        ResourceTypeAWSXRayEncryptionConfig
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ResourceType = ResourceType'
  { fromResourceType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ResourceTypeAWSACMCertificate :: ResourceType
pattern ResourceTypeAWSACMCertificate = ResourceType' "AWS::ACM::Certificate"

pattern ResourceTypeAWSAPIGATEWAYV2Api :: ResourceType
pattern ResourceTypeAWSAPIGATEWAYV2Api = ResourceType' "AWS::ApiGatewayV2::Api"

pattern ResourceTypeAWSAPIGATEWAYV2Stage :: ResourceType
pattern ResourceTypeAWSAPIGATEWAYV2Stage = ResourceType' "AWS::ApiGatewayV2::Stage"

pattern ResourceTypeAWSApiGatewayRestApi :: ResourceType
pattern ResourceTypeAWSApiGatewayRestApi = ResourceType' "AWS::ApiGateway::RestApi"

pattern ResourceTypeAWSApiGatewayStage :: ResourceType
pattern ResourceTypeAWSApiGatewayStage = ResourceType' "AWS::ApiGateway::Stage"

pattern ResourceTypeAWSAutoScalingAutoScalingGroup :: ResourceType
pattern ResourceTypeAWSAutoScalingAutoScalingGroup = ResourceType' "AWS::AutoScaling::AutoScalingGroup"

pattern ResourceTypeAWSAutoScalingLaunchConfiguration :: ResourceType
pattern ResourceTypeAWSAutoScalingLaunchConfiguration = ResourceType' "AWS::AutoScaling::LaunchConfiguration"

pattern ResourceTypeAWSAutoScalingScalingPolicy :: ResourceType
pattern ResourceTypeAWSAutoScalingScalingPolicy = ResourceType' "AWS::AutoScaling::ScalingPolicy"

pattern ResourceTypeAWSAutoScalingScheduledAction :: ResourceType
pattern ResourceTypeAWSAutoScalingScheduledAction = ResourceType' "AWS::AutoScaling::ScheduledAction"

pattern ResourceTypeAWSCloudFormationStack :: ResourceType
pattern ResourceTypeAWSCloudFormationStack = ResourceType' "AWS::CloudFormation::Stack"

pattern ResourceTypeAWSCloudFrontDistribution :: ResourceType
pattern ResourceTypeAWSCloudFrontDistribution = ResourceType' "AWS::CloudFront::Distribution"

pattern ResourceTypeAWSCloudFrontStreamingDistribution :: ResourceType
pattern ResourceTypeAWSCloudFrontStreamingDistribution = ResourceType' "AWS::CloudFront::StreamingDistribution"

pattern ResourceTypeAWSCloudTrailTrail :: ResourceType
pattern ResourceTypeAWSCloudTrailTrail = ResourceType' "AWS::CloudTrail::Trail"

pattern ResourceTypeAWSCloudWatchAlarm :: ResourceType
pattern ResourceTypeAWSCloudWatchAlarm = ResourceType' "AWS::CloudWatch::Alarm"

pattern ResourceTypeAWSCodeBuildProject :: ResourceType
pattern ResourceTypeAWSCodeBuildProject = ResourceType' "AWS::CodeBuild::Project"

pattern ResourceTypeAWSCodePipelinePipeline :: ResourceType
pattern ResourceTypeAWSCodePipelinePipeline = ResourceType' "AWS::CodePipeline::Pipeline"

pattern ResourceTypeAWSConfigResourceCompliance :: ResourceType
pattern ResourceTypeAWSConfigResourceCompliance = ResourceType' "AWS::Config::ResourceCompliance"

pattern ResourceTypeAWSDynamoDBTable :: ResourceType
pattern ResourceTypeAWSDynamoDBTable = ResourceType' "AWS::DynamoDB::Table"

pattern ResourceTypeAWSEC2CustomerGateway :: ResourceType
pattern ResourceTypeAWSEC2CustomerGateway = ResourceType' "AWS::EC2::CustomerGateway"

pattern ResourceTypeAWSEC2EIP :: ResourceType
pattern ResourceTypeAWSEC2EIP = ResourceType' "AWS::EC2::EIP"

pattern ResourceTypeAWSEC2EgressOnlyInternetGateway :: ResourceType
pattern ResourceTypeAWSEC2EgressOnlyInternetGateway = ResourceType' "AWS::EC2::EgressOnlyInternetGateway"

pattern ResourceTypeAWSEC2FlowLog :: ResourceType
pattern ResourceTypeAWSEC2FlowLog = ResourceType' "AWS::EC2::FlowLog"

pattern ResourceTypeAWSEC2Host :: ResourceType
pattern ResourceTypeAWSEC2Host = ResourceType' "AWS::EC2::Host"

pattern ResourceTypeAWSEC2Instance :: ResourceType
pattern ResourceTypeAWSEC2Instance = ResourceType' "AWS::EC2::Instance"

pattern ResourceTypeAWSEC2InternetGateway :: ResourceType
pattern ResourceTypeAWSEC2InternetGateway = ResourceType' "AWS::EC2::InternetGateway"

pattern ResourceTypeAWSEC2NatGateway :: ResourceType
pattern ResourceTypeAWSEC2NatGateway = ResourceType' "AWS::EC2::NatGateway"

pattern ResourceTypeAWSEC2NetworkAcl :: ResourceType
pattern ResourceTypeAWSEC2NetworkAcl = ResourceType' "AWS::EC2::NetworkAcl"

pattern ResourceTypeAWSEC2NetworkInterface :: ResourceType
pattern ResourceTypeAWSEC2NetworkInterface = ResourceType' "AWS::EC2::NetworkInterface"

pattern ResourceTypeAWSEC2RegisteredHAInstance :: ResourceType
pattern ResourceTypeAWSEC2RegisteredHAInstance = ResourceType' "AWS::EC2::RegisteredHAInstance"

pattern ResourceTypeAWSEC2RouteTable :: ResourceType
pattern ResourceTypeAWSEC2RouteTable = ResourceType' "AWS::EC2::RouteTable"

pattern ResourceTypeAWSEC2SecurityGroup :: ResourceType
pattern ResourceTypeAWSEC2SecurityGroup = ResourceType' "AWS::EC2::SecurityGroup"

pattern ResourceTypeAWSEC2Subnet :: ResourceType
pattern ResourceTypeAWSEC2Subnet = ResourceType' "AWS::EC2::Subnet"

pattern ResourceTypeAWSEC2VPC :: ResourceType
pattern ResourceTypeAWSEC2VPC = ResourceType' "AWS::EC2::VPC"

pattern ResourceTypeAWSEC2VPCEndpoint :: ResourceType
pattern ResourceTypeAWSEC2VPCEndpoint = ResourceType' "AWS::EC2::VPCEndpoint"

pattern ResourceTypeAWSEC2VPCEndpointService :: ResourceType
pattern ResourceTypeAWSEC2VPCEndpointService = ResourceType' "AWS::EC2::VPCEndpointService"

pattern ResourceTypeAWSEC2VPCPeeringConnection :: ResourceType
pattern ResourceTypeAWSEC2VPCPeeringConnection = ResourceType' "AWS::EC2::VPCPeeringConnection"

pattern ResourceTypeAWSEC2VPNConnection :: ResourceType
pattern ResourceTypeAWSEC2VPNConnection = ResourceType' "AWS::EC2::VPNConnection"

pattern ResourceTypeAWSEC2VPNGateway :: ResourceType
pattern ResourceTypeAWSEC2VPNGateway = ResourceType' "AWS::EC2::VPNGateway"

pattern ResourceTypeAWSEC2Volume :: ResourceType
pattern ResourceTypeAWSEC2Volume = ResourceType' "AWS::EC2::Volume"

pattern ResourceTypeAWSELASTICLOADBALANCINGV2LoadBalancer :: ResourceType
pattern ResourceTypeAWSELASTICLOADBALANCINGV2LoadBalancer = ResourceType' "AWS::ElasticLoadBalancingV2::LoadBalancer"

pattern ResourceTypeAWSElasticBeanstalkApplication :: ResourceType
pattern ResourceTypeAWSElasticBeanstalkApplication = ResourceType' "AWS::ElasticBeanstalk::Application"

pattern ResourceTypeAWSElasticBeanstalkApplicationVersion :: ResourceType
pattern ResourceTypeAWSElasticBeanstalkApplicationVersion = ResourceType' "AWS::ElasticBeanstalk::ApplicationVersion"

pattern ResourceTypeAWSElasticBeanstalkEnvironment :: ResourceType
pattern ResourceTypeAWSElasticBeanstalkEnvironment = ResourceType' "AWS::ElasticBeanstalk::Environment"

pattern ResourceTypeAWSElasticLoadBalancingLoadBalancer :: ResourceType
pattern ResourceTypeAWSElasticLoadBalancingLoadBalancer = ResourceType' "AWS::ElasticLoadBalancing::LoadBalancer"

pattern ResourceTypeAWSElasticsearchDomain :: ResourceType
pattern ResourceTypeAWSElasticsearchDomain = ResourceType' "AWS::Elasticsearch::Domain"

pattern ResourceTypeAWSIAMGroup :: ResourceType
pattern ResourceTypeAWSIAMGroup = ResourceType' "AWS::IAM::Group"

pattern ResourceTypeAWSIAMPolicy :: ResourceType
pattern ResourceTypeAWSIAMPolicy = ResourceType' "AWS::IAM::Policy"

pattern ResourceTypeAWSIAMRole :: ResourceType
pattern ResourceTypeAWSIAMRole = ResourceType' "AWS::IAM::Role"

pattern ResourceTypeAWSIAMUser :: ResourceType
pattern ResourceTypeAWSIAMUser = ResourceType' "AWS::IAM::User"

pattern ResourceTypeAWSKMSKey :: ResourceType
pattern ResourceTypeAWSKMSKey = ResourceType' "AWS::KMS::Key"

pattern ResourceTypeAWSLambdaFunction :: ResourceType
pattern ResourceTypeAWSLambdaFunction = ResourceType' "AWS::Lambda::Function"

pattern ResourceTypeAWSNetworkFirewallFirewall :: ResourceType
pattern ResourceTypeAWSNetworkFirewallFirewall = ResourceType' "AWS::NetworkFirewall::Firewall"

pattern ResourceTypeAWSNetworkFirewallFirewallPolicy :: ResourceType
pattern ResourceTypeAWSNetworkFirewallFirewallPolicy = ResourceType' "AWS::NetworkFirewall::FirewallPolicy"

pattern ResourceTypeAWSNetworkFirewallRuleGroup :: ResourceType
pattern ResourceTypeAWSNetworkFirewallRuleGroup = ResourceType' "AWS::NetworkFirewall::RuleGroup"

pattern ResourceTypeAWSQLDBLedger :: ResourceType
pattern ResourceTypeAWSQLDBLedger = ResourceType' "AWS::QLDB::Ledger"

pattern ResourceTypeAWSRDSDBCluster :: ResourceType
pattern ResourceTypeAWSRDSDBCluster = ResourceType' "AWS::RDS::DBCluster"

pattern ResourceTypeAWSRDSDBClusterSnapshot :: ResourceType
pattern ResourceTypeAWSRDSDBClusterSnapshot = ResourceType' "AWS::RDS::DBClusterSnapshot"

pattern ResourceTypeAWSRDSDBInstance :: ResourceType
pattern ResourceTypeAWSRDSDBInstance = ResourceType' "AWS::RDS::DBInstance"

pattern ResourceTypeAWSRDSDBSecurityGroup :: ResourceType
pattern ResourceTypeAWSRDSDBSecurityGroup = ResourceType' "AWS::RDS::DBSecurityGroup"

pattern ResourceTypeAWSRDSDBSnapshot :: ResourceType
pattern ResourceTypeAWSRDSDBSnapshot = ResourceType' "AWS::RDS::DBSnapshot"

pattern ResourceTypeAWSRDSDBSubnetGroup :: ResourceType
pattern ResourceTypeAWSRDSDBSubnetGroup = ResourceType' "AWS::RDS::DBSubnetGroup"

pattern ResourceTypeAWSRDSEventSubscription :: ResourceType
pattern ResourceTypeAWSRDSEventSubscription = ResourceType' "AWS::RDS::EventSubscription"

pattern ResourceTypeAWSRedshiftCluster :: ResourceType
pattern ResourceTypeAWSRedshiftCluster = ResourceType' "AWS::Redshift::Cluster"

pattern ResourceTypeAWSRedshiftClusterParameterGroup :: ResourceType
pattern ResourceTypeAWSRedshiftClusterParameterGroup = ResourceType' "AWS::Redshift::ClusterParameterGroup"

pattern ResourceTypeAWSRedshiftClusterSecurityGroup :: ResourceType
pattern ResourceTypeAWSRedshiftClusterSecurityGroup = ResourceType' "AWS::Redshift::ClusterSecurityGroup"

pattern ResourceTypeAWSRedshiftClusterSnapshot :: ResourceType
pattern ResourceTypeAWSRedshiftClusterSnapshot = ResourceType' "AWS::Redshift::ClusterSnapshot"

pattern ResourceTypeAWSRedshiftClusterSubnetGroup :: ResourceType
pattern ResourceTypeAWSRedshiftClusterSubnetGroup = ResourceType' "AWS::Redshift::ClusterSubnetGroup"

pattern ResourceTypeAWSRedshiftEventSubscription :: ResourceType
pattern ResourceTypeAWSRedshiftEventSubscription = ResourceType' "AWS::Redshift::EventSubscription"

pattern ResourceTypeAWSS3AccountPublicAccessBlock :: ResourceType
pattern ResourceTypeAWSS3AccountPublicAccessBlock = ResourceType' "AWS::S3::AccountPublicAccessBlock"

pattern ResourceTypeAWSS3Bucket :: ResourceType
pattern ResourceTypeAWSS3Bucket = ResourceType' "AWS::S3::Bucket"

pattern ResourceTypeAWSSNSTopic :: ResourceType
pattern ResourceTypeAWSSNSTopic = ResourceType' "AWS::SNS::Topic"

pattern ResourceTypeAWSSQSQueue :: ResourceType
pattern ResourceTypeAWSSQSQueue = ResourceType' "AWS::SQS::Queue"

pattern ResourceTypeAWSSSMAssociationCompliance :: ResourceType
pattern ResourceTypeAWSSSMAssociationCompliance = ResourceType' "AWS::SSM::AssociationCompliance"

pattern ResourceTypeAWSSSMFileData :: ResourceType
pattern ResourceTypeAWSSSMFileData = ResourceType' "AWS::SSM::FileData"

pattern ResourceTypeAWSSSMManagedInstanceInventory :: ResourceType
pattern ResourceTypeAWSSSMManagedInstanceInventory = ResourceType' "AWS::SSM::ManagedInstanceInventory"

pattern ResourceTypeAWSSSMPatchCompliance :: ResourceType
pattern ResourceTypeAWSSSMPatchCompliance = ResourceType' "AWS::SSM::PatchCompliance"

pattern ResourceTypeAWSSecretsManagerSecret :: ResourceType
pattern ResourceTypeAWSSecretsManagerSecret = ResourceType' "AWS::SecretsManager::Secret"

pattern ResourceTypeAWSServiceCatalogCloudFormationProduct :: ResourceType
pattern ResourceTypeAWSServiceCatalogCloudFormationProduct = ResourceType' "AWS::ServiceCatalog::CloudFormationProduct"

pattern ResourceTypeAWSServiceCatalogCloudFormationProvisionedProduct :: ResourceType
pattern ResourceTypeAWSServiceCatalogCloudFormationProvisionedProduct = ResourceType' "AWS::ServiceCatalog::CloudFormationProvisionedProduct"

pattern ResourceTypeAWSServiceCatalogPortfolio :: ResourceType
pattern ResourceTypeAWSServiceCatalogPortfolio = ResourceType' "AWS::ServiceCatalog::Portfolio"

pattern ResourceTypeAWSShieldProtection :: ResourceType
pattern ResourceTypeAWSShieldProtection = ResourceType' "AWS::Shield::Protection"

pattern ResourceTypeAWSShieldRegionalProtection :: ResourceType
pattern ResourceTypeAWSShieldRegionalProtection = ResourceType' "AWS::ShieldRegional::Protection"

pattern ResourceTypeAWSWAFRateBasedRule :: ResourceType
pattern ResourceTypeAWSWAFRateBasedRule = ResourceType' "AWS::WAF::RateBasedRule"

pattern ResourceTypeAWSWAFRegionalRateBasedRule :: ResourceType
pattern ResourceTypeAWSWAFRegionalRateBasedRule = ResourceType' "AWS::WAFRegional::RateBasedRule"

pattern ResourceTypeAWSWAFRegionalRule :: ResourceType
pattern ResourceTypeAWSWAFRegionalRule = ResourceType' "AWS::WAFRegional::Rule"

pattern ResourceTypeAWSWAFRegionalRuleGroup :: ResourceType
pattern ResourceTypeAWSWAFRegionalRuleGroup = ResourceType' "AWS::WAFRegional::RuleGroup"

pattern ResourceTypeAWSWAFRegionalWebACL :: ResourceType
pattern ResourceTypeAWSWAFRegionalWebACL = ResourceType' "AWS::WAFRegional::WebACL"

pattern ResourceTypeAWSWAFRule :: ResourceType
pattern ResourceTypeAWSWAFRule = ResourceType' "AWS::WAF::Rule"

pattern ResourceTypeAWSWAFRuleGroup :: ResourceType
pattern ResourceTypeAWSWAFRuleGroup = ResourceType' "AWS::WAF::RuleGroup"

pattern ResourceTypeAWSWAFV2IPSet :: ResourceType
pattern ResourceTypeAWSWAFV2IPSet = ResourceType' "AWS::WAFv2::IPSet"

pattern ResourceTypeAWSWAFV2ManagedRuleSet :: ResourceType
pattern ResourceTypeAWSWAFV2ManagedRuleSet = ResourceType' "AWS::WAFv2::ManagedRuleSet"

pattern ResourceTypeAWSWAFV2RegexPatternSet :: ResourceType
pattern ResourceTypeAWSWAFV2RegexPatternSet = ResourceType' "AWS::WAFv2::RegexPatternSet"

pattern ResourceTypeAWSWAFV2RuleGroup :: ResourceType
pattern ResourceTypeAWSWAFV2RuleGroup = ResourceType' "AWS::WAFv2::RuleGroup"

pattern ResourceTypeAWSWAFV2WebACL :: ResourceType
pattern ResourceTypeAWSWAFV2WebACL = ResourceType' "AWS::WAFv2::WebACL"

pattern ResourceTypeAWSWAFWebACL :: ResourceType
pattern ResourceTypeAWSWAFWebACL = ResourceType' "AWS::WAF::WebACL"

pattern ResourceTypeAWSXRayEncryptionConfig :: ResourceType
pattern ResourceTypeAWSXRayEncryptionConfig = ResourceType' "AWS::XRay::EncryptionConfig"

{-# COMPLETE
  ResourceTypeAWSACMCertificate,
  ResourceTypeAWSAPIGATEWAYV2Api,
  ResourceTypeAWSAPIGATEWAYV2Stage,
  ResourceTypeAWSApiGatewayRestApi,
  ResourceTypeAWSApiGatewayStage,
  ResourceTypeAWSAutoScalingAutoScalingGroup,
  ResourceTypeAWSAutoScalingLaunchConfiguration,
  ResourceTypeAWSAutoScalingScalingPolicy,
  ResourceTypeAWSAutoScalingScheduledAction,
  ResourceTypeAWSCloudFormationStack,
  ResourceTypeAWSCloudFrontDistribution,
  ResourceTypeAWSCloudFrontStreamingDistribution,
  ResourceTypeAWSCloudTrailTrail,
  ResourceTypeAWSCloudWatchAlarm,
  ResourceTypeAWSCodeBuildProject,
  ResourceTypeAWSCodePipelinePipeline,
  ResourceTypeAWSConfigResourceCompliance,
  ResourceTypeAWSDynamoDBTable,
  ResourceTypeAWSEC2CustomerGateway,
  ResourceTypeAWSEC2EIP,
  ResourceTypeAWSEC2EgressOnlyInternetGateway,
  ResourceTypeAWSEC2FlowLog,
  ResourceTypeAWSEC2Host,
  ResourceTypeAWSEC2Instance,
  ResourceTypeAWSEC2InternetGateway,
  ResourceTypeAWSEC2NatGateway,
  ResourceTypeAWSEC2NetworkAcl,
  ResourceTypeAWSEC2NetworkInterface,
  ResourceTypeAWSEC2RegisteredHAInstance,
  ResourceTypeAWSEC2RouteTable,
  ResourceTypeAWSEC2SecurityGroup,
  ResourceTypeAWSEC2Subnet,
  ResourceTypeAWSEC2VPC,
  ResourceTypeAWSEC2VPCEndpoint,
  ResourceTypeAWSEC2VPCEndpointService,
  ResourceTypeAWSEC2VPCPeeringConnection,
  ResourceTypeAWSEC2VPNConnection,
  ResourceTypeAWSEC2VPNGateway,
  ResourceTypeAWSEC2Volume,
  ResourceTypeAWSELASTICLOADBALANCINGV2LoadBalancer,
  ResourceTypeAWSElasticBeanstalkApplication,
  ResourceTypeAWSElasticBeanstalkApplicationVersion,
  ResourceTypeAWSElasticBeanstalkEnvironment,
  ResourceTypeAWSElasticLoadBalancingLoadBalancer,
  ResourceTypeAWSElasticsearchDomain,
  ResourceTypeAWSIAMGroup,
  ResourceTypeAWSIAMPolicy,
  ResourceTypeAWSIAMRole,
  ResourceTypeAWSIAMUser,
  ResourceTypeAWSKMSKey,
  ResourceTypeAWSLambdaFunction,
  ResourceTypeAWSNetworkFirewallFirewall,
  ResourceTypeAWSNetworkFirewallFirewallPolicy,
  ResourceTypeAWSNetworkFirewallRuleGroup,
  ResourceTypeAWSQLDBLedger,
  ResourceTypeAWSRDSDBCluster,
  ResourceTypeAWSRDSDBClusterSnapshot,
  ResourceTypeAWSRDSDBInstance,
  ResourceTypeAWSRDSDBSecurityGroup,
  ResourceTypeAWSRDSDBSnapshot,
  ResourceTypeAWSRDSDBSubnetGroup,
  ResourceTypeAWSRDSEventSubscription,
  ResourceTypeAWSRedshiftCluster,
  ResourceTypeAWSRedshiftClusterParameterGroup,
  ResourceTypeAWSRedshiftClusterSecurityGroup,
  ResourceTypeAWSRedshiftClusterSnapshot,
  ResourceTypeAWSRedshiftClusterSubnetGroup,
  ResourceTypeAWSRedshiftEventSubscription,
  ResourceTypeAWSS3AccountPublicAccessBlock,
  ResourceTypeAWSS3Bucket,
  ResourceTypeAWSSNSTopic,
  ResourceTypeAWSSQSQueue,
  ResourceTypeAWSSSMAssociationCompliance,
  ResourceTypeAWSSSMFileData,
  ResourceTypeAWSSSMManagedInstanceInventory,
  ResourceTypeAWSSSMPatchCompliance,
  ResourceTypeAWSSecretsManagerSecret,
  ResourceTypeAWSServiceCatalogCloudFormationProduct,
  ResourceTypeAWSServiceCatalogCloudFormationProvisionedProduct,
  ResourceTypeAWSServiceCatalogPortfolio,
  ResourceTypeAWSShieldProtection,
  ResourceTypeAWSShieldRegionalProtection,
  ResourceTypeAWSWAFRateBasedRule,
  ResourceTypeAWSWAFRegionalRateBasedRule,
  ResourceTypeAWSWAFRegionalRule,
  ResourceTypeAWSWAFRegionalRuleGroup,
  ResourceTypeAWSWAFRegionalWebACL,
  ResourceTypeAWSWAFRule,
  ResourceTypeAWSWAFRuleGroup,
  ResourceTypeAWSWAFV2IPSet,
  ResourceTypeAWSWAFV2ManagedRuleSet,
  ResourceTypeAWSWAFV2RegexPatternSet,
  ResourceTypeAWSWAFV2RuleGroup,
  ResourceTypeAWSWAFV2WebACL,
  ResourceTypeAWSWAFWebACL,
  ResourceTypeAWSXRayEncryptionConfig,
  ResourceType'
  #-}

instance Prelude.FromText ResourceType where
  parser = ResourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResourceType where
  toText (ResourceType' x) = x

instance Prelude.Hashable ResourceType

instance Prelude.NFData ResourceType

instance Prelude.ToByteString ResourceType

instance Prelude.ToQuery ResourceType

instance Prelude.ToHeader ResourceType

instance Prelude.ToJSON ResourceType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ResourceType where
  parseJSON = Prelude.parseJSONText "ResourceType"
