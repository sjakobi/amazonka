{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon Elastic Compute Cloud__
--
-- Amazon Elastic Compute Cloud (Amazon EC2) provides secure and resizable computing capacity in the AWS Cloud. Using Amazon EC2 eliminates the need to invest in hardware up front, so you can develop and deploy applications faster. Amazon Virtual Private Cloud (Amazon VPC) enables you to provision a logically isolated section of the AWS Cloud where you can launch AWS resources in a virtual network that you've defined. Amazon Elastic Block Store (Amazon EBS) provides block level storage volumes for use with EC2 instances. EBS volumes are highly available and reliable storage volumes that can be attached to any running instance and used like a hard drive.
--
-- To learn more, see the following resources:
--
--     * Amazon EC2: <http://aws.amazon.com/ec2 AmazonEC2 product page> , <http://aws.amazon.com/documentation/ec2 Amazon EC2 documentation>
--
--     * Amazon EBS: <http://aws.amazon.com/ebs Amazon EBS product page> , <http://aws.amazon.com/documentation/ebs Amazon EBS documentation>
--
--     * Amazon VPC: <http://aws.amazon.com/vpc Amazon VPC product page> , <http://aws.amazon.com/documentation/vpc Amazon VPC documentation>
--
--     * AWS VPN: <http://aws.amazon.com/vpn AWS VPN product page> , <http://aws.amazon.com/documentation/vpn AWS VPN documentation>
module Network.AWS.EC2
  ( -- * Service Configuration
    ec2,

    -- * Errors
    -- $errors

    -- * Waiters
    -- $waiters

    -- ** InstanceTerminated
    instanceTerminated,

    -- ** VPCPeeringConnectionDeleted
    vpcPeeringConnectionDeleted,

    -- ** ExportTaskCompleted
    exportTaskCompleted,

    -- ** SnapshotCompleted
    snapshotCompleted,

    -- ** SpotInstanceRequestFulfilled
    spotInstanceRequestFulfilled,

    -- ** VolumeAvailable
    volumeAvailable,

    -- ** ImageAvailable
    imageAvailable,

    -- ** PasswordDataAvailable
    passwordDataAvailable,

    -- ** InstanceRunning
    instanceRunning,

    -- ** ExportTaskCancelled
    exportTaskCancelled,

    -- ** VPNConnectionAvailable
    vpnConnectionAvailable,

    -- ** VPCAvailable
    vpcAvailable,

    -- ** VolumeInUse
    volumeInUse,

    -- ** InstanceExists
    instanceExists,

    -- ** VPCPeeringConnectionExists
    vpcPeeringConnectionExists,

    -- ** InstanceStatusOK
    instanceStatusOK,

    -- ** SecurityGroupExists
    securityGroupExists,

    -- ** ConversionTaskCancelled
    conversionTaskCancelled,

    -- ** VPNConnectionDeleted
    vpnConnectionDeleted,

    -- ** InstanceStopped
    instanceStopped,

    -- ** ConversionTaskCompleted
    conversionTaskCompleted,

    -- ** BundleTaskComplete
    bundleTaskComplete,

    -- ** ConversionTaskDeleted
    conversionTaskDeleted,

    -- ** VolumeDeleted
    volumeDeleted,

    -- ** CustomerGatewayAvailable
    customerGatewayAvailable,

    -- ** VPCExists
    vpcExists,

    -- ** SystemStatusOK
    systemStatusOK,

    -- ** NetworkInterfaceAvailable
    networkInterfaceAvailable,

    -- ** NatGatewayAvailable
    natGatewayAvailable,

    -- ** SubnetAvailable
    subnetAvailable,

    -- * Operations
    -- $operations

    -- ** AcceptReservedInstancesExchangeQuote
    module Network.AWS.EC2.AcceptReservedInstancesExchangeQuote,

    -- ** DescribeInstanceCreditSpecifications (Paginated)
    module Network.AWS.EC2.DescribeInstanceCreditSpecifications,

    -- ** DescribeByoipCidrs (Paginated)
    module Network.AWS.EC2.DescribeByoipCidrs,

    -- ** DescribeLocalGatewayVirtualInterfaces (Paginated)
    module Network.AWS.EC2.DescribeLocalGatewayVirtualInterfaces,

    -- ** DeleteLocalGatewayRouteTableVPCAssociation
    module Network.AWS.EC2.DeleteLocalGatewayRouteTableVPCAssociation,

    -- ** DetachVolume
    module Network.AWS.EC2.DetachVolume,

    -- ** CreateTransitGatewayVPCAttachment
    module Network.AWS.EC2.CreateTransitGatewayVPCAttachment,

    -- ** DeleteVPCEndpointConnectionNotifications
    module Network.AWS.EC2.DeleteVPCEndpointConnectionNotifications,

    -- ** DeleteNetworkInsightsPath
    module Network.AWS.EC2.DeleteNetworkInsightsPath,

    -- ** AuthorizeSecurityGroupEgress
    module Network.AWS.EC2.AuthorizeSecurityGroupEgress,

    -- ** ModifyManagedPrefixList
    module Network.AWS.EC2.ModifyManagedPrefixList,

    -- ** DeleteTransitGatewayPrefixListReference
    module Network.AWS.EC2.DeleteTransitGatewayPrefixListReference,

    -- ** DeleteTransitGatewayRoute
    module Network.AWS.EC2.DeleteTransitGatewayRoute,

    -- ** DescribeVPCPeeringConnections (Paginated)
    module Network.AWS.EC2.DescribeVPCPeeringConnections,

    -- ** DescribeInstances (Paginated)
    module Network.AWS.EC2.DescribeInstances,

    -- ** DeregisterInstanceEventNotificationAttributes
    module Network.AWS.EC2.DeregisterInstanceEventNotificationAttributes,

    -- ** CreateTransitGatewayMulticastDomain
    module Network.AWS.EC2.CreateTransitGatewayMulticastDomain,

    -- ** AssociateTransitGatewayMulticastDomain
    module Network.AWS.EC2.AssociateTransitGatewayMulticastDomain,

    -- ** ReleaseAddress
    module Network.AWS.EC2.ReleaseAddress,

    -- ** DeregisterTransitGatewayMulticastGroupMembers
    module Network.AWS.EC2.DeregisterTransitGatewayMulticastGroupMembers,

    -- ** GetHostReservationPurchasePreview
    module Network.AWS.EC2.GetHostReservationPurchasePreview,

    -- ** CancelBundleTask
    module Network.AWS.EC2.CancelBundleTask,

    -- ** GetCapacityReservationUsage
    module Network.AWS.EC2.GetCapacityReservationUsage,

    -- ** CreateTransitGatewayConnectPeer
    module Network.AWS.EC2.CreateTransitGatewayConnectPeer,

    -- ** ModifyVPCTenancy
    module Network.AWS.EC2.ModifyVPCTenancy,

    -- ** CreateVPCEndpointServiceConfiguration
    module Network.AWS.EC2.CreateVPCEndpointServiceConfiguration,

    -- ** DescribeExportTasks
    module Network.AWS.EC2.DescribeExportTasks,

    -- ** GetTransitGatewayMulticastDomainAssociations (Paginated)
    module Network.AWS.EC2.GetTransitGatewayMulticastDomainAssociations,

    -- ** DisableEBSEncryptionByDefault
    module Network.AWS.EC2.DisableEBSEncryptionByDefault,

    -- ** AssociateVPCCidrBlock
    module Network.AWS.EC2.AssociateVPCCidrBlock,

    -- ** CreateNetworkACL
    module Network.AWS.EC2.CreateNetworkACL,

    -- ** AcceptTransitGatewayPeeringAttachment
    module Network.AWS.EC2.AcceptTransitGatewayPeeringAttachment,

    -- ** DeleteLaunchTemplate
    module Network.AWS.EC2.DeleteLaunchTemplate,

    -- ** DeleteVPC
    module Network.AWS.EC2.DeleteVPC,

    -- ** DeleteFleets
    module Network.AWS.EC2.DeleteFleets,

    -- ** GetAssociatedIPv6PoolCidrs (Paginated)
    module Network.AWS.EC2.GetAssociatedIPv6PoolCidrs,

    -- ** DescribeTrafficMirrorSessions (Paginated)
    module Network.AWS.EC2.DescribeTrafficMirrorSessions,

    -- ** ImportInstance
    module Network.AWS.EC2.ImportInstance,

    -- ** DescribeLocalGatewayRouteTables (Paginated)
    module Network.AWS.EC2.DescribeLocalGatewayRouteTables,

    -- ** CreateNetworkInterfacePermission
    module Network.AWS.EC2.CreateNetworkInterfacePermission,

    -- ** CreateVPNGateway
    module Network.AWS.EC2.CreateVPNGateway,

    -- ** GetTransitGatewayRouteTableAssociations (Paginated)
    module Network.AWS.EC2.GetTransitGatewayRouteTableAssociations,

    -- ** RejectTransitGatewayVPCAttachment
    module Network.AWS.EC2.RejectTransitGatewayVPCAttachment,

    -- ** ModifyVolumeAttribute
    module Network.AWS.EC2.ModifyVolumeAttribute,

    -- ** DescribePrefixLists (Paginated)
    module Network.AWS.EC2.DescribePrefixLists,

    -- ** DetachNetworkInterface
    module Network.AWS.EC2.DetachNetworkInterface,

    -- ** DeleteVPCEndpoints
    module Network.AWS.EC2.DeleteVPCEndpoints,

    -- ** DescribeVPCClassicLink
    module Network.AWS.EC2.DescribeVPCClassicLink,

    -- ** UpdateSecurityGroupRuleDescriptionsIngress
    module Network.AWS.EC2.UpdateSecurityGroupRuleDescriptionsIngress,

    -- ** DescribeClientVPNEndpoints (Paginated)
    module Network.AWS.EC2.DescribeClientVPNEndpoints,

    -- ** DisassociateAddress
    module Network.AWS.EC2.DisassociateAddress,

    -- ** DescribeScheduledInstanceAvailability (Paginated)
    module Network.AWS.EC2.DescribeScheduledInstanceAvailability,

    -- ** RejectVPCEndpointConnections
    module Network.AWS.EC2.RejectVPCEndpointConnections,

    -- ** CreateTransitGatewayRouteTable
    module Network.AWS.EC2.CreateTransitGatewayRouteTable,

    -- ** DescribeTags (Paginated)
    module Network.AWS.EC2.DescribeTags,

    -- ** AssociateTransitGatewayRouteTable
    module Network.AWS.EC2.AssociateTransitGatewayRouteTable,

    -- ** DeleteFlowLogs
    module Network.AWS.EC2.DeleteFlowLogs,

    -- ** CreateDefaultSubnet
    module Network.AWS.EC2.CreateDefaultSubnet,

    -- ** DeleteTrafficMirrorTarget
    module Network.AWS.EC2.DeleteTrafficMirrorTarget,

    -- ** AcceptTransitGatewayMulticastDomainAssociations
    module Network.AWS.EC2.AcceptTransitGatewayMulticastDomainAssociations,

    -- ** DescribeLaunchTemplateVersions (Paginated)
    module Network.AWS.EC2.DescribeLaunchTemplateVersions,

    -- ** DescribeAvailabilityZones
    module Network.AWS.EC2.DescribeAvailabilityZones,

    -- ** GetReservedInstancesExchangeQuote
    module Network.AWS.EC2.GetReservedInstancesExchangeQuote,

    -- ** DeleteVPNGateway
    module Network.AWS.EC2.DeleteVPNGateway,

    -- ** CreateKeyPair
    module Network.AWS.EC2.CreateKeyPair,

    -- ** ExportTransitGatewayRoutes
    module Network.AWS.EC2.ExportTransitGatewayRoutes,

    -- ** CopySnapshot
    module Network.AWS.EC2.CopySnapshot,

    -- ** DescribeElasticGpus
    module Network.AWS.EC2.DescribeElasticGpus,

    -- ** StartNetworkInsightsAnalysis
    module Network.AWS.EC2.StartNetworkInsightsAnalysis,

    -- ** DescribeFpgaImages (Paginated)
    module Network.AWS.EC2.DescribeFpgaImages,

    -- ** CreateFlowLogs
    module Network.AWS.EC2.CreateFlowLogs,

    -- ** CreateLaunchTemplate
    module Network.AWS.EC2.CreateLaunchTemplate,

    -- ** DescribeImportImageTasks (Paginated)
    module Network.AWS.EC2.DescribeImportImageTasks,

    -- ** DeleteTransitGatewayRouteTable
    module Network.AWS.EC2.DeleteTransitGatewayRouteTable,

    -- ** DeleteNetworkACL
    module Network.AWS.EC2.DeleteNetworkACL,

    -- ** MoveAddressToVPC
    module Network.AWS.EC2.MoveAddressToVPC,

    -- ** DescribeFleetInstances
    module Network.AWS.EC2.DescribeFleetInstances,

    -- ** RestoreAddressToClassic
    module Network.AWS.EC2.RestoreAddressToClassic,

    -- ** DeleteNetworkInterfacePermission
    module Network.AWS.EC2.DeleteNetworkInterfacePermission,

    -- ** DescribeRouteTables (Paginated)
    module Network.AWS.EC2.DescribeRouteTables,

    -- ** UpdateSecurityGroupRuleDescriptionsEgress
    module Network.AWS.EC2.UpdateSecurityGroupRuleDescriptionsEgress,

    -- ** ResetFpgaImageAttribute
    module Network.AWS.EC2.ResetFpgaImageAttribute,

    -- ** StartVPCEndpointServicePrivateDNSVerification
    module Network.AWS.EC2.StartVPCEndpointServicePrivateDNSVerification,

    -- ** DescribeVolumes (Paginated)
    module Network.AWS.EC2.DescribeVolumes,

    -- ** CreateClientVPNEndpoint
    module Network.AWS.EC2.CreateClientVPNEndpoint,

    -- ** RevokeClientVPNIngress
    module Network.AWS.EC2.RevokeClientVPNIngress,

    -- ** DeleteFpgaImage
    module Network.AWS.EC2.DeleteFpgaImage,

    -- ** ModifyVPCEndpoint
    module Network.AWS.EC2.ModifyVPCEndpoint,

    -- ** DescribeReservedInstancesModifications (Paginated)
    module Network.AWS.EC2.DescribeReservedInstancesModifications,

    -- ** DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations (Paginated)
    module Network.AWS.EC2.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations,

    -- ** EnableFastSnapshotRestores
    module Network.AWS.EC2.EnableFastSnapshotRestores,

    -- ** DescribeClientVPNRoutes (Paginated)
    module Network.AWS.EC2.DescribeClientVPNRoutes,

    -- ** GetEBSDefaultKMSKeyId
    module Network.AWS.EC2.GetEBSDefaultKMSKeyId,

    -- ** ModifyIdFormat
    module Network.AWS.EC2.ModifyIdFormat,

    -- ** DetachClassicLinkVPC
    module Network.AWS.EC2.DetachClassicLinkVPC,

    -- ** UnassignPrivateIPAddresses
    module Network.AWS.EC2.UnassignPrivateIPAddresses,

    -- ** AllocateHosts
    module Network.AWS.EC2.AllocateHosts,

    -- ** GetConsoleOutput
    module Network.AWS.EC2.GetConsoleOutput,

    -- ** ModifyVPNConnectionOptions
    module Network.AWS.EC2.ModifyVPNConnectionOptions,

    -- ** CancelImportTask
    module Network.AWS.EC2.CancelImportTask,

    -- ** RegisterImage
    module Network.AWS.EC2.RegisterImage,

    -- ** ModifyFleet
    module Network.AWS.EC2.ModifyFleet,

    -- ** DeleteRouteTable
    module Network.AWS.EC2.DeleteRouteTable,

    -- ** ModifyReservedInstances
    module Network.AWS.EC2.ModifyReservedInstances,

    -- ** DescribeImageAttribute
    module Network.AWS.EC2.DescribeImageAttribute,

    -- ** CreateTrafficMirrorFilterRule
    module Network.AWS.EC2.CreateTrafficMirrorFilterRule,

    -- ** MonitorInstances
    module Network.AWS.EC2.MonitorInstances,

    -- ** ModifyVPNConnection
    module Network.AWS.EC2.ModifyVPNConnection,

    -- ** DescribeSpotInstanceRequests (Paginated)
    module Network.AWS.EC2.DescribeSpotInstanceRequests,

    -- ** CancelConversionTask
    module Network.AWS.EC2.CancelConversionTask,

    -- ** ModifyVPCEndpointServiceConfiguration
    module Network.AWS.EC2.ModifyVPCEndpointServiceConfiguration,

    -- ** ModifyTransitGatewayVPCAttachment
    module Network.AWS.EC2.ModifyTransitGatewayVPCAttachment,

    -- ** AssociateRouteTable
    module Network.AWS.EC2.AssociateRouteTable,

    -- ** DescribeAccountAttributes
    module Network.AWS.EC2.DescribeAccountAttributes,

    -- ** DescribeLaunchTemplates (Paginated)
    module Network.AWS.EC2.DescribeLaunchTemplates,

    -- ** DescribeIPv6Pools (Paginated)
    module Network.AWS.EC2.DescribeIPv6Pools,

    -- ** DescribeLocalGateways (Paginated)
    module Network.AWS.EC2.DescribeLocalGateways,

    -- ** PurchaseHostReservation
    module Network.AWS.EC2.PurchaseHostReservation,

    -- ** ReportInstanceStatus
    module Network.AWS.EC2.ReportInstanceStatus,

    -- ** ModifyVPCEndpointServicePermissions
    module Network.AWS.EC2.ModifyVPCEndpointServicePermissions,

    -- ** ModifyHosts
    module Network.AWS.EC2.ModifyHosts,

    -- ** UnassignIPv6Addresses
    module Network.AWS.EC2.UnassignIPv6Addresses,

    -- ** GetManagedPrefixListAssociations (Paginated)
    module Network.AWS.EC2.GetManagedPrefixListAssociations,

    -- ** DisableFastSnapshotRestores
    module Network.AWS.EC2.DisableFastSnapshotRestores,

    -- ** DeleteEgressOnlyInternetGateway
    module Network.AWS.EC2.DeleteEgressOnlyInternetGateway,

    -- ** RequestSpotInstances
    module Network.AWS.EC2.RequestSpotInstances,

    -- ** RunInstances
    module Network.AWS.EC2.RunInstances,

    -- ** GetTransitGatewayRouteTablePropagations (Paginated)
    module Network.AWS.EC2.GetTransitGatewayRouteTablePropagations,

    -- ** AttachVolume
    module Network.AWS.EC2.AttachVolume,

    -- ** AcceptVPCEndpointConnections
    module Network.AWS.EC2.AcceptVPCEndpointConnections,

    -- ** CreateDHCPOptions
    module Network.AWS.EC2.CreateDHCPOptions,

    -- ** RebootInstances
    module Network.AWS.EC2.RebootInstances,

    -- ** ModifyImageAttribute
    module Network.AWS.EC2.ModifyImageAttribute,

    -- ** CreateManagedPrefixList
    module Network.AWS.EC2.CreateManagedPrefixList,

    -- ** SearchTransitGatewayRoutes
    module Network.AWS.EC2.SearchTransitGatewayRoutes,

    -- ** DescribeIdFormat
    module Network.AWS.EC2.DescribeIdFormat,

    -- ** RegisterTransitGatewayMulticastGroupSources
    module Network.AWS.EC2.RegisterTransitGatewayMulticastGroupSources,

    -- ** DescribeVPCEndpointConnectionNotifications (Paginated)
    module Network.AWS.EC2.DescribeVPCEndpointConnectionNotifications,

    -- ** DescribeVPCs (Paginated)
    module Network.AWS.EC2.DescribeVPCs,

    -- ** GetTransitGatewayPrefixListReferences (Paginated)
    module Network.AWS.EC2.GetTransitGatewayPrefixListReferences,

    -- ** CreateRouteTable
    module Network.AWS.EC2.CreateRouteTable,

    -- ** DescribeVolumesModifications (Paginated)
    module Network.AWS.EC2.DescribeVolumesModifications,

    -- ** AssociateIAMInstanceProfile
    module Network.AWS.EC2.AssociateIAMInstanceProfile,

    -- ** CreateImage
    module Network.AWS.EC2.CreateImage,

    -- ** DescribeTrafficMirrorTargets (Paginated)
    module Network.AWS.EC2.DescribeTrafficMirrorTargets,

    -- ** AssociateDHCPOptions
    module Network.AWS.EC2.AssociateDHCPOptions,

    -- ** DescribeSpotFleetRequestHistory
    module Network.AWS.EC2.DescribeSpotFleetRequestHistory,

    -- ** ModifyInstanceEventStartTime
    module Network.AWS.EC2.ModifyInstanceEventStartTime,

    -- ** DisassociateEnclaveCertificateIAMRole
    module Network.AWS.EC2.DisassociateEnclaveCertificateIAMRole,

    -- ** DeleteVPCPeeringConnection
    module Network.AWS.EC2.DeleteVPCPeeringConnection,

    -- ** ResetInstanceAttribute
    module Network.AWS.EC2.ResetInstanceAttribute,

    -- ** DescribeInstanceStatus (Paginated)
    module Network.AWS.EC2.DescribeInstanceStatus,

    -- ** AttachNetworkInterface
    module Network.AWS.EC2.AttachNetworkInterface,

    -- ** AssignIPv6Addresses
    module Network.AWS.EC2.AssignIPv6Addresses,

    -- ** CreateLocalGatewayRoute
    module Network.AWS.EC2.CreateLocalGatewayRoute,

    -- ** EnableVGWRoutePropagation
    module Network.AWS.EC2.EnableVGWRoutePropagation,

    -- ** DescribeVPCEndpoints (Paginated)
    module Network.AWS.EC2.DescribeVPCEndpoints,

    -- ** CreateNetworkACLEntry
    module Network.AWS.EC2.CreateNetworkACLEntry,

    -- ** DescribeStaleSecurityGroups (Paginated)
    module Network.AWS.EC2.DescribeStaleSecurityGroups,

    -- ** DescribeFlowLogs (Paginated)
    module Network.AWS.EC2.DescribeFlowLogs,

    -- ** DescribePlacementGroups
    module Network.AWS.EC2.DescribePlacementGroups,

    -- ** DescribeFleets (Paginated)
    module Network.AWS.EC2.DescribeFleets,

    -- ** ModifyIdentityIdFormat
    module Network.AWS.EC2.ModifyIdentityIdFormat,

    -- ** DescribeLocalGatewayVirtualInterfaceGroups (Paginated)
    module Network.AWS.EC2.DescribeLocalGatewayVirtualInterfaceGroups,

    -- ** ReplaceNetworkACLEntry
    module Network.AWS.EC2.ReplaceNetworkACLEntry,

    -- ** DeleteTags
    module Network.AWS.EC2.DeleteTags,

    -- ** DescribeTransitGatewayAttachments (Paginated)
    module Network.AWS.EC2.DescribeTransitGatewayAttachments,

    -- ** DescribeReservedInstancesOfferings (Paginated)
    module Network.AWS.EC2.DescribeReservedInstancesOfferings,

    -- ** ModifySnapshotAttribute
    module Network.AWS.EC2.ModifySnapshotAttribute,

    -- ** ConfirmProductInstance
    module Network.AWS.EC2.ConfirmProductInstance,

    -- ** DescribeVPNConnections
    module Network.AWS.EC2.DescribeVPNConnections,

    -- ** ModifyAvailabilityZoneGroup
    module Network.AWS.EC2.ModifyAvailabilityZoneGroup,

    -- ** DisassociateIAMInstanceProfile
    module Network.AWS.EC2.DisassociateIAMInstanceProfile,

    -- ** DisableVPCClassicLink
    module Network.AWS.EC2.DisableVPCClassicLink,

    -- ** GetGroupsForCapacityReservation (Paginated)
    module Network.AWS.EC2.GetGroupsForCapacityReservation,

    -- ** ImportVolume
    module Network.AWS.EC2.ImportVolume,

    -- ** DescribeAddresses
    module Network.AWS.EC2.DescribeAddresses,

    -- ** DeleteLocalGatewayRoute
    module Network.AWS.EC2.DeleteLocalGatewayRoute,

    -- ** DescribeVPCEndpointServiceConfigurations (Paginated)
    module Network.AWS.EC2.DescribeVPCEndpointServiceConfigurations,

    -- ** DescribeNetworkInterfaces (Paginated)
    module Network.AWS.EC2.DescribeNetworkInterfaces,

    -- ** DescribeVPCEndpointServices (Paginated)
    module Network.AWS.EC2.DescribeVPCEndpointServices,

    -- ** DeleteNetworkACLEntry
    module Network.AWS.EC2.DeleteNetworkACLEntry,

    -- ** GetTransitGatewayAttachmentPropagations (Paginated)
    module Network.AWS.EC2.GetTransitGatewayAttachmentPropagations,

    -- ** AssignPrivateIPAddresses
    module Network.AWS.EC2.AssignPrivateIPAddresses,

    -- ** DescribeNatGateways (Paginated)
    module Network.AWS.EC2.DescribeNatGateways,

    -- ** DescribeSnapshotAttribute
    module Network.AWS.EC2.DescribeSnapshotAttribute,

    -- ** DeleteSnapshot
    module Network.AWS.EC2.DeleteSnapshot,

    -- ** DeleteCarrierGateway
    module Network.AWS.EC2.DeleteCarrierGateway,

    -- ** DescribeTransitGatewayVPCAttachments (Paginated)
    module Network.AWS.EC2.DescribeTransitGatewayVPCAttachments,

    -- ** ModifyVPCEndpointConnectionNotification
    module Network.AWS.EC2.ModifyVPCEndpointConnectionNotification,

    -- ** PurchaseReservedInstancesOffering
    module Network.AWS.EC2.PurchaseReservedInstancesOffering,

    -- ** AuthorizeSecurityGroupIngress
    module Network.AWS.EC2.AuthorizeSecurityGroupIngress,

    -- ** GetConsoleScreenshot
    module Network.AWS.EC2.GetConsoleScreenshot,

    -- ** DisableVGWRoutePropagation
    module Network.AWS.EC2.DisableVGWRoutePropagation,

    -- ** DescribeTransitGatewayMulticastDomains (Paginated)
    module Network.AWS.EC2.DescribeTransitGatewayMulticastDomains,

    -- ** DescribeSubnets (Paginated)
    module Network.AWS.EC2.DescribeSubnets,

    -- ** UnmonitorInstances
    module Network.AWS.EC2.UnmonitorInstances,

    -- ** CancelSpotInstanceRequests
    module Network.AWS.EC2.CancelSpotInstanceRequests,

    -- ** CreateSpotDatafeedSubscription
    module Network.AWS.EC2.CreateSpotDatafeedSubscription,

    -- ** DisassociateRouteTable
    module Network.AWS.EC2.DisassociateRouteTable,

    -- ** DescribeTransitGatewayConnectPeers (Paginated)
    module Network.AWS.EC2.DescribeTransitGatewayConnectPeers,

    -- ** ModifyVPNTunnelCertificate
    module Network.AWS.EC2.ModifyVPNTunnelCertificate,

    -- ** RestoreManagedPrefixListVersion
    module Network.AWS.EC2.RestoreManagedPrefixListVersion,

    -- ** ModifyAddressAttribute
    module Network.AWS.EC2.ModifyAddressAttribute,

    -- ** CreateVPNConnection
    module Network.AWS.EC2.CreateVPNConnection,

    -- ** AssociateSubnetCidrBlock
    module Network.AWS.EC2.AssociateSubnetCidrBlock,

    -- ** AttachClassicLinkVPC
    module Network.AWS.EC2.AttachClassicLinkVPC,

    -- ** DescribeSpotPriceHistory (Paginated)
    module Network.AWS.EC2.DescribeSpotPriceHistory,

    -- ** DeleteQueuedReservedInstances
    module Network.AWS.EC2.DeleteQueuedReservedInstances,

    -- ** DescribeAggregateIdFormat
    module Network.AWS.EC2.DescribeAggregateIdFormat,

    -- ** DescribeReservedInstancesListings
    module Network.AWS.EC2.DescribeReservedInstancesListings,

    -- ** CopyImage
    module Network.AWS.EC2.CopyImage,

    -- ** CreateLocalGatewayRouteTableVPCAssociation
    module Network.AWS.EC2.CreateLocalGatewayRouteTableVPCAssociation,

    -- ** DescribeCarrierGateways (Paginated)
    module Network.AWS.EC2.DescribeCarrierGateways,

    -- ** DeleteInternetGateway
    module Network.AWS.EC2.DeleteInternetGateway,

    -- ** CreateFleet
    module Network.AWS.EC2.CreateFleet,

    -- ** ModifyClientVPNEndpoint
    module Network.AWS.EC2.ModifyClientVPNEndpoint,

    -- ** ModifyInstanceCapacityReservationAttributes
    module Network.AWS.EC2.ModifyInstanceCapacityReservationAttributes,

    -- ** ImportClientVPNClientCertificateRevocationList
    module Network.AWS.EC2.ImportClientVPNClientCertificateRevocationList,

    -- ** AssociateClientVPNTargetNetwork
    module Network.AWS.EC2.AssociateClientVPNTargetNetwork,

    -- ** CancelCapacityReservation
    module Network.AWS.EC2.CancelCapacityReservation,

    -- ** CancelReservedInstancesListing
    module Network.AWS.EC2.CancelReservedInstancesListing,

    -- ** DisableTransitGatewayRouteTablePropagation
    module Network.AWS.EC2.DisableTransitGatewayRouteTablePropagation,

    -- ** DescribeVPCClassicLinkDNSSupport (Paginated)
    module Network.AWS.EC2.DescribeVPCClassicLinkDNSSupport,

    -- ** CreateVPCEndpoint
    module Network.AWS.EC2.CreateVPCEndpoint,

    -- ** DescribeSnapshots (Paginated)
    module Network.AWS.EC2.DescribeSnapshots,

    -- ** DescribeImportSnapshotTasks (Paginated)
    module Network.AWS.EC2.DescribeImportSnapshotTasks,

    -- ** DescribeNetworkInterfaceAttribute
    module Network.AWS.EC2.DescribeNetworkInterfaceAttribute,

    -- ** DescribeInstanceEventNotificationAttributes
    module Network.AWS.EC2.DescribeInstanceEventNotificationAttributes,

    -- ** EnableEBSEncryptionByDefault
    module Network.AWS.EC2.EnableEBSEncryptionByDefault,

    -- ** ModifyTrafficMirrorFilterRule
    module Network.AWS.EC2.ModifyTrafficMirrorFilterRule,

    -- ** DescribeCoipPools (Paginated)
    module Network.AWS.EC2.DescribeCoipPools,

    -- ** CancelExportTask
    module Network.AWS.EC2.CancelExportTask,

    -- ** EnableVolumeIO
    module Network.AWS.EC2.EnableVolumeIO,

    -- ** ModifyTransitGateway
    module Network.AWS.EC2.ModifyTransitGateway,

    -- ** DescribeInstanceTypeOfferings (Paginated)
    module Network.AWS.EC2.DescribeInstanceTypeOfferings,

    -- ** CreateSubnet
    module Network.AWS.EC2.CreateSubnet,

    -- ** RequestSpotFleet
    module Network.AWS.EC2.RequestSpotFleet,

    -- ** DeleteVPNConnection
    module Network.AWS.EC2.DeleteVPNConnection,

    -- ** ModifySpotFleetRequest
    module Network.AWS.EC2.ModifySpotFleetRequest,

    -- ** DeregisterImage
    module Network.AWS.EC2.DeregisterImage,

    -- ** DetachVPNGateway
    module Network.AWS.EC2.DetachVPNGateway,

    -- ** CreateNetworkInterface
    module Network.AWS.EC2.CreateNetworkInterface,

    -- ** ModifyNetworkInterfaceAttribute
    module Network.AWS.EC2.ModifyNetworkInterfaceAttribute,

    -- ** CreateNatGateway
    module Network.AWS.EC2.CreateNatGateway,

    -- ** GetAssociatedEnclaveCertificateIAMRoles
    module Network.AWS.EC2.GetAssociatedEnclaveCertificateIAMRoles,

    -- ** CreateInternetGateway
    module Network.AWS.EC2.CreateInternetGateway,

    -- ** EnableTransitGatewayRouteTablePropagation
    module Network.AWS.EC2.EnableTransitGatewayRouteTablePropagation,

    -- ** ResetAddressAttribute
    module Network.AWS.EC2.ResetAddressAttribute,

    -- ** DescribeTransitGatewayConnects (Paginated)
    module Network.AWS.EC2.DescribeTransitGatewayConnects,

    -- ** DeletePlacementGroup
    module Network.AWS.EC2.DeletePlacementGroup,

    -- ** DescribeInstanceTypes (Paginated)
    module Network.AWS.EC2.DescribeInstanceTypes,

    -- ** DescribeBundleTasks
    module Network.AWS.EC2.DescribeBundleTasks,

    -- ** ModifySubnetAttribute
    module Network.AWS.EC2.ModifySubnetAttribute,

    -- ** DescribeSecurityGroups (Paginated)
    module Network.AWS.EC2.DescribeSecurityGroups,

    -- ** CreateClientVPNRoute
    module Network.AWS.EC2.CreateClientVPNRoute,

    -- ** DisassociateSubnetCidrBlock
    module Network.AWS.EC2.DisassociateSubnetCidrBlock,

    -- ** DescribeSpotDatafeedSubscription
    module Network.AWS.EC2.DescribeSpotDatafeedSubscription,

    -- ** CreateInstanceExportTask
    module Network.AWS.EC2.CreateInstanceExportTask,

    -- ** DisassociateClientVPNTargetNetwork
    module Network.AWS.EC2.DisassociateClientVPNTargetNetwork,

    -- ** SendDiagnosticInterrupt
    module Network.AWS.EC2.SendDiagnosticInterrupt,

    -- ** DescribeVPCAttribute
    module Network.AWS.EC2.DescribeVPCAttribute,

    -- ** DescribeSecurityGroupReferences
    module Network.AWS.EC2.DescribeSecurityGroupReferences,

    -- ** ModifyCapacityReservation
    module Network.AWS.EC2.ModifyCapacityReservation,

    -- ** DetachInternetGateway
    module Network.AWS.EC2.DetachInternetGateway,

    -- ** CreateVolume
    module Network.AWS.EC2.CreateVolume,

    -- ** ExportClientVPNClientConfiguration
    module Network.AWS.EC2.ExportClientVPNClientConfiguration,

    -- ** RevokeSecurityGroupEgress
    module Network.AWS.EC2.RevokeSecurityGroupEgress,

    -- ** DeleteKeyPair
    module Network.AWS.EC2.DeleteKeyPair,

    -- ** ModifyInstanceMetadataOptions
    module Network.AWS.EC2.ModifyInstanceMetadataOptions,

    -- ** DescribeEgressOnlyInternetGateways (Paginated)
    module Network.AWS.EC2.DescribeEgressOnlyInternetGateways,

    -- ** ModifyTrafficMirrorFilterNetworkServices
    module Network.AWS.EC2.ModifyTrafficMirrorFilterNetworkServices,

    -- ** ImportSnapshot
    module Network.AWS.EC2.ImportSnapshot,

    -- ** DescribeImages
    module Network.AWS.EC2.DescribeImages,

    -- ** DeprovisionByoipCidr
    module Network.AWS.EC2.DeprovisionByoipCidr,

    -- ** DescribeAddressesAttribute (Paginated)
    module Network.AWS.EC2.DescribeAddressesAttribute,

    -- ** AcceptVPCPeeringConnection
    module Network.AWS.EC2.AcceptVPCPeeringConnection,

    -- ** DescribeMovingAddresses (Paginated)
    module Network.AWS.EC2.DescribeMovingAddresses,

    -- ** CreateVPCEndpointConnectionNotification
    module Network.AWS.EC2.CreateVPCEndpointConnectionNotification,

    -- ** DescribeFleetHistory
    module Network.AWS.EC2.DescribeFleetHistory,

    -- ** DeleteVPCEndpointServiceConfigurations
    module Network.AWS.EC2.DeleteVPCEndpointServiceConfigurations,

    -- ** CreateVPC
    module Network.AWS.EC2.CreateVPC,

    -- ** SearchLocalGatewayRoutes (Paginated)
    module Network.AWS.EC2.SearchLocalGatewayRoutes,

    -- ** CreateTrafficMirrorTarget
    module Network.AWS.EC2.CreateTrafficMirrorTarget,

    -- ** DescribeVolumeStatus (Paginated)
    module Network.AWS.EC2.DescribeVolumeStatus,

    -- ** DescribeVolumeAttribute
    module Network.AWS.EC2.DescribeVolumeAttribute,

    -- ** DeleteClientVPNRoute
    module Network.AWS.EC2.DeleteClientVPNRoute,

    -- ** ModifyVPCPeeringConnectionOptions
    module Network.AWS.EC2.ModifyVPCPeeringConnectionOptions,

    -- ** DescribeSpotFleetInstances (Paginated)
    module Network.AWS.EC2.DescribeSpotFleetInstances,

    -- ** DescribePrincipalIdFormat (Paginated)
    module Network.AWS.EC2.DescribePrincipalIdFormat,

    -- ** ModifyInstanceCreditSpecification
    module Network.AWS.EC2.ModifyInstanceCreditSpecification,

    -- ** DisassociateTransitGatewayMulticastDomain
    module Network.AWS.EC2.DisassociateTransitGatewayMulticastDomain,

    -- ** DescribeManagedPrefixLists (Paginated)
    module Network.AWS.EC2.DescribeManagedPrefixLists,

    -- ** GetPasswordData
    module Network.AWS.EC2.GetPasswordData,

    -- ** DeleteVolume
    module Network.AWS.EC2.DeleteVolume,

    -- ** DescribeTransitGateways (Paginated)
    module Network.AWS.EC2.DescribeTransitGateways,

    -- ** DescribeSpotFleetRequests (Paginated)
    module Network.AWS.EC2.DescribeSpotFleetRequests,

    -- ** DescribeClientVPNConnections (Paginated)
    module Network.AWS.EC2.DescribeClientVPNConnections,

    -- ** SearchTransitGatewayMulticastGroups (Paginated)
    module Network.AWS.EC2.SearchTransitGatewayMulticastGroups,

    -- ** ModifyVPCAttribute
    module Network.AWS.EC2.ModifyVPCAttribute,

    -- ** RevokeSecurityGroupIngress
    module Network.AWS.EC2.RevokeSecurityGroupIngress,

    -- ** DescribeHostReservationOfferings (Paginated)
    module Network.AWS.EC2.DescribeHostReservationOfferings,

    -- ** DescribeTransitGatewayRouteTables (Paginated)
    module Network.AWS.EC2.DescribeTransitGatewayRouteTables,

    -- ** DescribeNetworkACLs (Paginated)
    module Network.AWS.EC2.DescribeNetworkACLs,

    -- ** RegisterTransitGatewayMulticastGroupMembers
    module Network.AWS.EC2.RegisterTransitGatewayMulticastGroupMembers,

    -- ** DescribeHosts (Paginated)
    module Network.AWS.EC2.DescribeHosts,

    -- ** DescribeVPNGateways
    module Network.AWS.EC2.DescribeVPNGateways,

    -- ** DescribeHostReservations (Paginated)
    module Network.AWS.EC2.DescribeHostReservations,

    -- ** DeleteManagedPrefixList
    module Network.AWS.EC2.DeleteManagedPrefixList,

    -- ** RejectVPCPeeringConnection
    module Network.AWS.EC2.RejectVPCPeeringConnection,

    -- ** ResetImageAttribute
    module Network.AWS.EC2.ResetImageAttribute,

    -- ** DescribeScheduledInstances (Paginated)
    module Network.AWS.EC2.DescribeScheduledInstances,

    -- ** AssociateEnclaveCertificateIAMRole
    module Network.AWS.EC2.AssociateEnclaveCertificateIAMRole,

    -- ** ModifyTransitGatewayPrefixListReference
    module Network.AWS.EC2.ModifyTransitGatewayPrefixListReference,

    -- ** DescribeFpgaImageAttribute
    module Network.AWS.EC2.DescribeFpgaImageAttribute,

    -- ** AdvertiseByoipCidr
    module Network.AWS.EC2.AdvertiseByoipCidr,

    -- ** DeleteVPNConnectionRoute
    module Network.AWS.EC2.DeleteVPNConnectionRoute,

    -- ** DescribeVPCEndpointServicePermissions (Paginated)
    module Network.AWS.EC2.DescribeVPCEndpointServicePermissions,

    -- ** DescribeVPCEndpointConnections (Paginated)
    module Network.AWS.EC2.DescribeVPCEndpointConnections,

    -- ** DescribeNetworkInterfacePermissions (Paginated)
    module Network.AWS.EC2.DescribeNetworkInterfacePermissions,

    -- ** CreateTrafficMirrorSession
    module Network.AWS.EC2.CreateTrafficMirrorSession,

    -- ** RegisterInstanceEventNotificationAttributes
    module Network.AWS.EC2.RegisterInstanceEventNotificationAttributes,

    -- ** RejectTransitGatewayMulticastDomainAssociations
    module Network.AWS.EC2.RejectTransitGatewayMulticastDomainAssociations,

    -- ** DeleteDHCPOptions
    module Network.AWS.EC2.DeleteDHCPOptions,

    -- ** DeleteTransitGateway
    module Network.AWS.EC2.DeleteTransitGateway,

    -- ** EnableVPCClassicLinkDNSSupport
    module Network.AWS.EC2.EnableVPCClassicLinkDNSSupport,

    -- ** DescribeRegions
    module Network.AWS.EC2.DescribeRegions,

    -- ** CreateEgressOnlyInternetGateway
    module Network.AWS.EC2.CreateEgressOnlyInternetGateway,

    -- ** CreateTransitGateway
    module Network.AWS.EC2.CreateTransitGateway,

    -- ** DeleteClientVPNEndpoint
    module Network.AWS.EC2.DeleteClientVPNEndpoint,

    -- ** ExportClientVPNClientCertificateRevocationList
    module Network.AWS.EC2.ExportClientVPNClientCertificateRevocationList,

    -- ** CreateLaunchTemplateVersion
    module Network.AWS.EC2.CreateLaunchTemplateVersion,

    -- ** CreateSnapshots
    module Network.AWS.EC2.CreateSnapshots,

    -- ** ModifyDefaultCreditSpecification
    module Network.AWS.EC2.ModifyDefaultCreditSpecification,

    -- ** ApplySecurityGroupsToClientVPNTargetNetwork
    module Network.AWS.EC2.ApplySecurityGroupsToClientVPNTargetNetwork,

    -- ** AttachVPNGateway
    module Network.AWS.EC2.AttachVPNGateway,

    -- ** CreateVPNConnectionRoute
    module Network.AWS.EC2.CreateVPNConnectionRoute,

    -- ** DescribeKeyPairs
    module Network.AWS.EC2.DescribeKeyPairs,

    -- ** AllocateAddress
    module Network.AWS.EC2.AllocateAddress,

    -- ** DeleteTrafficMirrorSession
    module Network.AWS.EC2.DeleteTrafficMirrorSession,

    -- ** GetManagedPrefixListEntries (Paginated)
    module Network.AWS.EC2.GetManagedPrefixListEntries,

    -- ** CreateFpgaImage
    module Network.AWS.EC2.CreateFpgaImage,

    -- ** ExportImage
    module Network.AWS.EC2.ExportImage,

    -- ** RejectTransitGatewayPeeringAttachment
    module Network.AWS.EC2.RejectTransitGatewayPeeringAttachment,

    -- ** DescribeConversionTasks
    module Network.AWS.EC2.DescribeConversionTasks,

    -- ** WithdrawByoipCidr
    module Network.AWS.EC2.WithdrawByoipCidr,

    -- ** DeleteTrafficMirrorFilterRule
    module Network.AWS.EC2.DeleteTrafficMirrorFilterRule,

    -- ** DescribeClassicLinkInstances (Paginated)
    module Network.AWS.EC2.DescribeClassicLinkInstances,

    -- ** TerminateInstances
    module Network.AWS.EC2.TerminateInstances,

    -- ** AcceptTransitGatewayVPCAttachment
    module Network.AWS.EC2.AcceptTransitGatewayVPCAttachment,

    -- ** DisableVPCClassicLinkDNSSupport
    module Network.AWS.EC2.DisableVPCClassicLinkDNSSupport,

    -- ** GetLaunchTemplateData
    module Network.AWS.EC2.GetLaunchTemplateData,

    -- ** DescribeReservedInstances
    module Network.AWS.EC2.DescribeReservedInstances,

    -- ** ModifyFpgaImageAttribute
    module Network.AWS.EC2.ModifyFpgaImageAttribute,

    -- ** EnableVPCClassicLink
    module Network.AWS.EC2.EnableVPCClassicLink,

    -- ** AttachInternetGateway
    module Network.AWS.EC2.AttachInternetGateway,

    -- ** DescribePublicIPv4Pools (Paginated)
    module Network.AWS.EC2.DescribePublicIPv4Pools,

    -- ** CreateCustomerGateway
    module Network.AWS.EC2.CreateCustomerGateway,

    -- ** DescribeIAMInstanceProfileAssociations (Paginated)
    module Network.AWS.EC2.DescribeIAMInstanceProfileAssociations,

    -- ** DescribeExportImageTasks (Paginated)
    module Network.AWS.EC2.DescribeExportImageTasks,

    -- ** ProvisionByoipCidr
    module Network.AWS.EC2.ProvisionByoipCidr,

    -- ** CreateReservedInstancesListing
    module Network.AWS.EC2.CreateReservedInstancesListing,

    -- ** DescribeClientVPNTargetNetworks (Paginated)
    module Network.AWS.EC2.DescribeClientVPNTargetNetworks,

    -- ** ModifyVPNTunnelOptions
    module Network.AWS.EC2.ModifyVPNTunnelOptions,

    -- ** ModifyInstancePlacement
    module Network.AWS.EC2.ModifyInstancePlacement,

    -- ** ImportKeyPair
    module Network.AWS.EC2.ImportKeyPair,

    -- ** DescribeNetworkInsightsAnalyses (Paginated)
    module Network.AWS.EC2.DescribeNetworkInsightsAnalyses,

    -- ** DeleteSecurityGroup
    module Network.AWS.EC2.DeleteSecurityGroup,

    -- ** CreateCarrierGateway
    module Network.AWS.EC2.CreateCarrierGateway,

    -- ** CreateSnapshot
    module Network.AWS.EC2.CreateSnapshot,

    -- ** ModifyVolume
    module Network.AWS.EC2.ModifyVolume,

    -- ** DeleteNetworkInsightsAnalysis
    module Network.AWS.EC2.DeleteNetworkInsightsAnalysis,

    -- ** DescribeLocalGatewayRouteTableVPCAssociations (Paginated)
    module Network.AWS.EC2.DescribeLocalGatewayRouteTableVPCAssociations,

    -- ** CreateTrafficMirrorFilter
    module Network.AWS.EC2.CreateTrafficMirrorFilter,

    -- ** DeleteSpotDatafeedSubscription
    module Network.AWS.EC2.DeleteSpotDatafeedSubscription,

    -- ** DescribeInstanceAttribute
    module Network.AWS.EC2.DescribeInstanceAttribute,

    -- ** CreateCapacityReservation
    module Network.AWS.EC2.CreateCapacityReservation,

    -- ** DeleteTransitGatewayConnect
    module Network.AWS.EC2.DeleteTransitGatewayConnect,

    -- ** ModifyEBSDefaultKMSKeyId
    module Network.AWS.EC2.ModifyEBSDefaultKMSKeyId,

    -- ** DeleteRoute
    module Network.AWS.EC2.DeleteRoute,

    -- ** DescribeNetworkInsightsPaths (Paginated)
    module Network.AWS.EC2.DescribeNetworkInsightsPaths,

    -- ** PurchaseScheduledInstances
    module Network.AWS.EC2.PurchaseScheduledInstances,

    -- ** CreateTransitGatewayPeeringAttachment
    module Network.AWS.EC2.CreateTransitGatewayPeeringAttachment,

    -- ** GetDefaultCreditSpecification
    module Network.AWS.EC2.GetDefaultCreditSpecification,

    -- ** DescribeInternetGateways (Paginated)
    module Network.AWS.EC2.DescribeInternetGateways,

    -- ** ModifyInstanceAttribute
    module Network.AWS.EC2.ModifyInstanceAttribute,

    -- ** CreateSecurityGroup
    module Network.AWS.EC2.CreateSecurityGroup,

    -- ** CreateTransitGatewayConnect
    module Network.AWS.EC2.CreateTransitGatewayConnect,

    -- ** ReplaceNetworkACLAssociation
    module Network.AWS.EC2.ReplaceNetworkACLAssociation,

    -- ** CreateRoute
    module Network.AWS.EC2.CreateRoute,

    -- ** DeleteLaunchTemplateVersions
    module Network.AWS.EC2.DeleteLaunchTemplateVersions,

    -- ** DescribeIdentityIdFormat
    module Network.AWS.EC2.DescribeIdentityIdFormat,

    -- ** DeleteTrafficMirrorFilter
    module Network.AWS.EC2.DeleteTrafficMirrorFilter,

    -- ** ReplaceRoute
    module Network.AWS.EC2.ReplaceRoute,

    -- ** ResetSnapshotAttribute
    module Network.AWS.EC2.ResetSnapshotAttribute,

    -- ** ResetEBSDefaultKMSKeyId
    module Network.AWS.EC2.ResetEBSDefaultKMSKeyId,

    -- ** CreateTags
    module Network.AWS.EC2.CreateTags,

    -- ** BundleInstance
    module Network.AWS.EC2.BundleInstance,

    -- ** DeleteTransitGatewayPeeringAttachment
    module Network.AWS.EC2.DeleteTransitGatewayPeeringAttachment,

    -- ** AuthorizeClientVPNIngress
    module Network.AWS.EC2.AuthorizeClientVPNIngress,

    -- ** ModifyLaunchTemplate
    module Network.AWS.EC2.ModifyLaunchTemplate,

    -- ** DeleteCustomerGateway
    module Network.AWS.EC2.DeleteCustomerGateway,

    -- ** TerminateClientVPNConnections
    module Network.AWS.EC2.TerminateClientVPNConnections,

    -- ** GetEBSEncryptionByDefault
    module Network.AWS.EC2.GetEBSEncryptionByDefault,

    -- ** CreateVPCPeeringConnection
    module Network.AWS.EC2.CreateVPCPeeringConnection,

    -- ** DeleteTransitGatewayVPCAttachment
    module Network.AWS.EC2.DeleteTransitGatewayVPCAttachment,

    -- ** ReplaceIAMInstanceProfileAssociation
    module Network.AWS.EC2.ReplaceIAMInstanceProfileAssociation,

    -- ** DeleteTransitGatewayConnectPeer
    module Network.AWS.EC2.DeleteTransitGatewayConnectPeer,

    -- ** AssociateAddress
    module Network.AWS.EC2.AssociateAddress,

    -- ** CancelSpotFleetRequests
    module Network.AWS.EC2.CancelSpotFleetRequests,

    -- ** ResetNetworkInterfaceAttribute
    module Network.AWS.EC2.ResetNetworkInterfaceAttribute,

    -- ** StartInstances
    module Network.AWS.EC2.StartInstances,

    -- ** DisassociateTransitGatewayRouteTable
    module Network.AWS.EC2.DisassociateTransitGatewayRouteTable,

    -- ** CopyFpgaImage
    module Network.AWS.EC2.CopyFpgaImage,

    -- ** ReleaseHosts
    module Network.AWS.EC2.ReleaseHosts,

    -- ** DescribeFastSnapshotRestores (Paginated)
    module Network.AWS.EC2.DescribeFastSnapshotRestores,

    -- ** DescribeTrafficMirrorFilters (Paginated)
    module Network.AWS.EC2.DescribeTrafficMirrorFilters,

    -- ** CreateTransitGatewayPrefixListReference
    module Network.AWS.EC2.CreateTransitGatewayPrefixListReference,

    -- ** DeleteNetworkInterface
    module Network.AWS.EC2.DeleteNetworkInterface,

    -- ** CreateTransitGatewayRoute
    module Network.AWS.EC2.CreateTransitGatewayRoute,

    -- ** DeregisterTransitGatewayMulticastGroupSources
    module Network.AWS.EC2.DeregisterTransitGatewayMulticastGroupSources,

    -- ** DisassociateVPCCidrBlock
    module Network.AWS.EC2.DisassociateVPCCidrBlock,

    -- ** DescribeTransitGatewayPeeringAttachments (Paginated)
    module Network.AWS.EC2.DescribeTransitGatewayPeeringAttachments,

    -- ** GetCoipPoolUsage
    module Network.AWS.EC2.GetCoipPoolUsage,

    -- ** ImportImage
    module Network.AWS.EC2.ImportImage,

    -- ** ReplaceTransitGatewayRoute
    module Network.AWS.EC2.ReplaceTransitGatewayRoute,

    -- ** CreatePlacementGroup
    module Network.AWS.EC2.CreatePlacementGroup,

    -- ** CreateDefaultVPC
    module Network.AWS.EC2.CreateDefaultVPC,

    -- ** CreateNetworkInsightsPath
    module Network.AWS.EC2.CreateNetworkInsightsPath,

    -- ** ModifyTrafficMirrorSession
    module Network.AWS.EC2.ModifyTrafficMirrorSession,

    -- ** RunScheduledInstances
    module Network.AWS.EC2.RunScheduledInstances,

    -- ** DescribeDHCPOptions (Paginated)
    module Network.AWS.EC2.DescribeDHCPOptions,

    -- ** DescribeCapacityReservations (Paginated)
    module Network.AWS.EC2.DescribeCapacityReservations,

    -- ** DescribeCustomerGateways
    module Network.AWS.EC2.DescribeCustomerGateways,

    -- ** DeleteNatGateway
    module Network.AWS.EC2.DeleteNatGateway,

    -- ** DescribeClientVPNAuthorizationRules (Paginated)
    module Network.AWS.EC2.DescribeClientVPNAuthorizationRules,

    -- ** StopInstances
    module Network.AWS.EC2.StopInstances,

    -- ** ReplaceRouteTableAssociation
    module Network.AWS.EC2.ReplaceRouteTableAssociation,

    -- ** DeleteTransitGatewayMulticastDomain
    module Network.AWS.EC2.DeleteTransitGatewayMulticastDomain,

    -- ** DeleteSubnet
    module Network.AWS.EC2.DeleteSubnet,

    -- * Types

    -- ** Common
    module Network.AWS.EC2.Internal,

    -- ** AccountAttributeName
    AccountAttributeName (..),

    -- ** ActivityStatus
    ActivityStatus (..),

    -- ** AddressAttributeName
    AddressAttributeName (..),

    -- ** AddressStatus
    AddressStatus (..),

    -- ** Affinity
    Affinity (..),

    -- ** AllocationState
    AllocationState (..),

    -- ** AllocationStrategy
    AllocationStrategy (..),

    -- ** AllowsMultipleInstanceTypes
    AllowsMultipleInstanceTypes (..),

    -- ** AnalysisStatus
    AnalysisStatus (..),

    -- ** ApplianceModeSupportValue
    ApplianceModeSupportValue (..),

    -- ** ArchitectureType
    ArchitectureType (..),

    -- ** ArchitectureValues
    ArchitectureValues (..),

    -- ** AssociatedNetworkType
    AssociatedNetworkType (..),

    -- ** AssociationStatusCode
    AssociationStatusCode (..),

    -- ** AttachmentStatus
    AttachmentStatus (..),

    -- ** AutoAcceptSharedAssociationsValue
    AutoAcceptSharedAssociationsValue (..),

    -- ** AutoAcceptSharedAttachmentsValue
    AutoAcceptSharedAttachmentsValue (..),

    -- ** AutoPlacement
    AutoPlacement (..),

    -- ** AvailabilityZoneOptInStatus
    AvailabilityZoneOptInStatus (..),

    -- ** AvailabilityZoneState
    AvailabilityZoneState (..),

    -- ** BGPStatus
    BGPStatus (..),

    -- ** BatchState
    BatchState (..),

    -- ** BundleTaskState
    BundleTaskState (..),

    -- ** ByoipCidrState
    ByoipCidrState (..),

    -- ** CancelBatchErrorCode
    CancelBatchErrorCode (..),

    -- ** CancelSpotInstanceRequestState
    CancelSpotInstanceRequestState (..),

    -- ** CapacityReservationInstancePlatform
    CapacityReservationInstancePlatform (..),

    -- ** CapacityReservationPreference
    CapacityReservationPreference (..),

    -- ** CapacityReservationState
    CapacityReservationState (..),

    -- ** CapacityReservationTenancy
    CapacityReservationTenancy (..),

    -- ** CarrierGatewayState
    CarrierGatewayState (..),

    -- ** ClientCertificateRevocationListStatusCode
    ClientCertificateRevocationListStatusCode (..),

    -- ** ClientVPNAuthenticationType
    ClientVPNAuthenticationType (..),

    -- ** ClientVPNAuthorizationRuleStatusCode
    ClientVPNAuthorizationRuleStatusCode (..),

    -- ** ClientVPNConnectionStatusCode
    ClientVPNConnectionStatusCode (..),

    -- ** ClientVPNEndpointAttributeStatusCode
    ClientVPNEndpointAttributeStatusCode (..),

    -- ** ClientVPNEndpointStatusCode
    ClientVPNEndpointStatusCode (..),

    -- ** ClientVPNRouteStatusCode
    ClientVPNRouteStatusCode (..),

    -- ** ConnectionNotificationState
    ConnectionNotificationState (..),

    -- ** ConnectionNotificationType
    ConnectionNotificationType (..),

    -- ** ContainerFormat
    ContainerFormat (..),

    -- ** ConversionTaskState
    ConversionTaskState (..),

    -- ** CopyTagsFromSource
    CopyTagsFromSource (..),

    -- ** CurrencyCodeValues
    CurrencyCodeValues (..),

    -- ** DNSNameState
    DNSNameState (..),

    -- ** DNSSupportValue
    DNSSupportValue (..),

    -- ** DatafeedSubscriptionState
    DatafeedSubscriptionState (..),

    -- ** DefaultRouteTableAssociationValue
    DefaultRouteTableAssociationValue (..),

    -- ** DefaultRouteTablePropagationValue
    DefaultRouteTablePropagationValue (..),

    -- ** DefaultTargetCapacityType
    DefaultTargetCapacityType (..),

    -- ** DeleteFleetErrorCode
    DeleteFleetErrorCode (..),

    -- ** DeleteQueuedReservedInstancesErrorCode
    DeleteQueuedReservedInstancesErrorCode (..),

    -- ** DeviceType
    DeviceType (..),

    -- ** DiskImageFormat
    DiskImageFormat (..),

    -- ** DiskType
    DiskType (..),

    -- ** DomainType
    DomainType (..),

    -- ** EBSEncryptionSupport
    EBSEncryptionSupport (..),

    -- ** EBSNvmeSupport
    EBSNvmeSupport (..),

    -- ** EBSOptimizedSupport
    EBSOptimizedSupport (..),

    -- ** ElasticGpuState
    ElasticGpuState (..),

    -- ** ElasticGpuStatus
    ElasticGpuStatus (..),

    -- ** EnaSupport
    EnaSupport (..),

    -- ** EndDateType
    EndDateType (..),

    -- ** EphemeralNvmeSupport
    EphemeralNvmeSupport (..),

    -- ** EventCode
    EventCode (..),

    -- ** EventType
    EventType (..),

    -- ** ExcessCapacityTerminationPolicy
    ExcessCapacityTerminationPolicy (..),

    -- ** ExportEnvironment
    ExportEnvironment (..),

    -- ** ExportTaskState
    ExportTaskState (..),

    -- ** FastSnapshotRestoreStateCode
    FastSnapshotRestoreStateCode (..),

    -- ** FleetActivityStatus
    FleetActivityStatus (..),

    -- ** FleetCapacityReservationUsageStrategy
    FleetCapacityReservationUsageStrategy (..),

    -- ** FleetEventType
    FleetEventType (..),

    -- ** FleetExcessCapacityTerminationPolicy
    FleetExcessCapacityTerminationPolicy (..),

    -- ** FleetOnDemandAllocationStrategy
    FleetOnDemandAllocationStrategy (..),

    -- ** FleetReplacementStrategy
    FleetReplacementStrategy (..),

    -- ** FleetStateCode
    FleetStateCode (..),

    -- ** FleetType
    FleetType (..),

    -- ** FlowLogsResourceType
    FlowLogsResourceType (..),

    -- ** FpgaImageAttributeName
    FpgaImageAttributeName (..),

    -- ** FpgaImageStateCode
    FpgaImageStateCode (..),

    -- ** GatewayType
    GatewayType (..),

    -- ** HTTPTokensState
    HTTPTokensState (..),

    -- ** HostRecovery
    HostRecovery (..),

    -- ** HostTenancy
    HostTenancy (..),

    -- ** HypervisorType
    HypervisorType (..),

    -- ** IAMInstanceProfileAssociationState
    IAMInstanceProfileAssociationState (..),

    -- ** IPv6SupportValue
    IPv6SupportValue (..),

    -- ** Igmpv2SupportValue
    Igmpv2SupportValue (..),

    -- ** ImageAttributeName
    ImageAttributeName (..),

    -- ** ImageState
    ImageState (..),

    -- ** ImageTypeValues
    ImageTypeValues (..),

    -- ** InstanceAttributeName
    InstanceAttributeName (..),

    -- ** InstanceHealthStatus
    InstanceHealthStatus (..),

    -- ** InstanceInterruptionBehavior
    InstanceInterruptionBehavior (..),

    -- ** InstanceLifecycle
    InstanceLifecycle (..),

    -- ** InstanceLifecycleType
    InstanceLifecycleType (..),

    -- ** InstanceMatchCriteria
    InstanceMatchCriteria (..),

    -- ** InstanceMetadataEndpointState
    InstanceMetadataEndpointState (..),

    -- ** InstanceMetadataOptionsState
    InstanceMetadataOptionsState (..),

    -- ** InstanceStateName
    InstanceStateName (..),

    -- ** InstanceType
    InstanceType (..),

    -- ** InstanceTypeHypervisor
    InstanceTypeHypervisor (..),

    -- ** InterfacePermissionType
    InterfacePermissionType (..),

    -- ** LaunchTemplateErrorCode
    LaunchTemplateErrorCode (..),

    -- ** LaunchTemplateHTTPTokensState
    LaunchTemplateHTTPTokensState (..),

    -- ** LaunchTemplateInstanceMetadataEndpointState
    LaunchTemplateInstanceMetadataEndpointState (..),

    -- ** LaunchTemplateInstanceMetadataOptionsState
    LaunchTemplateInstanceMetadataOptionsState (..),

    -- ** ListingState
    ListingState (..),

    -- ** ListingStatus
    ListingStatus (..),

    -- ** LocalGatewayRouteState
    LocalGatewayRouteState (..),

    -- ** LocalGatewayRouteType
    LocalGatewayRouteType (..),

    -- ** LocationType
    LocationType (..),

    -- ** LogDestinationType
    LogDestinationType (..),

    -- ** MarketType
    MarketType (..),

    -- ** MembershipType
    MembershipType (..),

    -- ** ModifyAvailabilityZoneOptInStatus
    ModifyAvailabilityZoneOptInStatus (..),

    -- ** MonitoringState
    MonitoringState (..),

    -- ** MoveStatus
    MoveStatus (..),

    -- ** MulticastSupportValue
    MulticastSupportValue (..),

    -- ** NatGatewayState
    NatGatewayState (..),

    -- ** NetworkInterfaceAttribute
    NetworkInterfaceAttribute (..),

    -- ** NetworkInterfaceCreationType
    NetworkInterfaceCreationType (..),

    -- ** NetworkInterfacePermissionStateCode
    NetworkInterfacePermissionStateCode (..),

    -- ** NetworkInterfaceStatus
    NetworkInterfaceStatus (..),

    -- ** NetworkInterfaceType
    NetworkInterfaceType (..),

    -- ** OfferingClassType
    OfferingClassType (..),

    -- ** OfferingTypeValues
    OfferingTypeValues (..),

    -- ** OnDemandAllocationStrategy
    OnDemandAllocationStrategy (..),

    -- ** OperationType
    OperationType (..),

    -- ** PaymentOption
    PaymentOption (..),

    -- ** PermissionGroup
    PermissionGroup (..),

    -- ** PlacementGroupState
    PlacementGroupState (..),

    -- ** PlacementGroupStrategy
    PlacementGroupStrategy (..),

    -- ** PlacementStrategy
    PlacementStrategy (..),

    -- ** PlatformValues
    PlatformValues (..),

    -- ** PrefixListState
    PrefixListState (..),

    -- ** PrincipalType
    PrincipalType (..),

    -- ** ProductCodeValues
    ProductCodeValues (..),

    -- ** Protocol
    Protocol (..),

    -- ** ProtocolValue
    ProtocolValue (..),

    -- ** RIProductDescription
    RIProductDescription (..),

    -- ** RecurringChargeFrequency
    RecurringChargeFrequency (..),

    -- ** ReplacementStrategy
    ReplacementStrategy (..),

    -- ** ReportInstanceReasonCodes
    ReportInstanceReasonCodes (..),

    -- ** ReportStatusType
    ReportStatusType (..),

    -- ** ReservationState
    ReservationState (..),

    -- ** ReservedInstanceState
    ReservedInstanceState (..),

    -- ** ResetFpgaImageAttributeName
    ResetFpgaImageAttributeName (..),

    -- ** ResetImageAttributeName
    ResetImageAttributeName (..),

    -- ** ResourceType
    ResourceType (..),

    -- ** RootDeviceType
    RootDeviceType (..),

    -- ** RouteOrigin
    RouteOrigin (..),

    -- ** RouteState
    RouteState (..),

    -- ** RouteTableAssociationStateCode
    RouteTableAssociationStateCode (..),

    -- ** RuleAction
    RuleAction (..),

    -- ** Scope
    Scope (..),

    -- ** SelfServicePortal
    SelfServicePortal (..),

    -- ** ServiceState
    ServiceState (..),

    -- ** ServiceType
    ServiceType (..),

    -- ** ShutdownBehavior
    ShutdownBehavior (..),

    -- ** SnapshotAttributeName
    SnapshotAttributeName (..),

    -- ** SnapshotState
    SnapshotState (..),

    -- ** SpotAllocationStrategy
    SpotAllocationStrategy (..),

    -- ** SpotInstanceInterruptionBehavior
    SpotInstanceInterruptionBehavior (..),

    -- ** SpotInstanceState
    SpotInstanceState (..),

    -- ** SpotInstanceType
    SpotInstanceType (..),

    -- ** State
    State (..),

    -- ** StaticSourcesSupportValue
    StaticSourcesSupportValue (..),

    -- ** StatusName
    StatusName (..),

    -- ** StatusType
    StatusType (..),

    -- ** SubnetCidrBlockStateCode
    SubnetCidrBlockStateCode (..),

    -- ** SubnetState
    SubnetState (..),

    -- ** SummaryStatus
    SummaryStatus (..),

    -- ** TelemetryStatus
    TelemetryStatus (..),

    -- ** Tenancy
    Tenancy (..),

    -- ** TrafficDirection
    TrafficDirection (..),

    -- ** TrafficMirrorFilterRuleField
    TrafficMirrorFilterRuleField (..),

    -- ** TrafficMirrorNetworkService
    TrafficMirrorNetworkService (..),

    -- ** TrafficMirrorRuleAction
    TrafficMirrorRuleAction (..),

    -- ** TrafficMirrorSessionField
    TrafficMirrorSessionField (..),

    -- ** TrafficMirrorTargetType
    TrafficMirrorTargetType (..),

    -- ** TrafficType
    TrafficType (..),

    -- ** TransitGatewayAssociationState
    TransitGatewayAssociationState (..),

    -- ** TransitGatewayAttachmentResourceType
    TransitGatewayAttachmentResourceType (..),

    -- ** TransitGatewayAttachmentState
    TransitGatewayAttachmentState (..),

    -- ** TransitGatewayConnectPeerState
    TransitGatewayConnectPeerState (..),

    -- ** TransitGatewayMulitcastDomainAssociationState
    TransitGatewayMulitcastDomainAssociationState (..),

    -- ** TransitGatewayMulticastDomainState
    TransitGatewayMulticastDomainState (..),

    -- ** TransitGatewayPrefixListReferenceState
    TransitGatewayPrefixListReferenceState (..),

    -- ** TransitGatewayPropagationState
    TransitGatewayPropagationState (..),

    -- ** TransitGatewayRouteState
    TransitGatewayRouteState (..),

    -- ** TransitGatewayRouteTableState
    TransitGatewayRouteTableState (..),

    -- ** TransitGatewayRouteType
    TransitGatewayRouteType (..),

    -- ** TransitGatewayState
    TransitGatewayState (..),

    -- ** TransportProtocol
    TransportProtocol (..),

    -- ** TunnelInsideIPVersion
    TunnelInsideIPVersion (..),

    -- ** UnlimitedSupportedInstanceFamily
    UnlimitedSupportedInstanceFamily (..),

    -- ** UnsuccessfulInstanceCreditSpecificationErrorCode
    UnsuccessfulInstanceCreditSpecificationErrorCode (..),

    -- ** UsageClassType
    UsageClassType (..),

    -- ** VPCAttributeName
    VPCAttributeName (..),

    -- ** VPCCidrBlockStateCode
    VPCCidrBlockStateCode (..),

    -- ** VPCEndpointType
    VPCEndpointType (..),

    -- ** VPCPeeringConnectionStateReasonCode
    VPCPeeringConnectionStateReasonCode (..),

    -- ** VPCState
    VPCState (..),

    -- ** VPCTenancy
    VPCTenancy (..),

    -- ** VPNEcmpSupportValue
    VPNEcmpSupportValue (..),

    -- ** VPNProtocol
    VPNProtocol (..),

    -- ** VPNState
    VPNState (..),

    -- ** VPNStaticRouteSource
    VPNStaticRouteSource (..),

    -- ** VirtualizationType
    VirtualizationType (..),

    -- ** VolumeAttachmentState
    VolumeAttachmentState (..),

    -- ** VolumeAttributeName
    VolumeAttributeName (..),

    -- ** VolumeModificationState
    VolumeModificationState (..),

    -- ** VolumeState
    VolumeState (..),

    -- ** VolumeStatusInfoStatus
    VolumeStatusInfoStatus (..),

    -- ** VolumeStatusName
    VolumeStatusName (..),

    -- ** VolumeType
    VolumeType (..),

    -- ** AccountAttribute
    AccountAttribute,
    accountAttribute,
    aaAttributeName,
    aaAttributeValues,

    -- ** AccountAttributeValue
    AccountAttributeValue,
    accountAttributeValue,
    aavAttributeValue,

    -- ** ActiveInstance
    ActiveInstance,
    activeInstance,
    aiInstanceId,
    aiInstanceType,
    aiSpotInstanceRequestId,
    aiInstanceHealth,

    -- ** AddPrefixListEntry
    AddPrefixListEntry,
    addPrefixListEntry,
    apleDescription,
    apleCidr,

    -- ** Address
    Address,
    address,
    aCustomerOwnedIPv4Pool,
    aInstanceId,
    aDomain,
    aCarrierIP,
    aCustomerOwnedIP,
    aNetworkInterfaceOwnerId,
    aAssociationId,
    aTags,
    aNetworkInterfaceId,
    aPublicIPv4Pool,
    aPublicIP,
    aAllocationId,
    aNetworkBorderGroup,
    aPrivateIPAddress,

    -- ** AddressAttribute
    AddressAttribute,
    addressAttribute,
    aaPtrRecord,
    aaPublicIP,
    aaAllocationId,
    aaPtrRecordUpdate,

    -- ** AllowedPrincipal
    AllowedPrincipal,
    allowedPrincipal,
    apPrincipal,
    apPrincipalType,

    -- ** AlternatePathHint
    AlternatePathHint,
    alternatePathHint,
    aphComponentId,
    aphComponentARN,

    -- ** AnalysisACLRule
    AnalysisACLRule,
    analysisACLRule,
    aarPortRange,
    aarRuleAction,
    aarEgress,
    aarCidr,
    aarProtocol,
    aarRuleNumber,

    -- ** AnalysisComponent
    AnalysisComponent,
    analysisComponent,
    acARN,
    acId,

    -- ** AnalysisLoadBalancerListener
    AnalysisLoadBalancerListener,
    analysisLoadBalancerListener,
    alblLoadBalancerPort,
    alblInstancePort,

    -- ** AnalysisLoadBalancerTarget
    AnalysisLoadBalancerTarget,
    analysisLoadBalancerTarget,
    albtAddress,
    albtAvailabilityZone,
    albtInstance,
    albtPort,

    -- ** AnalysisPacketHeader
    AnalysisPacketHeader,
    analysisPacketHeader,
    aphDestinationAddresses,
    aphSourceAddresses,
    aphDestinationPortRanges,
    aphProtocol,
    aphSourcePortRanges,

    -- ** AnalysisRouteTableRoute
    AnalysisRouteTableRoute,
    analysisRouteTableRoute,
    artrInstanceId,
    artrOrigin,
    artrVPCPeeringConnectionId,
    artrDestinationPrefixListId,
    artrDestinationCidr,
    artrEgressOnlyInternetGatewayId,
    artrNetworkInterfaceId,
    artrNatGatewayId,
    artrGatewayId,
    artrTransitGatewayId,

    -- ** AnalysisSecurityGroupRule
    AnalysisSecurityGroupRule,
    analysisSecurityGroupRule,
    asgrSecurityGroupId,
    asgrPortRange,
    asgrDirection,
    asgrPrefixListId,
    asgrCidr,
    asgrProtocol,

    -- ** AssignedPrivateIPAddress
    AssignedPrivateIPAddress,
    assignedPrivateIPAddress,
    apiaPrivateIPAddress,

    -- ** AssociatedRole
    AssociatedRole,
    associatedRole,
    arCertificateS3ObjectKey,
    arEncryptionKMSKeyId,
    arCertificateS3BucketName,
    arAssociatedRoleARN,

    -- ** AssociatedTargetNetwork
    AssociatedTargetNetwork,
    associatedTargetNetwork,
    atnNetworkType,
    atnNetworkId,

    -- ** AssociationStatus
    AssociationStatus,
    associationStatus,
    asMessage,
    asCode,

    -- ** AttributeBooleanValue
    AttributeBooleanValue,
    attributeBooleanValue,
    abvValue,

    -- ** AttributeValue
    AttributeValue,
    attributeValue,
    avValue,

    -- ** AuthorizationRule
    AuthorizationRule,
    authorizationRule,
    arClientVPNEndpointId,
    arStatus,
    arDestinationCidr,
    arAccessAll,
    arGroupId,
    arDescription,

    -- ** AvailabilityZone
    AvailabilityZone,
    availabilityZone,
    azRegionName,
    azParentZoneId,
    azZoneName,
    azZoneType,
    azZoneId,
    azGroupName,
    azOptInStatus,
    azState,
    azMessages,
    azNetworkBorderGroup,
    azParentZoneName,

    -- ** AvailabilityZoneMessage
    AvailabilityZoneMessage,
    availabilityZoneMessage,
    azmMessage,

    -- ** AvailableCapacity
    AvailableCapacity,
    availableCapacity,
    acAvailableInstanceCapacity,
    acAvailableVCPUs,

    -- ** BlobAttributeValue
    BlobAttributeValue,
    blobAttributeValue,
    bavValue,

    -- ** BlockDeviceMapping
    BlockDeviceMapping,
    blockDeviceMapping,
    bdmEBS,
    bdmNoDevice,
    bdmVirtualName,
    bdmDeviceName,

    -- ** BundleTask
    BundleTask,
    bundleTask,
    btBundleTaskError,
    btBundleId,
    btInstanceId,
    btProgress,
    btStartTime,
    btState,
    btStorage,
    btUpdateTime,

    -- ** BundleTaskError
    BundleTaskError,
    bundleTaskError,
    bteMessage,
    bteCode,

    -- ** ByoipCidr
    ByoipCidr,
    byoipCidr,
    bcStatusMessage,
    bcState,
    bcCidr,
    bcDescription,

    -- ** CPUOptions
    CPUOptions,
    cpuOptions,
    coThreadsPerCore,
    coCoreCount,

    -- ** CPUOptionsRequest
    CPUOptionsRequest,
    cpuOptionsRequest,
    corThreadsPerCore,
    corCoreCount,

    -- ** CancelSpotFleetRequestsError
    CancelSpotFleetRequestsError,
    cancelSpotFleetRequestsError,
    csfreMessage,
    csfreCode,

    -- ** CancelSpotFleetRequestsErrorItem
    CancelSpotFleetRequestsErrorItem,
    cancelSpotFleetRequestsErrorItem,
    csfreiError,
    csfreiSpotFleetRequestId,

    -- ** CancelSpotFleetRequestsSuccessItem
    CancelSpotFleetRequestsSuccessItem,
    cancelSpotFleetRequestsSuccessItem,
    csfrsiCurrentSpotFleetRequestState,
    csfrsiPreviousSpotFleetRequestState,
    csfrsiSpotFleetRequestId,

    -- ** CancelledSpotInstanceRequest
    CancelledSpotInstanceRequest,
    cancelledSpotInstanceRequest,
    csirState,
    csirSpotInstanceRequestId,

    -- ** CapacityReservation
    CapacityReservation,
    capacityReservation,
    crOwnerId,
    crStartDate,
    crInstanceType,
    crEBSOptimized,
    crEndDateType,
    crAvailableInstanceCount,
    crCreateDate,
    crTenancy,
    crAvailabilityZoneId,
    crState,
    crAvailabilityZone,
    crCapacityReservationId,
    crTags,
    crCapacityReservationARN,
    crInstanceMatchCriteria,
    crEphemeralStorage,
    crInstancePlatform,
    crEndDate,
    crTotalInstanceCount,

    -- ** CapacityReservationGroup
    CapacityReservationGroup,
    capacityReservationGroup,
    crgOwnerId,
    crgGroupARN,

    -- ** CapacityReservationOptions
    CapacityReservationOptions,
    capacityReservationOptions,
    croUsageStrategy,

    -- ** CapacityReservationOptionsRequest
    CapacityReservationOptionsRequest,
    capacityReservationOptionsRequest,
    crorUsageStrategy,

    -- ** CapacityReservationSpecification
    CapacityReservationSpecification,
    capacityReservationSpecification,
    crsCapacityReservationPreference,
    crsCapacityReservationTarget,

    -- ** CapacityReservationSpecificationResponse
    CapacityReservationSpecificationResponse,
    capacityReservationSpecificationResponse,
    crsrCapacityReservationPreference,
    crsrCapacityReservationTarget,

    -- ** CapacityReservationTarget
    CapacityReservationTarget,
    capacityReservationTarget,
    crtCapacityReservationResourceGroupARN,
    crtCapacityReservationId,

    -- ** CapacityReservationTargetResponse
    CapacityReservationTargetResponse,
    capacityReservationTargetResponse,
    crtrCapacityReservationResourceGroupARN,
    crtrCapacityReservationId,

    -- ** CarrierGateway
    CarrierGateway,
    carrierGateway,
    cgOwnerId,
    cgState,
    cgTags,
    cgCarrierGatewayId,
    cgVPCId,

    -- ** CertificateAuthentication
    CertificateAuthentication,
    certificateAuthentication,
    caClientRootCertificateChain,

    -- ** CertificateAuthenticationRequest
    CertificateAuthenticationRequest,
    certificateAuthenticationRequest,
    carClientRootCertificateChainARN,

    -- ** CidrAuthorizationContext
    CidrAuthorizationContext,
    cidrAuthorizationContext,
    cacMessage,
    cacSignature,

    -- ** CidrBlock
    CidrBlock,
    cidrBlock,
    cbCidrBlock,

    -- ** ClassicLinkDNSSupport
    ClassicLinkDNSSupport,
    classicLinkDNSSupport,
    cldsClassicLinkDNSSupported,
    cldsVPCId,

    -- ** ClassicLinkInstance
    ClassicLinkInstance,
    classicLinkInstance,
    cliGroups,
    cliInstanceId,
    cliTags,
    cliVPCId,

    -- ** ClassicLoadBalancer
    ClassicLoadBalancer,
    classicLoadBalancer,
    clbName,

    -- ** ClassicLoadBalancersConfig
    ClassicLoadBalancersConfig,
    classicLoadBalancersConfig,
    clbcClassicLoadBalancers,

    -- ** ClientCertificateRevocationListStatus
    ClientCertificateRevocationListStatus,
    clientCertificateRevocationListStatus,
    ccrlsMessage,
    ccrlsCode,

    -- ** ClientConnectOptions
    ClientConnectOptions,
    clientConnectOptions,
    ccoEnabled,
    ccoLambdaFunctionARN,

    -- ** ClientConnectResponseOptions
    ClientConnectResponseOptions,
    clientConnectResponseOptions,
    ccroStatus,
    ccroEnabled,
    ccroLambdaFunctionARN,

    -- ** ClientData
    ClientData,
    clientData,
    cdUploadEnd,
    cdComment,
    cdUploadSize,
    cdUploadStart,

    -- ** ClientVPNAuthentication
    ClientVPNAuthentication,
    clientVPNAuthentication,
    cvaFederatedAuthentication,
    cvaActiveDirectory,
    cvaMutualAuthentication,
    cvaType,

    -- ** ClientVPNAuthenticationRequest
    ClientVPNAuthenticationRequest,
    clientVPNAuthenticationRequest,
    cvarFederatedAuthentication,
    cvarActiveDirectory,
    cvarMutualAuthentication,
    cvarType,

    -- ** ClientVPNAuthorizationRuleStatus
    ClientVPNAuthorizationRuleStatus,
    clientVPNAuthorizationRuleStatus,
    cvarsMessage,
    cvarsCode,

    -- ** ClientVPNConnection
    ClientVPNConnection,
    clientVPNConnection,
    cvcClientVPNEndpointId,
    cvcStatus,
    cvcIngressPackets,
    cvcEgressBytes,
    cvcConnectionId,
    cvcConnectionEstablishedTime,
    cvcPostureComplianceStatuses,
    cvcCommonName,
    cvcConnectionEndTime,
    cvcIngressBytes,
    cvcEgressPackets,
    cvcTimestamp,
    cvcUsername,
    cvcClientIP,

    -- ** ClientVPNConnectionStatus
    ClientVPNConnectionStatus,
    clientVPNConnectionStatus,
    cvcsMessage,
    cvcsCode,

    -- ** ClientVPNEndpoint
    ClientVPNEndpoint,
    clientVPNEndpoint,
    cveClientVPNEndpointId,
    cveSecurityGroupIds,
    cveClientCidrBlock,
    cveStatus,
    cveCreationTime,
    cveAssociatedTargetNetworks,
    cveDeletionTime,
    cveSelfServicePortalURL,
    cveAuthenticationOptions,
    cveServerCertificateARN,
    cveTransportProtocol,
    cveConnectionLogOptions,
    cveClientConnectOptions,
    cveDNSServers,
    cveTags,
    cveVPNPort,
    cveDNSName,
    cveVPNProtocol,
    cveDescription,
    cveVPCId,
    cveSplitTunnel,

    -- ** ClientVPNEndpointAttributeStatus
    ClientVPNEndpointAttributeStatus,
    clientVPNEndpointAttributeStatus,
    cveasMessage,
    cveasCode,

    -- ** ClientVPNEndpointStatus
    ClientVPNEndpointStatus,
    clientVPNEndpointStatus,
    cvesMessage,
    cvesCode,

    -- ** ClientVPNRoute
    ClientVPNRoute,
    clientVPNRoute,
    cvrClientVPNEndpointId,
    cvrStatus,
    cvrOrigin,
    cvrDestinationCidr,
    cvrDescription,
    cvrType,
    cvrTargetSubnet,

    -- ** ClientVPNRouteStatus
    ClientVPNRouteStatus,
    clientVPNRouteStatus,
    cvrsMessage,
    cvrsCode,

    -- ** CoipAddressUsage
    CoipAddressUsage,
    coipAddressUsage,
    cauAWSAccountId,
    cauCoIP,
    cauAWSService,
    cauAllocationId,

    -- ** CoipPool
    CoipPool,
    coipPool,
    cpPoolId,
    cpPoolARN,
    cpPoolCidrs,
    cpLocalGatewayRouteTableId,
    cpTags,

    -- ** ConnectionLogOptions
    ConnectionLogOptions,
    connectionLogOptions,
    cloCloudwatchLogStream,
    cloEnabled,
    cloCloudwatchLogGroup,

    -- ** ConnectionLogResponseOptions
    ConnectionLogResponseOptions,
    connectionLogResponseOptions,
    clroCloudwatchLogStream,
    clroEnabled,
    clroCloudwatchLogGroup,

    -- ** ConnectionNotification
    ConnectionNotification,
    connectionNotification,
    cnConnectionEvents,
    cnConnectionNotificationId,
    cnConnectionNotificationType,
    cnVPCEndpointId,
    cnServiceId,
    cnConnectionNotificationState,
    cnConnectionNotificationARN,

    -- ** ConversionTask
    ConversionTask,
    conversionTask,
    ctStatusMessage,
    ctImportInstance,
    ctExpirationTime,
    ctImportVolume,
    ctState,
    ctTags,
    ctConversionTaskId,

    -- ** CreateFleetError
    CreateFleetError,
    createFleetError,
    cfeLaunchTemplateAndOverrides,
    cfeLifecycle,
    cfeErrorMessage,
    cfeErrorCode,

    -- ** CreateFleetInstance
    CreateFleetInstance,
    createFleetInstance,
    cfiInstanceIds,
    cfiPlatform,
    cfiInstanceType,
    cfiLaunchTemplateAndOverrides,
    cfiLifecycle,

    -- ** CreateTransitGatewayConnectRequestOptions
    CreateTransitGatewayConnectRequestOptions,
    createTransitGatewayConnectRequestOptions,
    ctgcroProtocol,

    -- ** CreateTransitGatewayMulticastDomainRequestOptions
    CreateTransitGatewayMulticastDomainRequestOptions,
    createTransitGatewayMulticastDomainRequestOptions,
    ctgmdroIgmpv2Support,
    ctgmdroAutoAcceptSharedAssociations,
    ctgmdroStaticSourcesSupport,

    -- ** CreateTransitGatewayVPCAttachmentRequestOptions
    CreateTransitGatewayVPCAttachmentRequestOptions,
    createTransitGatewayVPCAttachmentRequestOptions,
    ctgvaroApplianceModeSupport,
    ctgvaroDNSSupport,
    ctgvaroIPv6Support,

    -- ** CreateVolumePermission
    CreateVolumePermission,
    createVolumePermission,
    cvpGroup,
    cvpUserId,

    -- ** CreateVolumePermissionModifications
    CreateVolumePermissionModifications,
    createVolumePermissionModifications,
    cvpmAdd,
    cvpmRemove,

    -- ** CreditSpecification
    CreditSpecification,
    creditSpecification,
    csCPUCredits,

    -- ** CreditSpecificationRequest
    CreditSpecificationRequest,
    creditSpecificationRequest,
    csrCPUCredits,

    -- ** CustomerGateway
    CustomerGateway,
    customerGateway,
    cCertificateARN,
    cDeviceName,
    cTags,
    cBGPASN,
    cCustomerGatewayId,
    cIPAddress,
    cState,
    cType,

    -- ** DHCPConfiguration
    DHCPConfiguration,
    dhcpConfiguration,
    dcKey,
    dcValues,

    -- ** DHCPOptions
    DHCPOptions,
    dhcpOptions,
    doOwnerId,
    doDHCPConfigurations,
    doDHCPOptionsId,
    doTags,

    -- ** DNSEntry
    DNSEntry,
    dnsEntry,
    deHostedZoneId,
    deDNSName,

    -- ** DNSServersOptionsModifyStructure
    DNSServersOptionsModifyStructure,
    dnsServersOptionsModifyStructure,
    dsomsEnabled,
    dsomsCustomDNSServers,

    -- ** DeleteFleetError
    DeleteFleetError,
    deleteFleetError,
    dfeMessage,
    dfeCode,

    -- ** DeleteFleetErrorItem
    DeleteFleetErrorItem,
    deleteFleetErrorItem,
    dfeiFleetId,
    dfeiError,

    -- ** DeleteFleetSuccessItem
    DeleteFleetSuccessItem,
    deleteFleetSuccessItem,
    dfsiFleetId,
    dfsiCurrentFleetState,
    dfsiPreviousFleetState,

    -- ** DeleteLaunchTemplateVersionsResponseErrorItem
    DeleteLaunchTemplateVersionsResponseErrorItem,
    deleteLaunchTemplateVersionsResponseErrorItem,
    dltvreiResponseError,
    dltvreiLaunchTemplateId,
    dltvreiLaunchTemplateName,
    dltvreiVersionNumber,

    -- ** DeleteLaunchTemplateVersionsResponseSuccessItem
    DeleteLaunchTemplateVersionsResponseSuccessItem,
    deleteLaunchTemplateVersionsResponseSuccessItem,
    dltvrsiLaunchTemplateId,
    dltvrsiLaunchTemplateName,
    dltvrsiVersionNumber,

    -- ** DeleteQueuedReservedInstancesError
    DeleteQueuedReservedInstancesError,
    deleteQueuedReservedInstancesError,
    dqrieMessage,
    dqrieCode,

    -- ** DeregisterInstanceTagAttributeRequest
    DeregisterInstanceTagAttributeRequest,
    deregisterInstanceTagAttributeRequest,
    ditarInstanceTagKeys,
    ditarIncludeAllTagsOfInstance,

    -- ** DescribeFastSnapshotRestoreSuccessItem
    DescribeFastSnapshotRestoreSuccessItem,
    describeFastSnapshotRestoreSuccessItem,
    dOwnerAlias,
    dOwnerId,
    dStateTransitionReason,
    dOptimizingTime,
    dState,
    dAvailabilityZone,
    dDisablingTime,
    dSnapshotId,
    dEnablingTime,
    dEnabledTime,
    dDisabledTime,

    -- ** DescribeFleetError
    DescribeFleetError,
    describeFleetError,
    dfeLaunchTemplateAndOverrides,
    dfeLifecycle,
    dfeErrorMessage,
    dfeErrorCode,

    -- ** DescribeFleetsInstances
    DescribeFleetsInstances,
    describeFleetsInstances,
    dfiInstanceIds,
    dfiPlatform,
    dfiInstanceType,
    dfiLaunchTemplateAndOverrides,
    dfiLifecycle,

    -- ** DirectoryServiceAuthentication
    DirectoryServiceAuthentication,
    directoryServiceAuthentication,
    dsaDirectoryId,

    -- ** DirectoryServiceAuthenticationRequest
    DirectoryServiceAuthenticationRequest,
    directoryServiceAuthenticationRequest,
    dsarDirectoryId,

    -- ** DisableFastSnapshotRestoreErrorItem
    DisableFastSnapshotRestoreErrorItem,
    disableFastSnapshotRestoreErrorItem,
    dfsreiFastSnapshotRestoreStateErrors,
    dfsreiSnapshotId,

    -- ** DisableFastSnapshotRestoreStateError
    DisableFastSnapshotRestoreStateError,
    disableFastSnapshotRestoreStateError,
    dfsrseMessage,
    dfsrseCode,

    -- ** DisableFastSnapshotRestoreStateErrorItem
    DisableFastSnapshotRestoreStateErrorItem,
    disableFastSnapshotRestoreStateErrorItem,
    dfsrseiAvailabilityZone,
    dfsrseiError,

    -- ** DisableFastSnapshotRestoreSuccessItem
    DisableFastSnapshotRestoreSuccessItem,
    disableFastSnapshotRestoreSuccessItem,
    dfsrsiOwnerAlias,
    dfsrsiOwnerId,
    dfsrsiStateTransitionReason,
    dfsrsiOptimizingTime,
    dfsrsiState,
    dfsrsiAvailabilityZone,
    dfsrsiDisablingTime,
    dfsrsiSnapshotId,
    dfsrsiEnablingTime,
    dfsrsiEnabledTime,
    dfsrsiDisabledTime,

    -- ** DiskImage
    DiskImage,
    diskImage,
    diVolume,
    diImage,
    diDescription,

    -- ** DiskImageDescription
    DiskImageDescription,
    diskImageDescription,
    didFormat,
    didImportManifestURL,
    didChecksum,
    didSize,

    -- ** DiskImageDetail
    DiskImageDetail,
    diskImageDetail,
    dBytes,
    dFormat,
    dImportManifestURL,

    -- ** DiskImageVolumeDescription
    DiskImageVolumeDescription,
    diskImageVolumeDescription,
    divdId,
    divdSize,

    -- ** DiskInfo
    DiskInfo,
    diskInfo,
    diSizeInGB,
    diCount,
    diType,

    -- ** EBSBlockDevice
    EBSBlockDevice,
    ebsBlockDevice,
    ebdEncrypted,
    ebdOutpostARN,
    ebdThroughput,
    ebdKMSKeyId,
    ebdDeleteOnTermination,
    ebdSnapshotId,
    ebdVolumeType,
    ebdVolumeSize,
    ebdIOPS,

    -- ** EBSInfo
    EBSInfo,
    ebsInfo,
    eiNvmeSupport,
    eiEBSOptimizedInfo,
    eiEBSOptimizedSupport,
    eiEncryptionSupport,

    -- ** EBSInstanceBlockDevice
    EBSInstanceBlockDevice,
    ebsInstanceBlockDevice,
    eibdStatus,
    eibdAttachTime,
    eibdVolumeId,
    eibdDeleteOnTermination,

    -- ** EBSInstanceBlockDeviceSpecification
    EBSInstanceBlockDeviceSpecification,
    ebsInstanceBlockDeviceSpecification,
    eibdsVolumeId,
    eibdsDeleteOnTermination,

    -- ** EBSOptimizedInfo
    EBSOptimizedInfo,
    ebsOptimizedInfo,
    eoiBaselineBandwidthInMbps,
    eoiMaximumIOPS,
    eoiMaximumBandwidthInMbps,
    eoiMaximumThroughputInMBps,
    eoiBaselineIOPS,
    eoiBaselineThroughputInMBps,

    -- ** EgressOnlyInternetGateway
    EgressOnlyInternetGateway,
    egressOnlyInternetGateway,
    eoigEgressOnlyInternetGatewayId,
    eoigTags,
    eoigAttachments,

    -- ** ElasticGpuAssociation
    ElasticGpuAssociation,
    elasticGpuAssociation,
    egaElasticGpuAssociationTime,
    egaElasticGpuId,
    egaElasticGpuAssociationState,
    egaElasticGpuAssociationId,

    -- ** ElasticGpuHealth
    ElasticGpuHealth,
    elasticGpuHealth,
    eghStatus,

    -- ** ElasticGpuSpecification
    ElasticGpuSpecification,
    elasticGpuSpecification,
    egsType,

    -- ** ElasticGpuSpecificationResponse
    ElasticGpuSpecificationResponse,
    elasticGpuSpecificationResponse,
    egsrType,

    -- ** ElasticGpus
    ElasticGpus,
    elasticGpus,
    egElasticGpuType,
    egInstanceId,
    egElasticGpuHealth,
    egElasticGpuId,
    egAvailabilityZone,
    egTags,
    egElasticGpuState,

    -- ** ElasticInferenceAccelerator
    ElasticInferenceAccelerator,
    elasticInferenceAccelerator,
    eiaCount,
    eiaType,

    -- ** ElasticInferenceAcceleratorAssociation
    ElasticInferenceAcceleratorAssociation,
    elasticInferenceAcceleratorAssociation,
    eiaaElasticInferenceAcceleratorAssociationId,
    eiaaElasticInferenceAcceleratorAssociationState,
    eiaaElasticInferenceAcceleratorARN,
    eiaaElasticInferenceAcceleratorAssociationTime,

    -- ** EnableFastSnapshotRestoreErrorItem
    EnableFastSnapshotRestoreErrorItem,
    enableFastSnapshotRestoreErrorItem,
    efsreiFastSnapshotRestoreStateErrors,
    efsreiSnapshotId,

    -- ** EnableFastSnapshotRestoreStateError
    EnableFastSnapshotRestoreStateError,
    enableFastSnapshotRestoreStateError,
    efsrseMessage,
    efsrseCode,

    -- ** EnableFastSnapshotRestoreStateErrorItem
    EnableFastSnapshotRestoreStateErrorItem,
    enableFastSnapshotRestoreStateErrorItem,
    efsrseiAvailabilityZone,
    efsrseiError,

    -- ** EnableFastSnapshotRestoreSuccessItem
    EnableFastSnapshotRestoreSuccessItem,
    enableFastSnapshotRestoreSuccessItem,
    efsrsiOwnerAlias,
    efsrsiOwnerId,
    efsrsiStateTransitionReason,
    efsrsiOptimizingTime,
    efsrsiState,
    efsrsiAvailabilityZone,
    efsrsiDisablingTime,
    efsrsiSnapshotId,
    efsrsiEnablingTime,
    efsrsiEnabledTime,
    efsrsiDisabledTime,

    -- ** EnclaveOptions
    EnclaveOptions,
    enclaveOptions,
    eoEnabled,

    -- ** EnclaveOptionsRequest
    EnclaveOptionsRequest,
    enclaveOptionsRequest,
    eorEnabled,

    -- ** EventInformation
    EventInformation,
    eventInformation,
    eiInstanceId,
    eiEventDescription,
    eiEventSubType,

    -- ** Explanation
    Explanation,
    explanation,
    eLoadBalancerTargetGroups,
    eLoadBalancerARN,
    eSecurityGroupRule,
    eCustomerGateway,
    eAvailabilityZones,
    eLoadBalancerTargetGroup,
    eExplanationCode,
    eAddress,
    eNatGateway,
    eLoadBalancerTarget,
    eInternetGateway,
    eNetworkInterface,
    eSubnet,
    eSourceVPC,
    eACLRule,
    eProtocols,
    eDirection,
    eSecurityGroups,
    ePrefixList,
    ePacketField,
    eCidrs,
    eComponent,
    eState,
    eRouteTable,
    eDestination,
    eSubnetRouteTable,
    eAttachedTo,
    eSecurityGroup,
    eVPCPeeringConnection,
    eDestinationVPC,
    eElasticLoadBalancerListener,
    ePort,
    eACL,
    eVPCEndpoint,
    eRouteTableRoute,
    eVPNConnection,
    eMissingComponent,
    eAddresses,
    eClassicLoadBalancerListener,
    eIngressRouteTable,
    eVPNGateway,
    ePortRanges,
    eLoadBalancerListenerPort,
    eVPC,
    eLoadBalancerTargetPort,

    -- ** ExportImageTask
    ExportImageTask,
    exportImageTask,
    eitStatusMessage,
    eitStatus,
    eitImageId,
    eitTags,
    eitS3ExportLocation,
    eitDescription,
    eitExportImageTaskId,
    eitProgress,

    -- ** ExportTask
    ExportTask,
    exportTask,
    etTags,
    etDescription,
    etExportTaskId,
    etExportToS3Task,
    etInstanceExportDetails,
    etState,
    etStatusMessage,

    -- ** ExportTaskS3Location
    ExportTaskS3Location,
    exportTaskS3Location,
    etslS3Bucket,
    etslS3Prefix,

    -- ** ExportTaskS3LocationRequest
    ExportTaskS3LocationRequest,
    exportTaskS3LocationRequest,
    etslrS3Prefix,
    etslrS3Bucket,

    -- ** ExportToS3Task
    ExportToS3Task,
    exportToS3Task,
    etstContainerFormat,
    etstDiskImageFormat,
    etstS3Bucket,
    etstS3Key,

    -- ** ExportToS3TaskSpecification
    ExportToS3TaskSpecification,
    exportToS3TaskSpecification,
    etstsContainerFormat,
    etstsDiskImageFormat,
    etstsS3Bucket,
    etstsS3Prefix,

    -- ** FailedQueuedPurchaseDeletion
    FailedQueuedPurchaseDeletion,
    failedQueuedPurchaseDeletion,
    fqpdReservedInstancesId,
    fqpdError,

    -- ** FederatedAuthentication
    FederatedAuthentication,
    federatedAuthentication,
    faSelfServiceSamlProviderARN,
    faSamlProviderARN,

    -- ** FederatedAuthenticationRequest
    FederatedAuthenticationRequest,
    federatedAuthenticationRequest,
    farSelfServiceSAMLProviderARN,
    farSAMLProviderARN,

    -- ** Filter
    Filter,
    filter',
    fValues,
    fName,

    -- ** FleetData
    FleetData,
    fleetData,
    fdLaunchTemplateConfigs,
    fdFleetState,
    fdOnDemandOptions,
    fdFleetId,
    fdFulfilledOnDemandCapacity,
    fdValidFrom,
    fdReplaceUnhealthyInstances,
    fdInstances,
    fdValidUntil,
    fdActivityStatus,
    fdTags,
    fdCreateTime,
    fdExcessCapacityTerminationPolicy,
    fdErrors,
    fdType,
    fdSpotOptions,
    fdTargetCapacitySpecification,
    fdFulfilledCapacity,
    fdClientToken,
    fdTerminateInstancesWithExpiration,

    -- ** FleetLaunchTemplateConfig
    FleetLaunchTemplateConfig,
    fleetLaunchTemplateConfig,
    fltcLaunchTemplateSpecification,
    fltcOverrides,

    -- ** FleetLaunchTemplateConfigRequest
    FleetLaunchTemplateConfigRequest,
    fleetLaunchTemplateConfigRequest,
    fltcrLaunchTemplateSpecification,
    fltcrOverrides,

    -- ** FleetLaunchTemplateOverrides
    FleetLaunchTemplateOverrides,
    fleetLaunchTemplateOverrides,
    fltoInstanceType,
    fltoPlacement,
    fltoPriority,
    fltoAvailabilityZone,
    fltoMaxPrice,
    fltoSubnetId,
    fltoWeightedCapacity,

    -- ** FleetLaunchTemplateOverridesRequest
    FleetLaunchTemplateOverridesRequest,
    fleetLaunchTemplateOverridesRequest,
    fltorInstanceType,
    fltorPlacement,
    fltorPriority,
    fltorAvailabilityZone,
    fltorMaxPrice,
    fltorSubnetId,
    fltorWeightedCapacity,

    -- ** FleetLaunchTemplateSpecification
    FleetLaunchTemplateSpecification,
    fleetLaunchTemplateSpecification,
    fltsLaunchTemplateId,
    fltsLaunchTemplateName,
    fltsVersion,

    -- ** FleetLaunchTemplateSpecificationRequest
    FleetLaunchTemplateSpecificationRequest,
    fleetLaunchTemplateSpecificationRequest,
    fltsrLaunchTemplateId,
    fltsrLaunchTemplateName,
    fltsrVersion,

    -- ** FleetSpotCapacityRebalance
    FleetSpotCapacityRebalance,
    fleetSpotCapacityRebalance,
    fscrReplacementStrategy,

    -- ** FleetSpotCapacityRebalanceRequest
    FleetSpotCapacityRebalanceRequest,
    fleetSpotCapacityRebalanceRequest,
    fscrrReplacementStrategy,

    -- ** FleetSpotMaintenanceStrategies
    FleetSpotMaintenanceStrategies,
    fleetSpotMaintenanceStrategies,
    fsmsCapacityRebalance,

    -- ** FleetSpotMaintenanceStrategiesRequest
    FleetSpotMaintenanceStrategiesRequest,
    fleetSpotMaintenanceStrategiesRequest,
    fsmsrCapacityRebalance,

    -- ** FlowLog
    FlowLog,
    flowLog,
    flResourceId,
    flMaxAggregationInterval,
    flCreationTime,
    flDeliverLogsStatus,
    flFlowLogId,
    flLogDestination,
    flTrafficType,
    flLogFormat,
    flLogGroupName,
    flDeliverLogsPermissionARN,
    flDeliverLogsErrorMessage,
    flTags,
    flLogDestinationType,
    flFlowLogStatus,

    -- ** FpgaDeviceInfo
    FpgaDeviceInfo,
    fpgaDeviceInfo,
    fdiMemoryInfo,
    fdiManufacturer,
    fdiName,
    fdiCount,

    -- ** FpgaDeviceMemoryInfo
    FpgaDeviceMemoryInfo,
    fpgaDeviceMemoryInfo,
    fdmiSizeInMiB,

    -- ** FpgaImage
    FpgaImage,
    fpgaImage,
    fiOwnerAlias,
    fiShellVersion,
    fiOwnerId,
    fiFpgaImageGlobalId,
    fiDataRetentionSupport,
    fiProductCodes,
    fiState,
    fiPciId,
    fiName,
    fiUpdateTime,
    fiTags,
    fiPublic,
    fiCreateTime,
    fiDescription,
    fiFpgaImageId,

    -- ** FpgaImageAttribute
    FpgaImageAttribute,
    fpgaImageAttribute,
    fiaProductCodes,
    fiaName,
    fiaLoadPermissions,
    fiaDescription,
    fiaFpgaImageId,

    -- ** FpgaImageState
    FpgaImageState,
    fpgaImageState,
    fisMessage,
    fisCode,

    -- ** FpgaInfo
    FpgaInfo,
    fpgaInfo,
    fiTotalFpgaMemoryInMiB,
    fiFpgas,

    -- ** GpuDeviceInfo
    GpuDeviceInfo,
    gpuDeviceInfo,
    gdiMemoryInfo,
    gdiManufacturer,
    gdiName,
    gdiCount,

    -- ** GpuDeviceMemoryInfo
    GpuDeviceMemoryInfo,
    gpuDeviceMemoryInfo,
    gdmiSizeInMiB,

    -- ** GpuInfo
    GpuInfo,
    gpuInfo,
    giGpus,
    giTotalGpuMemoryInMiB,

    -- ** GroupIdentifier
    GroupIdentifier,
    groupIdentifier,
    giGroupName,
    giGroupId,

    -- ** HibernationOptions
    HibernationOptions,
    hibernationOptions,
    hoConfigured,

    -- ** HibernationOptionsRequest
    HibernationOptionsRequest,
    hibernationOptionsRequest,
    horConfigured,

    -- ** HistoryRecord
    HistoryRecord,
    historyRecord,
    hrEventType,
    hrTimestamp,
    hrEventInformation,

    -- ** HistoryRecordEntry
    HistoryRecordEntry,
    historyRecordEntry,
    hreEventType,
    hreTimestamp,
    hreEventInformation,

    -- ** Host
    Host,
    host,
    hOwnerId,
    hHostProperties,
    hAvailableCapacity,
    hHostReservationId,
    hAllocationTime,
    hInstances,
    hAvailabilityZoneId,
    hState,
    hAvailabilityZone,
    hReleaseTime,
    hTags,
    hAutoPlacement,
    hHostRecovery,
    hMemberOfServiceLinkedResourceGroup,
    hAllowsMultipleInstanceTypes,
    hHostId,
    hClientToken,

    -- ** HostInstance
    HostInstance,
    hostInstance,
    hiOwnerId,
    hiInstanceId,
    hiInstanceType,

    -- ** HostOffering
    HostOffering,
    hostOffering,
    hoInstanceFamily,
    hoUpfrontPrice,
    hoPaymentOption,
    hoDuration,
    hoOfferingId,
    hoCurrencyCode,
    hoHourlyPrice,

    -- ** HostProperties
    HostProperties,
    hostProperties,
    hpInstanceFamily,
    hpTotalVCPUs,
    hpInstanceType,
    hpCores,
    hpSockets,

    -- ** HostReservation
    HostReservation,
    hostReservation,
    hrInstanceFamily,
    hrEnd,
    hrHostIdSet,
    hrUpfrontPrice,
    hrPaymentOption,
    hrDuration,
    hrOfferingId,
    hrHostReservationId,
    hrCurrencyCode,
    hrState,
    hrTags,
    hrCount,
    hrHourlyPrice,
    hrStart,

    -- ** IAMInstanceProfile
    IAMInstanceProfile,
    iamInstanceProfile,
    iapARN,
    iapId,

    -- ** IAMInstanceProfileAssociation
    IAMInstanceProfileAssociation,
    iamInstanceProfileAssociation,
    iapaInstanceId,
    iapaIAMInstanceProfile,
    iapaState,
    iapaAssociationId,
    iapaTimestamp,

    -- ** IAMInstanceProfileSpecification
    IAMInstanceProfileSpecification,
    iamInstanceProfileSpecification,
    iapsARN,
    iapsName,

    -- ** ICMPTypeCode
    ICMPTypeCode,
    icmpTypeCode,
    itcCode,
    itcType,

    -- ** IKEVersionsListValue
    IKEVersionsListValue,
    iKEVersionsListValue,
    ikevlvValue,

    -- ** IKEVersionsRequestListValue
    IKEVersionsRequestListValue,
    iKEVersionsRequestListValue,
    ikevrlvValue,

    -- ** IPPermission
    IPPermission,
    ipPermission,
    ipFromPort,
    ipPrefixListIds,
    ipIPRanges,
    ipIPv6Ranges,
    ipUserIdGroupPairs,
    ipToPort,
    ipIPProtocol,

    -- ** IPRange
    IPRange,
    ipRange,
    irDescription,
    irCidrIP,

    -- ** IPv6CidrAssociation
    IPv6CidrAssociation,
    ipv6CidrAssociation,
    icaIPv6Cidr,
    icaAssociatedResource,

    -- ** IPv6CidrBlock
    IPv6CidrBlock,
    ipv6CidrBlock,
    icbIPv6CidrBlock,

    -- ** IPv6Pool
    IPv6Pool,
    ipv6Pool,
    ipPoolId,
    ipPoolCidrBlocks,
    ipTags,
    ipDescription,

    -- ** IPv6Range
    IPv6Range,
    ipv6Range,
    iprCidrIPv6,
    iprDescription,

    -- ** IdFormat
    IdFormat,
    idFormat,
    ifUseLongIds,
    ifResource,
    ifDeadline,

    -- ** Image
    Image,
    image,
    imaPlatform,
    imaRootDeviceName,
    imaRAMDiskId,
    imaStateReason,
    imaUsageOperation,
    imaCreationDate,
    imaProductCodes,
    imaPlatformDetails,
    imaName,
    imaTags,
    imaSRIOVNetSupport,
    imaBlockDeviceMappings,
    imaKernelId,
    imaDescription,
    imaImageOwnerAlias,
    imaEnaSupport,
    imaImageId,
    imaImageLocation,
    imaState,
    imaOwnerId,
    imaPublic,
    imaArchitecture,
    imaImageType,
    imaRootDeviceType,
    imaVirtualizationType,
    imaHypervisor,

    -- ** ImageDiskContainer
    ImageDiskContainer,
    imageDiskContainer,
    idcFormat,
    idcUserBucket,
    idcDeviceName,
    idcSnapshotId,
    idcDescription,
    idcURL,

    -- ** ImportImageLicenseConfigurationRequest
    ImportImageLicenseConfigurationRequest,
    importImageLicenseConfigurationRequest,
    iilcrLicenseConfigurationARN,

    -- ** ImportImageLicenseConfigurationResponse
    ImportImageLicenseConfigurationResponse,
    importImageLicenseConfigurationResponse,
    iLicenseConfigurationARN,

    -- ** ImportImageTask
    ImportImageTask,
    importImageTask,
    iitHypervisor,
    iitPlatform,
    iitStatusMessage,
    iitStatus,
    iitSnapshotDetails,
    iitEncrypted,
    iitImportTaskId,
    iitLicenseSpecifications,
    iitArchitecture,
    iitImageId,
    iitKMSKeyId,
    iitTags,
    iitDescription,
    iitLicenseType,
    iitProgress,

    -- ** ImportInstanceLaunchSpecification
    ImportInstanceLaunchSpecification,
    importInstanceLaunchSpecification,
    iilsAdditionalInfo,
    iilsInstanceType,
    iilsUserData,
    iilsPlacement,
    iilsGroupIds,
    iilsGroupNames,
    iilsArchitecture,
    iilsInstanceInitiatedShutdownBehavior,
    iilsMonitoring,
    iilsSubnetId,
    iilsPrivateIPAddress,

    -- ** ImportInstanceTaskDetails
    ImportInstanceTaskDetails,
    importInstanceTaskDetails,
    iitdPlatform,
    iitdInstanceId,
    iitdVolumes,
    iitdDescription,

    -- ** ImportInstanceVolumeDetailItem
    ImportInstanceVolumeDetailItem,
    importInstanceVolumeDetailItem,
    iivdiStatusMessage,
    iivdiBytesConverted,
    iivdiStatus,
    iivdiVolume,
    iivdiImage,
    iivdiAvailabilityZone,
    iivdiDescription,

    -- ** ImportSnapshotTask
    ImportSnapshotTask,
    importSnapshotTask,
    istSnapshotTaskDetail,
    istImportTaskId,
    istTags,
    istDescription,

    -- ** ImportVolumeTaskDetails
    ImportVolumeTaskDetails,
    importVolumeTaskDetails,
    ivtdBytesConverted,
    ivtdVolume,
    ivtdImage,
    ivtdAvailabilityZone,
    ivtdDescription,

    -- ** InferenceAcceleratorInfo
    InferenceAcceleratorInfo,
    inferenceAcceleratorInfo,
    iaiAccelerators,

    -- ** InferenceDeviceInfo
    InferenceDeviceInfo,
    inferenceDeviceInfo,
    idiManufacturer,
    idiName,
    idiCount,

    -- ** Instance
    Instance,
    instance',
    iPlatform,
    iInstanceLifecycle,
    iStateTransitionReason,
    iRootDeviceName,
    iCapacityReservationSpecification,
    iEBSOptimized,
    iRAMDiskId,
    iElasticInferenceAcceleratorAssociations,
    iStateReason,
    iOutpostARN,
    iSourceDestCheck,
    iProductCodes,
    iSecurityGroups,
    iIAMInstanceProfile,
    iPublicDNSName,
    iHibernationOptions,
    iCapacityReservationId,
    iTags,
    iSRIOVNetSupport,
    iBlockDeviceMappings,
    iPublicIPAddress,
    iSubnetId,
    iEnclaveOptions,
    iKernelId,
    iCPUOptions,
    iPrivateDNSName,
    iKeyName,
    iNetworkInterfaces,
    iLicenses,
    iVPCId,
    iElasticGpuAssociations,
    iMetadataOptions,
    iEnaSupport,
    iSpotInstanceRequestId,
    iClientToken,
    iPrivateIPAddress,
    iInstanceId,
    iImageId,
    iAMILaunchIndex,
    iInstanceType,
    iLaunchTime,
    iPlacement,
    iMonitoring,
    iArchitecture,
    iRootDeviceType,
    iVirtualizationType,
    iHypervisor,
    iState,

    -- ** InstanceBlockDeviceMapping
    InstanceBlockDeviceMapping,
    instanceBlockDeviceMapping,
    ibdmEBS,
    ibdmDeviceName,

    -- ** InstanceBlockDeviceMappingSpecification
    InstanceBlockDeviceMappingSpecification,
    instanceBlockDeviceMappingSpecification,
    ibdmsEBS,
    ibdmsNoDevice,
    ibdmsVirtualName,
    ibdmsDeviceName,

    -- ** InstanceCapacity
    InstanceCapacity,
    instanceCapacity,
    icInstanceType,
    icAvailableCapacity,
    icTotalCapacity,

    -- ** InstanceCount
    InstanceCount,
    instanceCount,
    icState,
    icInstanceCount,

    -- ** InstanceCreditSpecification
    InstanceCreditSpecification,
    instanceCreditSpecification,
    icsInstanceId,
    icsCPUCredits,

    -- ** InstanceCreditSpecificationRequest
    InstanceCreditSpecificationRequest,
    instanceCreditSpecificationRequest,
    icsrInstanceId,
    icsrCPUCredits,

    -- ** InstanceExportDetails
    InstanceExportDetails,
    instanceExportDetails,
    iedInstanceId,
    iedTargetEnvironment,

    -- ** InstanceFamilyCreditSpecification
    InstanceFamilyCreditSpecification,
    instanceFamilyCreditSpecification,
    ifcsInstanceFamily,
    ifcsCPUCredits,

    -- ** InstanceIPv6Address
    InstanceIPv6Address,
    instanceIPv6Address,
    iiaIPv6Address,

    -- ** InstanceIPv6AddressRequest
    InstanceIPv6AddressRequest,
    instanceIPv6AddressRequest,
    iiarIPv6Address,

    -- ** InstanceMarketOptionsRequest
    InstanceMarketOptionsRequest,
    instanceMarketOptionsRequest,
    imorMarketType,
    imorSpotOptions,

    -- ** InstanceMetadataOptionsRequest
    InstanceMetadataOptionsRequest,
    instanceMetadataOptionsRequest,
    iHTTPEndpoint,
    iHTTPPutResponseHopLimit,
    iHTTPTokens,

    -- ** InstanceMetadataOptionsResponse
    InstanceMetadataOptionsResponse,
    instanceMetadataOptionsResponse,
    imorHTTPEndpoint,
    imorHTTPPutResponseHopLimit,
    imorState,
    imorHTTPTokens,

    -- ** InstanceMonitoring
    InstanceMonitoring,
    instanceMonitoring,
    imInstanceId,
    imMonitoring,

    -- ** InstanceNetworkInterface
    InstanceNetworkInterface,
    instanceNetworkInterface,
    iniGroups,
    iniStatus,
    iniOwnerId,
    iniPrivateIPAddresses,
    iniAttachment,
    iniMACAddress,
    iniAssociation,
    iniIPv6Addresses,
    iniInterfaceType,
    iniSourceDestCheck,
    iniNetworkInterfaceId,
    iniSubnetId,
    iniDescription,
    iniPrivateDNSName,
    iniVPCId,
    iniPrivateIPAddress,

    -- ** InstanceNetworkInterfaceAssociation
    InstanceNetworkInterfaceAssociation,
    instanceNetworkInterfaceAssociation,
    iniaIPOwnerId,
    iniaCarrierIP,
    iniaPublicDNSName,
    iniaPublicIP,

    -- ** InstanceNetworkInterfaceAttachment
    InstanceNetworkInterfaceAttachment,
    instanceNetworkInterfaceAttachment,
    iniaStatus,
    iniaAttachTime,
    iniaAttachmentId,
    iniaNetworkCardIndex,
    iniaDeleteOnTermination,
    iniaDeviceIndex,

    -- ** InstanceNetworkInterfaceSpecification
    InstanceNetworkInterfaceSpecification,
    instanceNetworkInterfaceSpecification,
    inisGroups,
    inisPrivateIPAddresses,
    inisIPv6Addresses,
    inisInterfaceType,
    inisAssociatePublicIPAddress,
    inisAssociateCarrierIPAddress,
    inisIPv6AddressCount,
    inisNetworkCardIndex,
    inisDeleteOnTermination,
    inisNetworkInterfaceId,
    inisSubnetId,
    inisDescription,
    inisDeviceIndex,
    inisSecondaryPrivateIPAddressCount,
    inisPrivateIPAddress,

    -- ** InstancePrivateIPAddress
    InstancePrivateIPAddress,
    instancePrivateIPAddress,
    ipiaPrimary,
    ipiaAssociation,
    ipiaPrivateDNSName,
    ipiaPrivateIPAddress,

    -- ** InstanceSpecification
    InstanceSpecification,
    instanceSpecification,
    isInstanceId,
    isExcludeBootVolume,

    -- ** InstanceState
    InstanceState,
    instanceState,
    isName,
    isCode,

    -- ** InstanceStateChange
    InstanceStateChange,
    instanceStateChange,
    iscInstanceId,
    iscCurrentState,
    iscPreviousState,

    -- ** InstanceStatus
    InstanceStatus,
    instanceStatus,
    issInstanceId,
    issSystemStatus,
    issOutpostARN,
    issInstanceStatus,
    issEvents,
    issAvailabilityZone,
    issInstanceState,

    -- ** InstanceStatusDetails
    InstanceStatusDetails,
    instanceStatusDetails,
    isdStatus,
    isdImpairedSince,
    isdName,

    -- ** InstanceStatusEvent
    InstanceStatusEvent,
    instanceStatusEvent,
    iseNotBefore,
    iseInstanceEventId,
    iseCode,
    iseNotAfter,
    iseNotBeforeDeadline,
    iseDescription,

    -- ** InstanceStatusSummary
    InstanceStatusSummary,
    instanceStatusSummary,
    issDetails,
    issStatus,

    -- ** InstanceStorageInfo
    InstanceStorageInfo,
    instanceStorageInfo,
    isiNvmeSupport,
    isiTotalSizeInGB,
    isiDisks,

    -- ** InstanceTagNotificationAttribute
    InstanceTagNotificationAttribute,
    instanceTagNotificationAttribute,
    itnaInstanceTagKeys,
    itnaIncludeAllTagsOfInstance,

    -- ** InstanceTypeInfo
    InstanceTypeInfo,
    instanceTypeInfo,
    itiMemoryInfo,
    itiHypervisor,
    itiGpuInfo,
    itiInstanceType,
    itiBurstablePerformanceSupported,
    itiVCPUInfo,
    itiSupportedRootDeviceTypes,
    itiPlacementGroupInfo,
    itiNetworkInfo,
    itiProcessorInfo,
    itiEBSInfo,
    itiAutoRecoverySupported,
    itiCurrentGeneration,
    itiHibernationSupported,
    itiDedicatedHostsSupported,
    itiInstanceStorageSupported,
    itiInstanceStorageInfo,
    itiFpgaInfo,
    itiSupportedUsageClasses,
    itiFreeTierEligible,
    itiBareMetal,
    itiInferenceAcceleratorInfo,
    itiSupportedVirtualizationTypes,

    -- ** InstanceTypeOffering
    InstanceTypeOffering,
    instanceTypeOffering,
    itoInstanceType,
    itoLocationType,
    itoLocation,

    -- ** InstanceUsage
    InstanceUsage,
    instanceUsage,
    iuAccountId,
    iuUsedInstanceCount,

    -- ** InternetGateway
    InternetGateway,
    internetGateway,
    igOwnerId,
    igTags,
    igAttachments,
    igInternetGatewayId,

    -- ** InternetGatewayAttachment
    InternetGatewayAttachment,
    internetGatewayAttachment,
    igaState,
    igaVPCId,

    -- ** KeyPairInfo
    KeyPairInfo,
    keyPairInfo,
    kpiKeyFingerprint,
    kpiKeyPairId,
    kpiTags,
    kpiKeyName,

    -- ** LastError
    LastError,
    lastError,
    leMessage,
    leCode,

    -- ** LaunchPermission
    LaunchPermission,
    launchPermission,
    lGroup,
    lUserId,

    -- ** LaunchPermissionModifications
    LaunchPermissionModifications,
    launchPermissionModifications,
    lpmAdd,
    lpmRemove,

    -- ** LaunchSpecification
    LaunchSpecification,
    launchSpecification,
    lsInstanceType,
    lsEBSOptimized,
    lsUserData,
    lsPlacement,
    lsAddressingType,
    lsRAMDiskId,
    lsImageId,
    lsSecurityGroups,
    lsIAMInstanceProfile,
    lsMonitoring,
    lsBlockDeviceMappings,
    lsSubnetId,
    lsKernelId,
    lsKeyName,
    lsNetworkInterfaces,

    -- ** LaunchTemplate
    LaunchTemplate,
    launchTemplate,
    ltLaunchTemplateId,
    ltLaunchTemplateName,
    ltTags,
    ltCreateTime,
    ltCreatedBy,
    ltDefaultVersionNumber,
    ltLatestVersionNumber,

    -- ** LaunchTemplateAndOverridesResponse
    LaunchTemplateAndOverridesResponse,
    launchTemplateAndOverridesResponse,
    ltaorLaunchTemplateSpecification,
    ltaorOverrides,

    -- ** LaunchTemplateBlockDeviceMapping
    LaunchTemplateBlockDeviceMapping,
    launchTemplateBlockDeviceMapping,
    ltbdmEBS,
    ltbdmNoDevice,
    ltbdmVirtualName,
    ltbdmDeviceName,

    -- ** LaunchTemplateBlockDeviceMappingRequest
    LaunchTemplateBlockDeviceMappingRequest,
    launchTemplateBlockDeviceMappingRequest,
    ltbdmrEBS,
    ltbdmrNoDevice,
    ltbdmrVirtualName,
    ltbdmrDeviceName,

    -- ** LaunchTemplateCPUOptions
    LaunchTemplateCPUOptions,
    launchTemplateCPUOptions,
    ltcoThreadsPerCore,
    ltcoCoreCount,

    -- ** LaunchTemplateCPUOptionsRequest
    LaunchTemplateCPUOptionsRequest,
    launchTemplateCPUOptionsRequest,
    ltcorThreadsPerCore,
    ltcorCoreCount,

    -- ** LaunchTemplateCapacityReservationSpecificationRequest
    LaunchTemplateCapacityReservationSpecificationRequest,
    launchTemplateCapacityReservationSpecificationRequest,
    lCapacityReservationPreference,
    lCapacityReservationTarget,

    -- ** LaunchTemplateCapacityReservationSpecificationResponse
    LaunchTemplateCapacityReservationSpecificationResponse,
    launchTemplateCapacityReservationSpecificationResponse,
    ltcrsrCapacityReservationPreference,
    ltcrsrCapacityReservationTarget,

    -- ** LaunchTemplateConfig
    LaunchTemplateConfig,
    launchTemplateConfig,
    ltcLaunchTemplateSpecification,
    ltcOverrides,

    -- ** LaunchTemplateEBSBlockDevice
    LaunchTemplateEBSBlockDevice,
    launchTemplateEBSBlockDevice,
    ltebdEncrypted,
    ltebdThroughput,
    ltebdKMSKeyId,
    ltebdDeleteOnTermination,
    ltebdSnapshotId,
    ltebdVolumeType,
    ltebdVolumeSize,
    ltebdIOPS,

    -- ** LaunchTemplateEBSBlockDeviceRequest
    LaunchTemplateEBSBlockDeviceRequest,
    launchTemplateEBSBlockDeviceRequest,
    ltebdrEncrypted,
    ltebdrThroughput,
    ltebdrKMSKeyId,
    ltebdrDeleteOnTermination,
    ltebdrSnapshotId,
    ltebdrVolumeType,
    ltebdrVolumeSize,
    ltebdrIOPS,

    -- ** LaunchTemplateElasticInferenceAccelerator
    LaunchTemplateElasticInferenceAccelerator,
    launchTemplateElasticInferenceAccelerator,
    lteiaCount,
    lteiaType,

    -- ** LaunchTemplateElasticInferenceAcceleratorResponse
    LaunchTemplateElasticInferenceAcceleratorResponse,
    launchTemplateElasticInferenceAcceleratorResponse,
    lteiarCount,
    lteiarType,

    -- ** LaunchTemplateEnclaveOptions
    LaunchTemplateEnclaveOptions,
    launchTemplateEnclaveOptions,
    lteoEnabled,

    -- ** LaunchTemplateEnclaveOptionsRequest
    LaunchTemplateEnclaveOptionsRequest,
    launchTemplateEnclaveOptionsRequest,
    lteorEnabled,

    -- ** LaunchTemplateHibernationOptions
    LaunchTemplateHibernationOptions,
    launchTemplateHibernationOptions,
    lthoConfigured,

    -- ** LaunchTemplateHibernationOptionsRequest
    LaunchTemplateHibernationOptionsRequest,
    launchTemplateHibernationOptionsRequest,
    lthorConfigured,

    -- ** LaunchTemplateIAMInstanceProfileSpecification
    LaunchTemplateIAMInstanceProfileSpecification,
    launchTemplateIAMInstanceProfileSpecification,
    ltiapsARN,
    ltiapsName,

    -- ** LaunchTemplateIAMInstanceProfileSpecificationRequest
    LaunchTemplateIAMInstanceProfileSpecificationRequest,
    launchTemplateIAMInstanceProfileSpecificationRequest,
    ltiapsrARN,
    ltiapsrName,

    -- ** LaunchTemplateInstanceMarketOptions
    LaunchTemplateInstanceMarketOptions,
    launchTemplateInstanceMarketOptions,
    ltimoMarketType,
    ltimoSpotOptions,

    -- ** LaunchTemplateInstanceMarketOptionsRequest
    LaunchTemplateInstanceMarketOptionsRequest,
    launchTemplateInstanceMarketOptionsRequest,
    ltimorMarketType,
    ltimorSpotOptions,

    -- ** LaunchTemplateInstanceMetadataOptions
    LaunchTemplateInstanceMetadataOptions,
    launchTemplateInstanceMetadataOptions,
    ltimoHTTPEndpoint,
    ltimoHTTPPutResponseHopLimit,
    ltimoState,
    ltimoHTTPTokens,

    -- ** LaunchTemplateInstanceMetadataOptionsRequest
    LaunchTemplateInstanceMetadataOptionsRequest,
    launchTemplateInstanceMetadataOptionsRequest,
    ltimorHTTPEndpoint,
    ltimorHTTPPutResponseHopLimit,
    ltimorHTTPTokens,

    -- ** LaunchTemplateInstanceNetworkInterfaceSpecification
    LaunchTemplateInstanceNetworkInterfaceSpecification,
    launchTemplateInstanceNetworkInterfaceSpecification,
    ltinisGroups,
    ltinisPrivateIPAddresses,
    ltinisIPv6Addresses,
    ltinisInterfaceType,
    ltinisAssociatePublicIPAddress,
    ltinisAssociateCarrierIPAddress,
    ltinisIPv6AddressCount,
    ltinisNetworkCardIndex,
    ltinisDeleteOnTermination,
    ltinisNetworkInterfaceId,
    ltinisSubnetId,
    ltinisDescription,
    ltinisDeviceIndex,
    ltinisSecondaryPrivateIPAddressCount,
    ltinisPrivateIPAddress,

    -- ** LaunchTemplateInstanceNetworkInterfaceSpecificationRequest
    LaunchTemplateInstanceNetworkInterfaceSpecificationRequest,
    launchTemplateInstanceNetworkInterfaceSpecificationRequest,
    ltinisrGroups,
    ltinisrPrivateIPAddresses,
    ltinisrIPv6Addresses,
    ltinisrInterfaceType,
    ltinisrAssociatePublicIPAddress,
    ltinisrAssociateCarrierIPAddress,
    ltinisrIPv6AddressCount,
    ltinisrNetworkCardIndex,
    ltinisrDeleteOnTermination,
    ltinisrNetworkInterfaceId,
    ltinisrSubnetId,
    ltinisrDescription,
    ltinisrDeviceIndex,
    ltinisrSecondaryPrivateIPAddressCount,
    ltinisrPrivateIPAddress,

    -- ** LaunchTemplateLicenseConfiguration
    LaunchTemplateLicenseConfiguration,
    launchTemplateLicenseConfiguration,
    ltlcLicenseConfigurationARN,

    -- ** LaunchTemplateLicenseConfigurationRequest
    LaunchTemplateLicenseConfigurationRequest,
    launchTemplateLicenseConfigurationRequest,
    ltlcrLicenseConfigurationARN,

    -- ** LaunchTemplateOverrides
    LaunchTemplateOverrides,
    launchTemplateOverrides,
    ltoInstanceType,
    ltoSpotPrice,
    ltoPriority,
    ltoAvailabilityZone,
    ltoSubnetId,
    ltoWeightedCapacity,

    -- ** LaunchTemplatePlacement
    LaunchTemplatePlacement,
    launchTemplatePlacement,
    ltpSpreadDomain,
    ltpGroupName,
    ltpTenancy,
    ltpAffinity,
    ltpAvailabilityZone,
    ltpPartitionNumber,
    ltpHostResourceGroupARN,
    ltpHostId,

    -- ** LaunchTemplatePlacementRequest
    LaunchTemplatePlacementRequest,
    launchTemplatePlacementRequest,
    ltprSpreadDomain,
    ltprGroupName,
    ltprTenancy,
    ltprAffinity,
    ltprAvailabilityZone,
    ltprPartitionNumber,
    ltprHostResourceGroupARN,
    ltprHostId,

    -- ** LaunchTemplateSpecification
    LaunchTemplateSpecification,
    launchTemplateSpecification,
    ltsLaunchTemplateId,
    ltsLaunchTemplateName,
    ltsVersion,

    -- ** LaunchTemplateSpotMarketOptions
    LaunchTemplateSpotMarketOptions,
    launchTemplateSpotMarketOptions,
    ltsmoBlockDurationMinutes,
    ltsmoInstanceInterruptionBehavior,
    ltsmoValidUntil,
    ltsmoSpotInstanceType,
    ltsmoMaxPrice,

    -- ** LaunchTemplateSpotMarketOptionsRequest
    LaunchTemplateSpotMarketOptionsRequest,
    launchTemplateSpotMarketOptionsRequest,
    ltsmorBlockDurationMinutes,
    ltsmorInstanceInterruptionBehavior,
    ltsmorValidUntil,
    ltsmorSpotInstanceType,
    ltsmorMaxPrice,

    -- ** LaunchTemplateTagSpecification
    LaunchTemplateTagSpecification,
    launchTemplateTagSpecification,
    lttsResourceType,
    lttsTags,

    -- ** LaunchTemplateTagSpecificationRequest
    LaunchTemplateTagSpecificationRequest,
    launchTemplateTagSpecificationRequest,
    lttsrResourceType,
    lttsrTags,

    -- ** LaunchTemplateVersion
    LaunchTemplateVersion,
    launchTemplateVersion,
    ltvDefaultVersion,
    ltvLaunchTemplateId,
    ltvLaunchTemplateData,
    ltvLaunchTemplateName,
    ltvVersionDescription,
    ltvVersionNumber,
    ltvCreateTime,
    ltvCreatedBy,

    -- ** LaunchTemplatesMonitoring
    LaunchTemplatesMonitoring,
    launchTemplatesMonitoring,
    ltmEnabled,

    -- ** LaunchTemplatesMonitoringRequest
    LaunchTemplatesMonitoringRequest,
    launchTemplatesMonitoringRequest,
    ltmrEnabled,

    -- ** LicenseConfiguration
    LicenseConfiguration,
    licenseConfiguration,
    lcLicenseConfigurationARN,

    -- ** LicenseConfigurationRequest
    LicenseConfigurationRequest,
    licenseConfigurationRequest,
    lcrLicenseConfigurationARN,

    -- ** LoadBalancersConfig
    LoadBalancersConfig,
    loadBalancersConfig,
    lbcClassicLoadBalancersConfig,
    lbcTargetGroupsConfig,

    -- ** LoadPermission
    LoadPermission,
    loadPermission,
    lpGroup,
    lpUserId,

    -- ** LoadPermissionModifications
    LoadPermissionModifications,
    loadPermissionModifications,
    lAdd,
    lRemove,

    -- ** LoadPermissionRequest
    LoadPermissionRequest,
    loadPermissionRequest,
    lprGroup,
    lprUserId,

    -- ** LocalGateway
    LocalGateway,
    localGateway,
    lgOwnerId,
    lgOutpostARN,
    lgLocalGatewayId,
    lgState,
    lgTags,

    -- ** LocalGatewayRoute
    LocalGatewayRoute,
    localGatewayRoute,
    lgrOwnerId,
    lgrLocalGatewayVirtualInterfaceGroupId,
    lgrLocalGatewayRouteTableARN,
    lgrState,
    lgrLocalGatewayRouteTableId,
    lgrDestinationCidrBlock,
    lgrType,

    -- ** LocalGatewayRouteTable
    LocalGatewayRouteTable,
    localGatewayRouteTable,
    lgrtOwnerId,
    lgrtOutpostARN,
    lgrtLocalGatewayId,
    lgrtLocalGatewayRouteTableARN,
    lgrtState,
    lgrtLocalGatewayRouteTableId,
    lgrtTags,

    -- ** LocalGatewayRouteTableVPCAssociation
    LocalGatewayRouteTableVPCAssociation,
    localGatewayRouteTableVPCAssociation,
    lgrtvaOwnerId,
    lgrtvaLocalGatewayRouteTableVPCAssociationId,
    lgrtvaLocalGatewayId,
    lgrtvaLocalGatewayRouteTableARN,
    lgrtvaState,
    lgrtvaLocalGatewayRouteTableId,
    lgrtvaTags,
    lgrtvaVPCId,

    -- ** LocalGatewayRouteTableVirtualInterfaceGroupAssociation
    LocalGatewayRouteTableVirtualInterfaceGroupAssociation,
    localGatewayRouteTableVirtualInterfaceGroupAssociation,
    lgrtvigaOwnerId,
    lgrtvigaLocalGatewayVirtualInterfaceGroupId,
    lgrtvigaLocalGatewayId,
    lgrtvigaLocalGatewayRouteTableVirtualInterfaceGroupAssociationId,
    lgrtvigaLocalGatewayRouteTableARN,
    lgrtvigaState,
    lgrtvigaLocalGatewayRouteTableId,
    lgrtvigaTags,

    -- ** LocalGatewayVirtualInterface
    LocalGatewayVirtualInterface,
    localGatewayVirtualInterface,
    lgviPeerAddress,
    lgviOwnerId,
    lgviLocalGatewayVirtualInterfaceId,
    lgviPeerBGPASN,
    lgviLocalAddress,
    lgviLocalGatewayId,
    lgviLocalBGPASN,
    lgviTags,
    lgviVLAN,

    -- ** LocalGatewayVirtualInterfaceGroup
    LocalGatewayVirtualInterfaceGroup,
    localGatewayVirtualInterfaceGroup,
    lgvigLocalGatewayVirtualInterfaceIds,
    lgvigOwnerId,
    lgvigLocalGatewayVirtualInterfaceGroupId,
    lgvigLocalGatewayId,
    lgvigTags,

    -- ** ManagedPrefixList
    ManagedPrefixList,
    managedPrefixList,
    mplStateMessage,
    mplOwnerId,
    mplMaxEntries,
    mplPrefixListName,
    mplVersion,
    mplPrefixListId,
    mplPrefixListARN,
    mplState,
    mplTags,
    mplAddressFamily,

    -- ** MemoryInfo
    MemoryInfo,
    memoryInfo,
    miSizeInMiB,

    -- ** ModifyTransitGatewayOptions
    ModifyTransitGatewayOptions,
    modifyTransitGatewayOptions,
    mtgoRemoveTransitGatewayCidrBlocks,
    mtgoPropagationDefaultRouteTableId,
    mtgoVPNEcmpSupport,
    mtgoDNSSupport,
    mtgoAddTransitGatewayCidrBlocks,
    mtgoAssociationDefaultRouteTableId,
    mtgoAutoAcceptSharedAttachments,
    mtgoDefaultRouteTableAssociation,
    mtgoDefaultRouteTablePropagation,

    -- ** ModifyTransitGatewayVPCAttachmentRequestOptions
    ModifyTransitGatewayVPCAttachmentRequestOptions,
    modifyTransitGatewayVPCAttachmentRequestOptions,
    mtgvaroApplianceModeSupport,
    mtgvaroDNSSupport,
    mtgvaroIPv6Support,

    -- ** ModifyVPNTunnelOptionsSpecification
    ModifyVPNTunnelOptionsSpecification,
    modifyVPNTunnelOptionsSpecification,
    mvtosPhase1LifetimeSeconds,
    mvtosPhase2DHGroupNumbers,
    mvtosIKEVersions,
    mvtosPhase2EncryptionAlgorithms,
    mvtosPhase2IntegrityAlgorithms,
    mvtosStartupAction,
    mvtosDPDTimeoutSeconds,
    mvtosPhase1DHGroupNumbers,
    mvtosPhase1EncryptionAlgorithms,
    mvtosReplayWindowSize,
    mvtosPreSharedKey,
    mvtosTunnelInsideIPv6Cidr,
    mvtosRekeyFuzzPercentage,
    mvtosRekeyMarginTimeSeconds,
    mvtosTunnelInsideCidr,
    mvtosPhase1IntegrityAlgorithms,
    mvtosDPDTimeoutAction,
    mvtosPhase2LifetimeSeconds,

    -- ** Monitoring
    Monitoring,
    monitoring,
    mState,

    -- ** MovingAddressStatus
    MovingAddressStatus,
    movingAddressStatus,
    masMoveStatus,
    masPublicIP,

    -- ** NatGateway
    NatGateway,
    natGateway,
    ngNatGatewayAddresses,
    ngFailureMessage,
    ngFailureCode,
    ngProvisionedBandwidth,
    ngState,
    ngDeleteTime,
    ngTags,
    ngCreateTime,
    ngSubnetId,
    ngNatGatewayId,
    ngVPCId,

    -- ** NatGatewayAddress
    NatGatewayAddress,
    natGatewayAddress,
    ngaPrivateIP,
    ngaNetworkInterfaceId,
    ngaPublicIP,
    ngaAllocationId,

    -- ** NetworkACL
    NetworkACL,
    networkACL,
    naOwnerId,
    naIsDefault,
    naTags,
    naVPCId,
    naNetworkACLId,
    naAssociations,
    naEntries,

    -- ** NetworkACLAssociation
    NetworkACLAssociation,
    networkACLAssociation,
    naaNetworkACLAssociationId,
    naaSubnetId,
    naaNetworkACLId,

    -- ** NetworkACLEntry
    NetworkACLEntry,
    networkACLEntry,
    naePortRange,
    naeRuleAction,
    naeEgress,
    naeICMPTypeCode,
    naeIPv6CidrBlock,
    naeProtocol,
    naeRuleNumber,
    naeCidrBlock,

    -- ** NetworkCardInfo
    NetworkCardInfo,
    networkCardInfo,
    nciMaximumNetworkInterfaces,
    nciNetworkCardIndex,
    nciNetworkPerformance,

    -- ** NetworkInfo
    NetworkInfo,
    networkInfo,
    niDefaultNetworkCardIndex,
    niEfaSupported,
    niNetworkCards,
    niIPv4AddressesPerInterface,
    niMaximumNetworkInterfaces,
    niIPv6Supported,
    niMaximumNetworkCards,
    niNetworkPerformance,
    niIPv6AddressesPerInterface,
    niEnaSupport,

    -- ** NetworkInsightsAnalysis
    NetworkInsightsAnalysis,
    networkInsightsAnalysis,
    nStatusMessage,
    nStatus,
    nNetworkInsightsAnalysisId,
    nStartDate,
    nFilterInARNs,
    nReturnPathComponents,
    nExplanations,
    nNetworkPathFound,
    nNetworkInsightsAnalysisARN,
    nTags,
    nNetworkInsightsPathId,
    nAlternatePathHints,
    nForwardPathComponents,

    -- ** NetworkInsightsPath
    NetworkInsightsPath,
    networkInsightsPath,
    nipCreatedDate,
    nipSource,
    nipDestinationIP,
    nipDestination,
    nipSourceIP,
    nipTags,
    nipProtocol,
    nipNetworkInsightsPathARN,
    nipNetworkInsightsPathId,
    nipDestinationPort,

    -- ** NetworkInterface
    NetworkInterface,
    networkInterface,
    niGroups,
    niStatus,
    niOwnerId,
    niPrivateIPAddresses,
    niAttachment,
    niMACAddress,
    niAssociation,
    niIPv6Addresses,
    niRequesterManaged,
    niRequesterId,
    niOutpostARN,
    niTagSet,
    niInterfaceType,
    niSourceDestCheck,
    niAvailabilityZone,
    niNetworkInterfaceId,
    niSubnetId,
    niDescription,
    niPrivateDNSName,
    niVPCId,
    niPrivateIPAddress,

    -- ** NetworkInterfaceAssociation
    NetworkInterfaceAssociation,
    networkInterfaceAssociation,
    niaIPOwnerId,
    niaCarrierIP,
    niaCustomerOwnedIP,
    niaPublicDNSName,
    niaAssociationId,
    niaPublicIP,
    niaAllocationId,

    -- ** NetworkInterfaceAttachment
    NetworkInterfaceAttachment,
    networkInterfaceAttachment,
    niaStatus,
    niaInstanceId,
    niaAttachTime,
    niaAttachmentId,
    niaNetworkCardIndex,
    niaDeleteOnTermination,
    niaDeviceIndex,
    niaInstanceOwnerId,

    -- ** NetworkInterfaceAttachmentChanges
    NetworkInterfaceAttachmentChanges,
    networkInterfaceAttachmentChanges,
    niacAttachmentId,
    niacDeleteOnTermination,

    -- ** NetworkInterfaceIPv6Address
    NetworkInterfaceIPv6Address,
    networkInterfaceIPv6Address,
    niiaIPv6Address,

    -- ** NetworkInterfacePermission
    NetworkInterfacePermission,
    networkInterfacePermission,
    nipAWSAccountId,
    nipPermissionState,
    nipNetworkInterfaceId,
    nipPermission,
    nipAWSService,
    nipNetworkInterfacePermissionId,

    -- ** NetworkInterfacePermissionState
    NetworkInterfacePermissionState,
    networkInterfacePermissionState,
    nipsStatusMessage,
    nipsState,

    -- ** NetworkInterfacePrivateIPAddress
    NetworkInterfacePrivateIPAddress,
    networkInterfacePrivateIPAddress,
    nipiaPrimary,
    nipiaAssociation,
    nipiaPrivateDNSName,
    nipiaPrivateIPAddress,

    -- ** NewDHCPConfiguration
    NewDHCPConfiguration,
    newDHCPConfiguration,
    ndcKey,
    ndcValues,

    -- ** OnDemandOptions
    OnDemandOptions,
    onDemandOptions,
    odoMinTargetCapacity,
    odoCapacityReservationOptions,
    odoSingleInstanceType,
    odoAllocationStrategy,
    odoMaxTotalPrice,
    odoSingleAvailabilityZone,

    -- ** OnDemandOptionsRequest
    OnDemandOptionsRequest,
    onDemandOptionsRequest,
    odorMinTargetCapacity,
    odorCapacityReservationOptions,
    odorSingleInstanceType,
    odorAllocationStrategy,
    odorMaxTotalPrice,
    odorSingleAvailabilityZone,

    -- ** PathComponent
    PathComponent,
    pathComponent,
    pcSecurityGroupRule,
    pcSequenceNumber,
    pcSubnet,
    pcSourceVPC,
    pcACLRule,
    pcInboundHeader,
    pcComponent,
    pcDestinationVPC,
    pcRouteTableRoute,
    pcOutboundHeader,
    pcVPC,

    -- ** PciId
    PciId,
    pciId,
    piSubsystemId,
    piSubsystemVendorId,
    piDeviceId,
    piVendorId,

    -- ** PeeringAttachmentStatus
    PeeringAttachmentStatus,
    peeringAttachmentStatus,
    pasMessage,
    pasCode,

    -- ** PeeringConnectionOptions
    PeeringConnectionOptions,
    peeringConnectionOptions,
    pcoAllowDNSResolutionFromRemoteVPC,
    pcoAllowEgressFromLocalVPCToRemoteClassicLink,
    pcoAllowEgressFromLocalClassicLinkToRemoteVPC,

    -- ** PeeringConnectionOptionsRequest
    PeeringConnectionOptionsRequest,
    peeringConnectionOptionsRequest,
    pcorAllowDNSResolutionFromRemoteVPC,
    pcorAllowEgressFromLocalVPCToRemoteClassicLink,
    pcorAllowEgressFromLocalClassicLinkToRemoteVPC,

    -- ** PeeringTgwInfo
    PeeringTgwInfo,
    peeringTgwInfo,
    ptiOwnerId,
    ptiRegion,
    ptiTransitGatewayId,

    -- ** Phase1DHGroupNumbersListValue
    Phase1DHGroupNumbersListValue,
    phase1DHGroupNumbersListValue,
    phaValue,

    -- ** Phase1DHGroupNumbersRequestListValue
    Phase1DHGroupNumbersRequestListValue,
    phase1DHGroupNumbersRequestListValue,
    pdhgnrlvdValue,

    -- ** Phase1EncryptionAlgorithmsListValue
    Phase1EncryptionAlgorithmsListValue,
    phase1EncryptionAlgorithmsListValue,
    pealveValue,

    -- ** Phase1EncryptionAlgorithmsRequestListValue
    Phase1EncryptionAlgorithmsRequestListValue,
    phase1EncryptionAlgorithmsRequestListValue,
    pearlvValue,

    -- ** Phase1IntegrityAlgorithmsListValue
    Phase1IntegrityAlgorithmsListValue,
    phase1IntegrityAlgorithmsListValue,
    pialvValue,

    -- ** Phase1IntegrityAlgorithmsRequestListValue
    Phase1IntegrityAlgorithmsRequestListValue,
    phase1IntegrityAlgorithmsRequestListValue,
    piarlviValue,

    -- ** Phase2DHGroupNumbersListValue
    Phase2DHGroupNumbersListValue,
    phase2DHGroupNumbersListValue,
    pdhgnlvValue,

    -- ** Phase2DHGroupNumbersRequestListValue
    Phase2DHGroupNumbersRequestListValue,
    phase2DHGroupNumbersRequestListValue,
    pdhgnrlvValue,

    -- ** Phase2EncryptionAlgorithmsListValue
    Phase2EncryptionAlgorithmsListValue,
    phase2EncryptionAlgorithmsListValue,
    pealvValue,

    -- ** Phase2EncryptionAlgorithmsRequestListValue
    Phase2EncryptionAlgorithmsRequestListValue,
    phase2EncryptionAlgorithmsRequestListValue,
    pearlveValue,

    -- ** Phase2IntegrityAlgorithmsListValue
    Phase2IntegrityAlgorithmsListValue,
    phase2IntegrityAlgorithmsListValue,
    pValue,

    -- ** Phase2IntegrityAlgorithmsRequestListValue
    Phase2IntegrityAlgorithmsRequestListValue,
    phase2IntegrityAlgorithmsRequestListValue,
    piarlvValue,

    -- ** Placement
    Placement,
    placement,
    pSpreadDomain,
    pGroupName,
    pTenancy,
    pAffinity,
    pAvailabilityZone,
    pPartitionNumber,
    pHostResourceGroupARN,
    pHostId,

    -- ** PlacementGroup
    PlacementGroup,
    placementGroup,
    pgStrategy,
    pgGroupName,
    pgGroupId,
    pgState,
    pgTags,
    pgPartitionCount,

    -- ** PlacementGroupInfo
    PlacementGroupInfo,
    placementGroupInfo,
    pgiSupportedStrategies,

    -- ** PlacementResponse
    PlacementResponse,
    placementResponse,
    prGroupName,

    -- ** PoolCidrBlock
    PoolCidrBlock,
    poolCidrBlock,
    pcbCidr,

    -- ** PortRange
    PortRange,
    portRange,
    prTo,
    prFrom,

    -- ** PrefixList
    PrefixList,
    prefixList,
    plPrefixListName,
    plCidrs,
    plPrefixListId,

    -- ** PrefixListAssociation
    PrefixListAssociation,
    prefixListAssociation,
    plaResourceId,
    plaResourceOwner,

    -- ** PrefixListEntry
    PrefixListEntry,
    prefixListEntry,
    pleCidr,
    pleDescription,

    -- ** PrefixListId
    PrefixListId,
    prefixListId,
    pliPrefixListId,
    pliDescription,

    -- ** PriceSchedule
    PriceSchedule,
    priceSchedule,
    psCurrencyCode,
    psActive,
    psTerm,
    psPrice,

    -- ** PriceScheduleSpecification
    PriceScheduleSpecification,
    priceScheduleSpecification,
    pssCurrencyCode,
    pssTerm,
    pssPrice,

    -- ** PricingDetail
    PricingDetail,
    pricingDetail,
    pdCount,
    pdPrice,

    -- ** PrincipalIdFormat
    PrincipalIdFormat,
    principalIdFormat,
    pifARN,
    pifStatuses,

    -- ** PrivateDNSDetails
    PrivateDNSDetails,
    privateDNSDetails,
    pddPrivateDNSName,

    -- ** PrivateDNSNameConfiguration
    PrivateDNSNameConfiguration,
    privateDNSNameConfiguration,
    pdncState,
    pdncName,
    pdncValue,
    pdncType,

    -- ** PrivateIPAddressSpecification
    PrivateIPAddressSpecification,
    privateIPAddressSpecification,
    piasPrimary,
    piasPrivateIPAddress,

    -- ** ProcessorInfo
    ProcessorInfo,
    processorInfo,
    piSustainedClockSpeedInGhz,
    piSupportedArchitectures,

    -- ** ProductCode
    ProductCode,
    productCode,
    pcProductCodeType,
    pcProductCodeId,

    -- ** PropagatingVGW
    PropagatingVGW,
    propagatingVGW,
    pvGatewayId,

    -- ** ProvisionedBandwidth
    ProvisionedBandwidth,
    provisionedBandwidth,
    pbProvisionTime,
    pbStatus,
    pbRequestTime,
    pbRequested,
    pbProvisioned,

    -- ** PtrUpdateStatus
    PtrUpdateStatus,
    ptrUpdateStatus,
    pusStatus,
    pusReason,
    pusValue,

    -- ** PublicIPv4Pool
    PublicIPv4Pool,
    publicIPv4Pool,
    pipPoolId,
    pipPoolAddressRanges,
    pipTotalAddressCount,
    pipTags,
    pipTotalAvailableAddressCount,
    pipDescription,
    pipNetworkBorderGroup,

    -- ** PublicIPv4PoolRange
    PublicIPv4PoolRange,
    publicIPv4PoolRange,
    piprAddressCount,
    piprFirstAddress,
    piprLastAddress,
    piprAvailableAddressCount,

    -- ** Purchase
    Purchase,
    purchase,
    pInstanceFamily,
    pHostIdSet,
    pUpfrontPrice,
    pPaymentOption,
    pDuration,
    pHostReservationId,
    pCurrencyCode,
    pHourlyPrice,

    -- ** PurchaseRequest
    PurchaseRequest,
    purchaseRequest,
    prInstanceCount,
    prPurchaseToken,

    -- ** RecurringCharge
    RecurringCharge,
    recurringCharge,
    rcAmount,
    rcFrequency,

    -- ** RegionInfo
    RegionInfo,
    regionInfo,
    riRegionName,
    riOptInStatus,
    riEndpoint,

    -- ** RegisterInstanceTagAttributeRequest
    RegisterInstanceTagAttributeRequest,
    registerInstanceTagAttributeRequest,
    ritarInstanceTagKeys,
    ritarIncludeAllTagsOfInstance,

    -- ** RemovePrefixListEntry
    RemovePrefixListEntry,
    removePrefixListEntry,
    rpleCidr,

    -- ** RequestLaunchTemplateData
    RequestLaunchTemplateData,
    requestLaunchTemplateData,
    rSecurityGroupIds,
    rTagSpecifications,
    rElasticGpuSpecifications,
    rInstanceType,
    rCapacityReservationSpecification,
    rEBSOptimized,
    rUserData,
    rPlacement,
    rRamDiskId,
    rCreditSpecification,
    rInstanceMarketOptions,
    rLicenseSpecifications,
    rInstanceInitiatedShutdownBehavior,
    rImageId,
    rSecurityGroups,
    rElasticInferenceAccelerators,
    rIAMInstanceProfile,
    rHibernationOptions,
    rMonitoring,
    rBlockDeviceMappings,
    rEnclaveOptions,
    rKernelId,
    rCPUOptions,
    rKeyName,
    rNetworkInterfaces,
    rDisableAPITermination,
    rMetadataOptions,

    -- ** RequestSpotLaunchSpecification
    RequestSpotLaunchSpecification,
    requestSpotLaunchSpecification,
    rslsSecurityGroupIds,
    rslsInstanceType,
    rslsEBSOptimized,
    rslsUserData,
    rslsPlacement,
    rslsAddressingType,
    rslsRAMDiskId,
    rslsImageId,
    rslsSecurityGroups,
    rslsIAMInstanceProfile,
    rslsMonitoring,
    rslsBlockDeviceMappings,
    rslsSubnetId,
    rslsKernelId,
    rslsKeyName,
    rslsNetworkInterfaces,

    -- ** Reservation
    Reservation,
    reservation,
    rGroups,
    rRequesterId,
    rInstances,
    rReservationId,
    rOwnerId,

    -- ** ReservationValue
    ReservationValue,
    reservationValue,
    rvRemainingUpfrontValue,
    rvHourlyPrice,
    rvRemainingTotalValue,

    -- ** ReservedInstanceLimitPrice
    ReservedInstanceLimitPrice,
    reservedInstanceLimitPrice,
    rilpAmount,
    rilpCurrencyCode,

    -- ** ReservedInstanceReservationValue
    ReservedInstanceReservationValue,
    reservedInstanceReservationValue,
    rirvReservationValue,
    rirvReservedInstanceId,

    -- ** ReservedInstances
    ReservedInstances,
    reservedInstances,
    riEnd,
    riInstanceType,
    riDuration,
    riReservedInstancesId,
    riInstanceTenancy,
    riCurrencyCode,
    riScope,
    riState,
    riAvailabilityZone,
    riTags,
    riOfferingClass,
    riFixedPrice,
    riUsagePrice,
    riOfferingType,
    riStart,
    riRecurringCharges,
    riProductDescription,
    riInstanceCount,

    -- ** ReservedInstancesConfiguration
    ReservedInstancesConfiguration,
    reservedInstancesConfiguration,
    ricPlatform,
    ricInstanceType,
    ricScope,
    ricAvailabilityZone,
    ricInstanceCount,

    -- ** ReservedInstancesId
    ReservedInstancesId,
    reservedInstancesId,
    riiReservedInstancesId,

    -- ** ReservedInstancesListing
    ReservedInstancesListing,
    reservedInstancesListing,
    rilStatusMessage,
    rilStatus,
    rilPriceSchedules,
    rilReservedInstancesId,
    rilCreateDate,
    rilTags,
    rilInstanceCounts,
    rilReservedInstancesListingId,
    rilUpdateDate,
    rilClientToken,

    -- ** ReservedInstancesModification
    ReservedInstancesModification,
    reservedInstancesModification,
    rimStatusMessage,
    rimStatus,
    rimCreateDate,
    rimModificationResults,
    rimEffectiveDate,
    rimReservedInstancesIds,
    rimReservedInstancesModificationId,
    rimUpdateDate,
    rimClientToken,

    -- ** ReservedInstancesModificationResult
    ReservedInstancesModificationResult,
    reservedInstancesModificationResult,
    rimrTargetConfiguration,
    rimrReservedInstancesId,

    -- ** ReservedInstancesOffering
    ReservedInstancesOffering,
    reservedInstancesOffering,
    rioInstanceType,
    rioDuration,
    rioInstanceTenancy,
    rioReservedInstancesOfferingId,
    rioCurrencyCode,
    rioScope,
    rioAvailabilityZone,
    rioMarketplace,
    rioOfferingClass,
    rioFixedPrice,
    rioUsagePrice,
    rioOfferingType,
    rioRecurringCharges,
    rioProductDescription,
    rioPricingDetails,

    -- ** ResponseError
    ResponseError,
    responseError,
    reMessage,
    reCode,

    -- ** ResponseLaunchTemplateData
    ResponseLaunchTemplateData,
    responseLaunchTemplateData,
    rltdSecurityGroupIds,
    rltdTagSpecifications,
    rltdElasticGpuSpecifications,
    rltdInstanceType,
    rltdCapacityReservationSpecification,
    rltdEBSOptimized,
    rltdUserData,
    rltdPlacement,
    rltdRamDiskId,
    rltdCreditSpecification,
    rltdInstanceMarketOptions,
    rltdLicenseSpecifications,
    rltdInstanceInitiatedShutdownBehavior,
    rltdImageId,
    rltdSecurityGroups,
    rltdElasticInferenceAccelerators,
    rltdIAMInstanceProfile,
    rltdHibernationOptions,
    rltdMonitoring,
    rltdBlockDeviceMappings,
    rltdEnclaveOptions,
    rltdKernelId,
    rltdCPUOptions,
    rltdKeyName,
    rltdNetworkInterfaces,
    rltdDisableAPITermination,
    rltdMetadataOptions,

    -- ** Route
    Route,
    route,
    rInstanceId,
    rOrigin,
    rVPCPeeringConnectionId,
    rDestinationPrefixListId,
    rDestinationIPv6CidrBlock,
    rLocalGatewayId,
    rState,
    rEgressOnlyInternetGatewayId,
    rCarrierGatewayId,
    rDestinationCidrBlock,
    rNetworkInterfaceId,
    rNatGatewayId,
    rInstanceOwnerId,
    rGatewayId,
    rTransitGatewayId,

    -- ** RouteTable
    RouteTable,
    routeTable,
    rtOwnerId,
    rtRouteTableId,
    rtRoutes,
    rtTags,
    rtPropagatingVGWs,
    rtVPCId,
    rtAssociations,

    -- ** RouteTableAssociation
    RouteTableAssociation,
    routeTableAssociation,
    rtaAssociationState,
    rtaMain,
    rtaRouteTableId,
    rtaSubnetId,
    rtaRouteTableAssociationId,
    rtaGatewayId,

    -- ** RouteTableAssociationState
    RouteTableAssociationState,
    routeTableAssociationState,
    rtasStatusMessage,
    rtasState,

    -- ** RunInstancesMonitoringEnabled
    RunInstancesMonitoringEnabled,
    runInstancesMonitoringEnabled,
    rimeEnabled,

    -- ** S3Storage
    S3Storage,
    s3Storage,
    ssUploadPolicySignature,
    ssUploadPolicy,
    ssPrefix,
    ssBucket,
    ssAWSAccessKeyId,

    -- ** ScheduledInstance
    ScheduledInstance,
    scheduledInstance,
    siPlatform,
    siInstanceType,
    siNetworkPlatform,
    siSlotDurationInHours,
    siCreateDate,
    siScheduledInstanceId,
    siPreviousSlotEndTime,
    siAvailabilityZone,
    siRecurrence,
    siTotalScheduledInstanceHours,
    siNextSlotStartTime,
    siHourlyPrice,
    siTermEndDate,
    siTermStartDate,
    siInstanceCount,

    -- ** ScheduledInstanceAvailability
    ScheduledInstanceAvailability,
    scheduledInstanceAvailability,
    siaPlatform,
    siaInstanceType,
    siaNetworkPlatform,
    siaSlotDurationInHours,
    siaAvailableInstanceCount,
    siaMinTermDurationInDays,
    siaAvailabilityZone,
    siaRecurrence,
    siaMaxTermDurationInDays,
    siaTotalScheduledInstanceHours,
    siaFirstSlotStartTime,
    siaHourlyPrice,
    siaPurchaseToken,

    -- ** ScheduledInstanceRecurrence
    ScheduledInstanceRecurrence,
    scheduledInstanceRecurrence,
    sirOccurrenceUnit,
    sirInterval,
    sirOccurrenceRelativeToEnd,
    sirFrequency,
    sirOccurrenceDaySet,

    -- ** ScheduledInstanceRecurrenceRequest
    ScheduledInstanceRecurrenceRequest,
    scheduledInstanceRecurrenceRequest,
    sirrOccurrenceUnit,
    sirrOccurrenceDays,
    sirrInterval,
    sirrOccurrenceRelativeToEnd,
    sirrFrequency,

    -- ** ScheduledInstancesBlockDeviceMapping
    ScheduledInstancesBlockDeviceMapping,
    scheduledInstancesBlockDeviceMapping,
    sibdmEBS,
    sibdmNoDevice,
    sibdmVirtualName,
    sibdmDeviceName,

    -- ** ScheduledInstancesEBS
    ScheduledInstancesEBS,
    scheduledInstancesEBS,
    sieEncrypted,
    sieDeleteOnTermination,
    sieSnapshotId,
    sieVolumeType,
    sieVolumeSize,
    sieIOPS,

    -- ** ScheduledInstancesIAMInstanceProfile
    ScheduledInstancesIAMInstanceProfile,
    scheduledInstancesIAMInstanceProfile,
    siiapARN,
    siiapName,

    -- ** ScheduledInstancesIPv6Address
    ScheduledInstancesIPv6Address,
    scheduledInstancesIPv6Address,
    siiaIPv6Address,

    -- ** ScheduledInstancesLaunchSpecification
    ScheduledInstancesLaunchSpecification,
    scheduledInstancesLaunchSpecification,
    silsSecurityGroupIds,
    silsInstanceType,
    silsEBSOptimized,
    silsUserData,
    silsPlacement,
    silsRAMDiskId,
    silsIAMInstanceProfile,
    silsMonitoring,
    silsBlockDeviceMappings,
    silsSubnetId,
    silsKernelId,
    silsKeyName,
    silsNetworkInterfaces,
    silsImageId,

    -- ** ScheduledInstancesMonitoring
    ScheduledInstancesMonitoring,
    scheduledInstancesMonitoring,
    simEnabled,

    -- ** ScheduledInstancesNetworkInterface
    ScheduledInstancesNetworkInterface,
    scheduledInstancesNetworkInterface,
    siniGroups,
    siniIPv6Addresses,
    siniAssociatePublicIPAddress,
    siniIPv6AddressCount,
    siniDeleteOnTermination,
    siniNetworkInterfaceId,
    siniSubnetId,
    siniDescription,
    siniDeviceIndex,
    siniSecondaryPrivateIPAddressCount,
    siniPrivateIPAddressConfigs,
    siniPrivateIPAddress,

    -- ** ScheduledInstancesPlacement
    ScheduledInstancesPlacement,
    scheduledInstancesPlacement,
    sipGroupName,
    sipAvailabilityZone,

    -- ** ScheduledInstancesPrivateIPAddressConfig
    ScheduledInstancesPrivateIPAddressConfig,
    scheduledInstancesPrivateIPAddressConfig,
    sipiacPrimary,
    sipiacPrivateIPAddress,

    -- ** SecurityGroup
    SecurityGroup,
    securityGroup,
    sgIPPermissionsEgress,
    sgTags,
    sgIPPermissions,
    sgVPCId,
    sgOwnerId,
    sgGroupId,
    sgGroupName,
    sgDescription,

    -- ** SecurityGroupIdentifier
    SecurityGroupIdentifier,
    securityGroupIdentifier,
    sgiGroupName,
    sgiGroupId,

    -- ** SecurityGroupReference
    SecurityGroupReference,
    securityGroupReference,
    sgrVPCPeeringConnectionId,
    sgrGroupId,
    sgrReferencingVPCId,

    -- ** ServiceConfiguration
    ServiceConfiguration,
    serviceConfiguration,
    scManagesVPCEndpoints,
    scGatewayLoadBalancerARNs,
    scAvailabilityZones,
    scPrivateDNSNameConfiguration,
    scBaseEndpointDNSNames,
    scServiceId,
    scServiceName,
    scTags,
    scPrivateDNSName,
    scAcceptanceRequired,
    scServiceType,
    scNetworkLoadBalancerARNs,
    scServiceState,

    -- ** ServiceDetail
    ServiceDetail,
    serviceDetail,
    sdManagesVPCEndpoints,
    sdAvailabilityZones,
    sdBaseEndpointDNSNames,
    sdServiceId,
    sdVPCEndpointPolicySupported,
    sdPrivateDNSNames,
    sdPrivateDNSNameVerificationState,
    sdServiceName,
    sdTags,
    sdOwner,
    sdPrivateDNSName,
    sdAcceptanceRequired,
    sdServiceType,

    -- ** ServiceTypeDetail
    ServiceTypeDetail,
    serviceTypeDetail,
    stdServiceType,

    -- ** SlotDateTimeRangeRequest
    SlotDateTimeRangeRequest,
    slotDateTimeRangeRequest,
    sdtrrEarliestTime,
    sdtrrLatestTime,

    -- ** SlotStartTimeRangeRequest
    SlotStartTimeRangeRequest,
    slotStartTimeRangeRequest,
    sstrrEarliestTime,
    sstrrLatestTime,

    -- ** Snapshot
    Snapshot,
    snapshot,
    snaOwnerAlias,
    snaStateMessage,
    snaOutpostARN,
    snaDataEncryptionKeyId,
    snaKMSKeyId,
    snaTags,
    snaSnapshotId,
    snaOwnerId,
    snaVolumeId,
    snaVolumeSize,
    snaDescription,
    snaStartTime,
    snaProgress,
    snaState,
    snaEncrypted,

    -- ** SnapshotDetail
    SnapshotDetail,
    snapshotDetail,
    sdDiskImageSize,
    sdStatusMessage,
    sdStatus,
    sdFormat,
    sdUserBucket,
    sdDeviceName,
    sdSnapshotId,
    sdDescription,
    sdURL,
    sdProgress,

    -- ** SnapshotDiskContainer
    SnapshotDiskContainer,
    snapshotDiskContainer,
    sdcFormat,
    sdcUserBucket,
    sdcDescription,
    sdcURL,

    -- ** SnapshotInfo
    SnapshotInfo,
    snapshotInfo,
    siOwnerId,
    siEncrypted,
    siOutpostARN,
    siStartTime,
    siVolumeId,
    siState,
    siSnapshotId,
    siTags,
    siDescription,
    siProgress,
    siVolumeSize,

    -- ** SnapshotTaskDetail
    SnapshotTaskDetail,
    snapshotTaskDetail,
    stdDiskImageSize,
    stdStatusMessage,
    stdStatus,
    stdEncrypted,
    stdFormat,
    stdUserBucket,
    stdKMSKeyId,
    stdSnapshotId,
    stdDescription,
    stdURL,
    stdProgress,

    -- ** SpotCapacityRebalance
    SpotCapacityRebalance,
    spotCapacityRebalance,
    scrReplacementStrategy,

    -- ** SpotDatafeedSubscription
    SpotDatafeedSubscription,
    spotDatafeedSubscription,
    sdsOwnerId,
    sdsPrefix,
    sdsFault,
    sdsState,
    sdsBucket,

    -- ** SpotFleetLaunchSpecification
    SpotFleetLaunchSpecification,
    spotFleetLaunchSpecification,
    sflsTagSpecifications,
    sflsInstanceType,
    sflsEBSOptimized,
    sflsUserData,
    sflsPlacement,
    sflsAddressingType,
    sflsRAMDiskId,
    sflsSpotPrice,
    sflsImageId,
    sflsSecurityGroups,
    sflsIAMInstanceProfile,
    sflsMonitoring,
    sflsBlockDeviceMappings,
    sflsSubnetId,
    sflsKernelId,
    sflsKeyName,
    sflsNetworkInterfaces,
    sflsWeightedCapacity,

    -- ** SpotFleetMonitoring
    SpotFleetMonitoring,
    spotFleetMonitoring,
    sfmEnabled,

    -- ** SpotFleetRequestConfig
    SpotFleetRequestConfig,
    spotFleetRequestConfig,
    sfrcSpotFleetRequestState,
    sfrcActivityStatus,
    sfrcTags,
    sfrcCreateTime,
    sfrcSpotFleetRequestConfig,
    sfrcSpotFleetRequestId,

    -- ** SpotFleetRequestConfigData
    SpotFleetRequestConfigData,
    spotFleetRequestConfigData,
    sfrcdLaunchTemplateConfigs,
    sfrcdTagSpecifications,
    sfrcdSpotMaxTotalPrice,
    sfrcdOnDemandTargetCapacity,
    sfrcdOnDemandFulfilledCapacity,
    sfrcdValidFrom,
    sfrcdReplaceUnhealthyInstances,
    sfrcdOnDemandAllocationStrategy,
    sfrcdSpotPrice,
    sfrcdOnDemandMaxTotalPrice,
    sfrcdInstanceInterruptionBehavior,
    sfrcdValidUntil,
    sfrcdLoadBalancersConfig,
    sfrcdExcessCapacityTerminationPolicy,
    sfrcdAllocationStrategy,
    sfrcdLaunchSpecifications,
    sfrcdType,
    sfrcdSpotMaintenanceStrategies,
    sfrcdInstancePoolsToUseCount,
    sfrcdFulfilledCapacity,
    sfrcdClientToken,
    sfrcdTerminateInstancesWithExpiration,
    sfrcdIAMFleetRole,
    sfrcdTargetCapacity,

    -- ** SpotFleetTagSpecification
    SpotFleetTagSpecification,
    spotFleetTagSpecification,
    sftsResourceType,
    sftsTags,

    -- ** SpotInstanceRequest
    SpotInstanceRequest,
    spotInstanceRequest,
    sirActualBlockHourlyPrice,
    sirStatus,
    sirInstanceId,
    sirLaunchedAvailabilityZone,
    sirValidFrom,
    sirSpotPrice,
    sirFault,
    sirBlockDurationMinutes,
    sirLaunchGroup,
    sirInstanceInterruptionBehavior,
    sirState,
    sirValidUntil,
    sirTags,
    sirCreateTime,
    sirLaunchSpecification,
    sirType,
    sirAvailabilityZoneGroup,
    sirProductDescription,
    sirSpotInstanceRequestId,

    -- ** SpotInstanceStateFault
    SpotInstanceStateFault,
    spotInstanceStateFault,
    sisfMessage,
    sisfCode,

    -- ** SpotInstanceStatus
    SpotInstanceStatus,
    spotInstanceStatus,
    sisMessage,
    sisCode,
    sisUpdateTime,

    -- ** SpotMaintenanceStrategies
    SpotMaintenanceStrategies,
    spotMaintenanceStrategies,
    smsCapacityRebalance,

    -- ** SpotMarketOptions
    SpotMarketOptions,
    spotMarketOptions,
    smoBlockDurationMinutes,
    smoInstanceInterruptionBehavior,
    smoValidUntil,
    smoSpotInstanceType,
    smoMaxPrice,

    -- ** SpotOptions
    SpotOptions,
    spotOptions,
    soMinTargetCapacity,
    soMaintenanceStrategies,
    soInstanceInterruptionBehavior,
    soSingleInstanceType,
    soAllocationStrategy,
    soMaxTotalPrice,
    soInstancePoolsToUseCount,
    soSingleAvailabilityZone,

    -- ** SpotOptionsRequest
    SpotOptionsRequest,
    spotOptionsRequest,
    sorMinTargetCapacity,
    sorMaintenanceStrategies,
    sorInstanceInterruptionBehavior,
    sorSingleInstanceType,
    sorAllocationStrategy,
    sorMaxTotalPrice,
    sorInstancePoolsToUseCount,
    sorSingleAvailabilityZone,

    -- ** SpotPlacement
    SpotPlacement,
    spotPlacement,
    spGroupName,
    spTenancy,
    spAvailabilityZone,

    -- ** SpotPrice
    SpotPrice,
    spotPrice,
    spoInstanceType,
    spoSpotPrice,
    spoAvailabilityZone,
    spoTimestamp,
    spoProductDescription,

    -- ** StaleIPPermission
    StaleIPPermission,
    staleIPPermission,
    sipFromPort,
    sipPrefixListIds,
    sipIPRanges,
    sipUserIdGroupPairs,
    sipIPProtocol,
    sipToPort,

    -- ** StaleSecurityGroup
    StaleSecurityGroup,
    staleSecurityGroup,
    ssgStaleIPPermissions,
    ssgGroupName,
    ssgGroupId,
    ssgDescription,
    ssgStaleIPPermissionsEgress,
    ssgVPCId,

    -- ** StateReason
    StateReason,
    stateReason,
    srMessage,
    srCode,

    -- ** Storage
    Storage,
    storage,
    sS3,

    -- ** StorageLocation
    StorageLocation,
    storageLocation,
    slKey,
    slBucket,

    -- ** Subnet
    Subnet,
    subnet,
    sOwnerId,
    sCustomerOwnedIPv4Pool,
    sSubnetARN,
    sAssignIPv6AddressOnCreation,
    sOutpostARN,
    sMapPublicIPOnLaunch,
    sAvailabilityZoneId,
    sIPv6CidrBlockAssociationSet,
    sTags,
    sDefaultForAz,
    sMapCustomerOwnedIPOnLaunch,
    sAvailabilityZone,
    sAvailableIPAddressCount,
    sCidrBlock,
    sState,
    sSubnetId,
    sVPCId,

    -- ** SubnetAssociation
    SubnetAssociation,
    subnetAssociation,
    saState,
    saSubnetId,

    -- ** SubnetCidrBlockState
    SubnetCidrBlockState,
    subnetCidrBlockState,
    scbsStatusMessage,
    scbsState,

    -- ** SubnetIPv6CidrBlockAssociation
    SubnetIPv6CidrBlockAssociation,
    subnetIPv6CidrBlockAssociation,
    sicbaIPv6CidrBlockState,
    sicbaAssociationId,
    sicbaIPv6CidrBlock,

    -- ** SuccessfulInstanceCreditSpecificationItem
    SuccessfulInstanceCreditSpecificationItem,
    successfulInstanceCreditSpecificationItem,
    sicsiInstanceId,

    -- ** SuccessfulQueuedPurchaseDeletion
    SuccessfulQueuedPurchaseDeletion,
    successfulQueuedPurchaseDeletion,
    sqpdReservedInstancesId,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** TagDescription
    TagDescription,
    tagDescription,
    tdResourceId,
    tdResourceType,
    tdKey,
    tdValue,

    -- ** TagSpecification
    TagSpecification,
    tagSpecification,
    tsResourceType,
    tsTags,

    -- ** TargetCapacitySpecification
    TargetCapacitySpecification,
    targetCapacitySpecification,
    tcsTotalTargetCapacity,
    tcsDefaultTargetCapacityType,
    tcsOnDemandTargetCapacity,
    tcsSpotTargetCapacity,

    -- ** TargetCapacitySpecificationRequest
    TargetCapacitySpecificationRequest,
    targetCapacitySpecificationRequest,
    tcsrDefaultTargetCapacityType,
    tcsrOnDemandTargetCapacity,
    tcsrSpotTargetCapacity,
    tcsrTotalTargetCapacity,

    -- ** TargetConfiguration
    TargetConfiguration,
    targetConfiguration,
    tcOfferingId,
    tcInstanceCount,

    -- ** TargetConfigurationRequest
    TargetConfigurationRequest,
    targetConfigurationRequest,
    tcrInstanceCount,
    tcrOfferingId,

    -- ** TargetGroup
    TargetGroup,
    targetGroup,
    tgARN,

    -- ** TargetGroupsConfig
    TargetGroupsConfig,
    targetGroupsConfig,
    tgcTargetGroups,

    -- ** TargetNetwork
    TargetNetwork,
    targetNetwork,
    tnClientVPNEndpointId,
    tnStatus,
    tnSecurityGroups,
    tnAssociationId,
    tnVPCId,
    tnTargetNetworkId,

    -- ** TargetReservationValue
    TargetReservationValue,
    targetReservationValue,
    trvTargetConfiguration,
    trvReservationValue,

    -- ** TerminateConnectionStatus
    TerminateConnectionStatus,
    terminateConnectionStatus,
    tcsConnectionId,
    tcsPreviousStatus,
    tcsCurrentStatus,

    -- ** TrafficMirrorFilter
    TrafficMirrorFilter,
    trafficMirrorFilter,
    tmfEgressFilterRules,
    tmfNetworkServices,
    tmfTags,
    tmfTrafficMirrorFilterId,
    tmfDescription,
    tmfIngressFilterRules,

    -- ** TrafficMirrorFilterRule
    TrafficMirrorFilterRule,
    trafficMirrorFilterRule,
    tmfrTrafficMirrorFilterRuleId,
    tmfrSourcePortRange,
    tmfrTrafficDirection,
    tmfrRuleAction,
    tmfrSourceCidrBlock,
    tmfrTrafficMirrorFilterId,
    tmfrDestinationCidrBlock,
    tmfrProtocol,
    tmfrDescription,
    tmfrRuleNumber,
    tmfrDestinationPortRange,

    -- ** TrafficMirrorPortRange
    TrafficMirrorPortRange,
    trafficMirrorPortRange,
    tmprFromPort,
    tmprToPort,

    -- ** TrafficMirrorPortRangeRequest
    TrafficMirrorPortRangeRequest,
    trafficMirrorPortRangeRequest,
    tmprrFromPort,
    tmprrToPort,

    -- ** TrafficMirrorSession
    TrafficMirrorSession,
    trafficMirrorSession,
    tmsOwnerId,
    tmsTrafficMirrorSessionId,
    tmsPacketLength,
    tmsTags,
    tmsTrafficMirrorFilterId,
    tmsNetworkInterfaceId,
    tmsDescription,
    tmsTrafficMirrorTargetId,
    tmsSessionNumber,
    tmsVirtualNetworkId,

    -- ** TrafficMirrorTarget
    TrafficMirrorTarget,
    trafficMirrorTarget,
    tmtOwnerId,
    tmtNetworkLoadBalancerARN,
    tmtTags,
    tmtNetworkInterfaceId,
    tmtDescription,
    tmtType,
    tmtTrafficMirrorTargetId,

    -- ** TransitGateway
    TransitGateway,
    transitGateway,
    tgOwnerId,
    tgCreationTime,
    tgOptions,
    tgTransitGatewayARN,
    tgState,
    tgTags,
    tgDescription,
    tgTransitGatewayId,

    -- ** TransitGatewayAssociation
    TransitGatewayAssociation,
    transitGatewayAssociation,
    tgaResourceId,
    tgaResourceType,
    tgaState,
    tgaTransitGatewayAttachmentId,
    tgaTransitGatewayRouteTableId,

    -- ** TransitGatewayAttachment
    TransitGatewayAttachment,
    transitGatewayAttachment,
    tResourceId,
    tCreationTime,
    tAssociation,
    tResourceType,
    tState,
    tTags,
    tResourceOwnerId,
    tTransitGatewayAttachmentId,
    tTransitGatewayOwnerId,
    tTransitGatewayId,

    -- ** TransitGatewayAttachmentAssociation
    TransitGatewayAttachmentAssociation,
    transitGatewayAttachmentAssociation,
    tgaaState,
    tgaaTransitGatewayRouteTableId,

    -- ** TransitGatewayAttachmentBGPConfiguration
    TransitGatewayAttachmentBGPConfiguration,
    transitGatewayAttachmentBGPConfiguration,
    tgabcPeerAddress,
    tgabcPeerASN,
    tgabcBGPStatus,
    tgabcTransitGatewayAddress,
    tgabcTransitGatewayASN,

    -- ** TransitGatewayAttachmentPropagation
    TransitGatewayAttachmentPropagation,
    transitGatewayAttachmentPropagation,
    tgapState,
    tgapTransitGatewayRouteTableId,

    -- ** TransitGatewayConnect
    TransitGatewayConnect,
    transitGatewayConnect,
    tgcCreationTime,
    tgcOptions,
    tgcState,
    tgcTags,
    tgcTransitGatewayAttachmentId,
    tgcTransportTransitGatewayAttachmentId,
    tgcTransitGatewayId,

    -- ** TransitGatewayConnectOptions
    TransitGatewayConnectOptions,
    transitGatewayConnectOptions,
    tgcoProtocol,

    -- ** TransitGatewayConnectPeer
    TransitGatewayConnectPeer,
    transitGatewayConnectPeer,
    tgcpConnectPeerConfiguration,
    tgcpCreationTime,
    tgcpTransitGatewayConnectPeerId,
    tgcpState,
    tgcpTags,
    tgcpTransitGatewayAttachmentId,

    -- ** TransitGatewayConnectPeerConfiguration
    TransitGatewayConnectPeerConfiguration,
    transitGatewayConnectPeerConfiguration,
    tgcpcPeerAddress,
    tgcpcTransitGatewayAddress,
    tgcpcBGPConfigurations,
    tgcpcProtocol,
    tgcpcInsideCidrBlocks,

    -- ** TransitGatewayConnectRequestBGPOptions
    TransitGatewayConnectRequestBGPOptions,
    transitGatewayConnectRequestBGPOptions,
    tgcrboPeerASN,

    -- ** TransitGatewayMulticastDeregisteredGroupMembers
    TransitGatewayMulticastDeregisteredGroupMembers,
    transitGatewayMulticastDeregisteredGroupMembers,
    tgmdgmTransitGatewayMulticastDomainId,
    tgmdgmDeregisteredNetworkInterfaceIds,
    tgmdgmGroupIPAddress,

    -- ** TransitGatewayMulticastDeregisteredGroupSources
    TransitGatewayMulticastDeregisteredGroupSources,
    transitGatewayMulticastDeregisteredGroupSources,
    tgmdgsTransitGatewayMulticastDomainId,
    tgmdgsDeregisteredNetworkInterfaceIds,
    tgmdgsGroupIPAddress,

    -- ** TransitGatewayMulticastDomain
    TransitGatewayMulticastDomain,
    transitGatewayMulticastDomain,
    tgmdOwnerId,
    tgmdCreationTime,
    tgmdTransitGatewayMulticastDomainId,
    tgmdOptions,
    tgmdState,
    tgmdTags,
    tgmdTransitGatewayMulticastDomainARN,
    tgmdTransitGatewayId,

    -- ** TransitGatewayMulticastDomainAssociation
    TransitGatewayMulticastDomainAssociation,
    transitGatewayMulticastDomainAssociation,
    tgmdaResourceId,
    tgmdaSubnet,
    tgmdaResourceType,
    tgmdaResourceOwnerId,
    tgmdaTransitGatewayAttachmentId,

    -- ** TransitGatewayMulticastDomainAssociations
    TransitGatewayMulticastDomainAssociations,
    transitGatewayMulticastDomainAssociations,
    tgmdasResourceId,
    tgmdasTransitGatewayMulticastDomainId,
    tgmdasResourceType,
    tgmdasResourceOwnerId,
    tgmdasTransitGatewayAttachmentId,
    tgmdasSubnets,

    -- ** TransitGatewayMulticastDomainOptions
    TransitGatewayMulticastDomainOptions,
    transitGatewayMulticastDomainOptions,
    tgmdoIgmpv2Support,
    tgmdoAutoAcceptSharedAssociations,
    tgmdoStaticSourcesSupport,

    -- ** TransitGatewayMulticastGroup
    TransitGatewayMulticastGroup,
    transitGatewayMulticastGroup,
    tgmgResourceId,
    tgmgGroupMember,
    tgmgMemberType,
    tgmgGroupSource,
    tgmgResourceType,
    tgmgResourceOwnerId,
    tgmgNetworkInterfaceId,
    tgmgSubnetId,
    tgmgTransitGatewayAttachmentId,
    tgmgGroupIPAddress,
    tgmgSourceType,

    -- ** TransitGatewayMulticastRegisteredGroupMembers
    TransitGatewayMulticastRegisteredGroupMembers,
    transitGatewayMulticastRegisteredGroupMembers,
    tgmrgmTransitGatewayMulticastDomainId,
    tgmrgmGroupIPAddress,
    tgmrgmRegisteredNetworkInterfaceIds,

    -- ** TransitGatewayMulticastRegisteredGroupSources
    TransitGatewayMulticastRegisteredGroupSources,
    transitGatewayMulticastRegisteredGroupSources,
    tgmrgsTransitGatewayMulticastDomainId,
    tgmrgsGroupIPAddress,
    tgmrgsRegisteredNetworkInterfaceIds,

    -- ** TransitGatewayOptions
    TransitGatewayOptions,
    transitGatewayOptions,
    tgoPropagationDefaultRouteTableId,
    tgoVPNEcmpSupport,
    tgoDNSSupport,
    tgoAssociationDefaultRouteTableId,
    tgoAutoAcceptSharedAttachments,
    tgoAmazonSideASN,
    tgoTransitGatewayCidrBlocks,
    tgoMulticastSupport,
    tgoDefaultRouteTableAssociation,
    tgoDefaultRouteTablePropagation,

    -- ** TransitGatewayPeeringAttachment
    TransitGatewayPeeringAttachment,
    transitGatewayPeeringAttachment,
    tgpaStatus,
    tgpaCreationTime,
    tgpaRequesterTgwInfo,
    tgpaAccepterTgwInfo,
    tgpaState,
    tgpaTags,
    tgpaTransitGatewayAttachmentId,

    -- ** TransitGatewayPrefixListAttachment
    TransitGatewayPrefixListAttachment,
    transitGatewayPrefixListAttachment,
    tgplaResourceId,
    tgplaResourceType,
    tgplaTransitGatewayAttachmentId,

    -- ** TransitGatewayPrefixListReference
    TransitGatewayPrefixListReference,
    transitGatewayPrefixListReference,
    tgplrTransitGatewayAttachment,
    tgplrPrefixListOwnerId,
    tgplrPrefixListId,
    tgplrState,
    tgplrBlackhole,
    tgplrTransitGatewayRouteTableId,

    -- ** TransitGatewayPropagation
    TransitGatewayPropagation,
    transitGatewayPropagation,
    tgpResourceId,
    tgpResourceType,
    tgpState,
    tgpTransitGatewayAttachmentId,
    tgpTransitGatewayRouteTableId,

    -- ** TransitGatewayRequestOptions
    TransitGatewayRequestOptions,
    transitGatewayRequestOptions,
    tgroVPNEcmpSupport,
    tgroDNSSupport,
    tgroAutoAcceptSharedAttachments,
    tgroAmazonSideASN,
    tgroTransitGatewayCidrBlocks,
    tgroMulticastSupport,
    tgroDefaultRouteTableAssociation,
    tgroDefaultRouteTablePropagation,

    -- ** TransitGatewayRoute
    TransitGatewayRoute,
    transitGatewayRoute,
    tgrPrefixListId,
    tgrState,
    tgrDestinationCidrBlock,
    tgrType,
    tgrTransitGatewayAttachments,

    -- ** TransitGatewayRouteAttachment
    TransitGatewayRouteAttachment,
    transitGatewayRouteAttachment,
    tgraResourceId,
    tgraResourceType,
    tgraTransitGatewayAttachmentId,

    -- ** TransitGatewayRouteTable
    TransitGatewayRouteTable,
    transitGatewayRouteTable,
    tgrtCreationTime,
    tgrtDefaultAssociationRouteTable,
    tgrtDefaultPropagationRouteTable,
    tgrtState,
    tgrtTags,
    tgrtTransitGatewayRouteTableId,
    tgrtTransitGatewayId,

    -- ** TransitGatewayRouteTableAssociation
    TransitGatewayRouteTableAssociation,
    transitGatewayRouteTableAssociation,
    tgrtaResourceId,
    tgrtaResourceType,
    tgrtaState,
    tgrtaTransitGatewayAttachmentId,

    -- ** TransitGatewayRouteTablePropagation
    TransitGatewayRouteTablePropagation,
    transitGatewayRouteTablePropagation,
    tgrtpResourceId,
    tgrtpResourceType,
    tgrtpState,
    tgrtpTransitGatewayAttachmentId,

    -- ** TransitGatewayVPCAttachment
    TransitGatewayVPCAttachment,
    transitGatewayVPCAttachment,
    tgvaCreationTime,
    tgvaOptions,
    tgvaSubnetIds,
    tgvaState,
    tgvaVPCOwnerId,
    tgvaTags,
    tgvaTransitGatewayAttachmentId,
    tgvaVPCId,
    tgvaTransitGatewayId,

    -- ** TransitGatewayVPCAttachmentOptions
    TransitGatewayVPCAttachmentOptions,
    transitGatewayVPCAttachmentOptions,
    tgvaoApplianceModeSupport,
    tgvaoDNSSupport,
    tgvaoIPv6Support,

    -- ** TunnelOption
    TunnelOption,
    tunnelOption,
    toPhase1LifetimeSeconds,
    toPhase2DHGroupNumbers,
    toIkeVersions,
    toPhase2EncryptionAlgorithms,
    toPhase2IntegrityAlgorithms,
    toStartupAction,
    toDpdTimeoutSeconds,
    toPhase1DHGroupNumbers,
    toPhase1EncryptionAlgorithms,
    toReplayWindowSize,
    toOutsideIPAddress,
    toPreSharedKey,
    toTunnelInsideIPv6Cidr,
    toRekeyFuzzPercentage,
    toRekeyMarginTimeSeconds,
    toTunnelInsideCidr,
    toPhase1IntegrityAlgorithms,
    toDpdTimeoutAction,
    toPhase2LifetimeSeconds,

    -- ** UnsuccessfulInstanceCreditSpecificationItem
    UnsuccessfulInstanceCreditSpecificationItem,
    unsuccessfulInstanceCreditSpecificationItem,
    uicsiInstanceId,
    uicsiError,

    -- ** UnsuccessfulInstanceCreditSpecificationItemError
    UnsuccessfulInstanceCreditSpecificationItemError,
    unsuccessfulInstanceCreditSpecificationItemError,
    uicsieMessage,
    uicsieCode,

    -- ** UnsuccessfulItem
    UnsuccessfulItem,
    unsuccessfulItem,
    uiResourceId,
    uiError,

    -- ** UnsuccessfulItemError
    UnsuccessfulItemError,
    unsuccessfulItemError,
    uieMessage,
    uieCode,

    -- ** UserBucket
    UserBucket,
    userBucket,
    ubS3Bucket,
    ubS3Key,

    -- ** UserBucketDetails
    UserBucketDetails,
    userBucketDetails,
    ubdS3Bucket,
    ubdS3Key,

    -- ** UserData
    UserData,
    userData,
    udData,

    -- ** UserIdGroupPair
    UserIdGroupPair,
    userIdGroupPair,
    uigpVPCPeeringConnectionId,
    uigpGroupName,
    uigpGroupId,
    uigpUserId,
    uigpPeeringStatus,
    uigpDescription,
    uigpVPCId,

    -- ** VCPUInfo
    VCPUInfo,
    vCPUInfo,
    vciDefaultCores,
    vciDefaultVCPUs,
    vciValidThreadsPerCore,
    vciValidCores,
    vciDefaultThreadsPerCore,

    -- ** VGWTelemetry
    VGWTelemetry,
    vgwTelemetry,
    vtStatusMessage,
    vtStatus,
    vtAcceptedRouteCount,
    vtLastStatusChange,
    vtCertificateARN,
    vtOutsideIPAddress,

    -- ** VPC
    VPC,
    vpc,
    vpcOwnerId,
    vpcIsDefault,
    vpcCidrBlockAssociationSet,
    vpcIPv6CidrBlockAssociationSet,
    vpcTags,
    vpcCidrBlock,
    vpcDHCPOptionsId,
    vpcInstanceTenancy,
    vpcState,
    vpcVPCId,

    -- ** VPCAttachment
    VPCAttachment,
    vpcAttachment,
    vaState,
    vaVPCId,

    -- ** VPCCidrBlockAssociation
    VPCCidrBlockAssociation,
    vpcCidrBlockAssociation,
    vcbaCidrBlockState,
    vcbaAssociationId,
    vcbaCidrBlock,

    -- ** VPCCidrBlockState
    VPCCidrBlockState,
    vpcCidrBlockState,
    vcbsStatusMessage,
    vcbsState,

    -- ** VPCClassicLink
    VPCClassicLink,
    vpcClassicLink,
    vclTags,
    vclClassicLinkEnabled,
    vclVPCId,

    -- ** VPCEndpoint
    VPCEndpoint,
    vpcEndpoint,
    veCreationTimestamp,
    vePolicyDocument,
    veGroups,
    veOwnerId,
    veRouteTableIds,
    veVPCEndpointType,
    veRequesterManaged,
    veDNSEntries,
    veVPCEndpointId,
    veSubnetIds,
    veNetworkInterfaceIds,
    veServiceName,
    veLastError,
    veState,
    vePrivateDNSEnabled,
    veTags,
    veVPCId,

    -- ** VPCEndpointConnection
    VPCEndpointConnection,
    vpcEndpointConnection,
    vecCreationTimestamp,
    vecVPCEndpointOwner,
    vecGatewayLoadBalancerARNs,
    vecVPCEndpointState,
    vecDNSEntries,
    vecVPCEndpointId,
    vecServiceId,
    vecNetworkLoadBalancerARNs,

    -- ** VPCIPv6CidrBlockAssociation
    VPCIPv6CidrBlockAssociation,
    vpcIPv6CidrBlockAssociation,
    vicbaIPv6CidrBlockState,
    vicbaIPv6Pool,
    vicbaAssociationId,
    vicbaIPv6CidrBlock,
    vicbaNetworkBorderGroup,

    -- ** VPCPeeringConnection
    VPCPeeringConnection,
    vpcPeeringConnection,
    vpcpcStatus,
    vpcpcAccepterVPCInfo,
    vpcpcVPCPeeringConnectionId,
    vpcpcExpirationTime,
    vpcpcRequesterVPCInfo,
    vpcpcTags,

    -- ** VPCPeeringConnectionOptionsDescription
    VPCPeeringConnectionOptionsDescription,
    vpcPeeringConnectionOptionsDescription,
    vpcodAllowDNSResolutionFromRemoteVPC,
    vpcodAllowEgressFromLocalVPCToRemoteClassicLink,
    vpcodAllowEgressFromLocalClassicLinkToRemoteVPC,

    -- ** VPCPeeringConnectionStateReason
    VPCPeeringConnectionStateReason,
    vpcPeeringConnectionStateReason,
    vpcsrMessage,
    vpcsrCode,

    -- ** VPCPeeringConnectionVPCInfo
    VPCPeeringConnectionVPCInfo,
    vpcPeeringConnectionVPCInfo,
    vpcviCidrBlockSet,
    vpcviOwnerId,
    vpcviIPv6CidrBlockSet,
    vpcviRegion,
    vpcviVPCId,
    vpcviCidrBlock,
    vpcviPeeringOptions,

    -- ** VPNConnection
    VPNConnection,
    vpnConnection,
    vcCustomerGatewayConfiguration,
    vcOptions,
    vcCategory,
    vcRoutes,
    vcTags,
    vcVGWTelemetry,
    vcVPNGatewayId,
    vcTransitGatewayId,
    vcVPNConnectionId,
    vcCustomerGatewayId,
    vcState,
    vcType,

    -- ** VPNConnectionOptions
    VPNConnectionOptions,
    vpnConnectionOptions,
    vcoRemoteIPv6NetworkCidr,
    vcoStaticRoutesOnly,
    vcoLocalIPv6NetworkCidr,
    vcoEnableAcceleration,
    vcoTunnelOptions,
    vcoRemoteIPv4NetworkCidr,
    vcoTunnelInsideIPVersion,
    vcoLocalIPv4NetworkCidr,

    -- ** VPNConnectionOptionsSpecification
    VPNConnectionOptionsSpecification,
    vpnConnectionOptionsSpecification,
    vcosRemoteIPv6NetworkCidr,
    vcosStaticRoutesOnly,
    vcosLocalIPv6NetworkCidr,
    vcosEnableAcceleration,
    vcosTunnelOptions,
    vcosRemoteIPv4NetworkCidr,
    vcosTunnelInsideIPVersion,
    vcosLocalIPv4NetworkCidr,

    -- ** VPNGateway
    VPNGateway,
    vpnGateway,
    vgVPCAttachments,
    vgState,
    vgAvailabilityZone,
    vgAmazonSideASN,
    vgTags,
    vgType,
    vgVPNGatewayId,

    -- ** VPNStaticRoute
    VPNStaticRoute,
    vpnStaticRoute,
    vsrSource,
    vsrState,
    vsrDestinationCidrBlock,

    -- ** VPNTunnelOptionsSpecification
    VPNTunnelOptionsSpecification,
    vpnTunnelOptionsSpecification,
    vtosPhase1LifetimeSeconds,
    vtosPhase2DHGroupNumbers,
    vtosIKEVersions,
    vtosPhase2EncryptionAlgorithms,
    vtosPhase2IntegrityAlgorithms,
    vtosStartupAction,
    vtosDPDTimeoutSeconds,
    vtosPhase1DHGroupNumbers,
    vtosPhase1EncryptionAlgorithms,
    vtosReplayWindowSize,
    vtosPreSharedKey,
    vtosTunnelInsideIPv6Cidr,
    vtosRekeyFuzzPercentage,
    vtosRekeyMarginTimeSeconds,
    vtosTunnelInsideCidr,
    vtosPhase1IntegrityAlgorithms,
    vtosDPDTimeoutAction,
    vtosPhase2LifetimeSeconds,

    -- ** ValidationError
    ValidationError,
    validationError,
    veMessage,
    veCode,

    -- ** ValidationWarning
    ValidationWarning,
    validationWarning,
    vwErrors,

    -- ** Volume
    Volume,
    volume,
    volMultiAttachEnabled,
    volFastRestored,
    volOutpostARN,
    volThroughput,
    volKMSKeyId,
    volTags,
    volIOPS,
    volAttachments,
    volAvailabilityZone,
    volCreateTime,
    volEncrypted,
    volSize,
    volSnapshotId,
    volState,
    volVolumeId,
    volVolumeType,

    -- ** VolumeAttachment
    VolumeAttachment,
    volumeAttachment,
    vInstanceId,
    vAttachTime,
    vDevice,
    vVolumeId,
    vState,
    vDeleteOnTermination,

    -- ** VolumeDetail
    VolumeDetail,
    volumeDetail,
    vdSize,

    -- ** VolumeModification
    VolumeModification,
    volumeModification,
    vmStatusMessage,
    vmTargetVolumeType,
    vmOriginalVolumeType,
    vmStartTime,
    vmVolumeId,
    vmEndTime,
    vmOriginalIOPS,
    vmTargetSize,
    vmOriginalSize,
    vmTargetIOPS,
    vmModificationState,
    vmTargetMultiAttachEnabled,
    vmOriginalMultiAttachEnabled,
    vmTargetThroughput,
    vmOriginalThroughput,
    vmProgress,

    -- ** VolumeStatusAction
    VolumeStatusAction,
    volumeStatusAction,
    vsaEventType,
    vsaEventId,
    vsaCode,
    vsaDescription,

    -- ** VolumeStatusAttachmentStatus
    VolumeStatusAttachmentStatus,
    volumeStatusAttachmentStatus,
    vsasInstanceId,
    vsasIOPerformance,

    -- ** VolumeStatusDetails
    VolumeStatusDetails,
    volumeStatusDetails,
    vsdStatus,
    vsdName,

    -- ** VolumeStatusEvent
    VolumeStatusEvent,
    volumeStatusEvent,
    vseNotBefore,
    vseEventType,
    vseInstanceId,
    vseEventId,
    vseNotAfter,
    vseDescription,

    -- ** VolumeStatusInfo
    VolumeStatusInfo,
    volumeStatusInfo,
    vsiStatus,
    vsiDetails,

    -- ** VolumeStatusItem
    VolumeStatusItem,
    volumeStatusItem,
    vsiVolumeStatus,
    vsiOutpostARN,
    vsiVolumeId,
    vsiActions,
    vsiEvents,
    vsiAvailabilityZone,
    vsiAttachmentStatuses,
  )
where

import Network.AWS.EC2.AcceptReservedInstancesExchangeQuote
import Network.AWS.EC2.AcceptTransitGatewayMulticastDomainAssociations
import Network.AWS.EC2.AcceptTransitGatewayPeeringAttachment
import Network.AWS.EC2.AcceptTransitGatewayVPCAttachment
import Network.AWS.EC2.AcceptVPCEndpointConnections
import Network.AWS.EC2.AcceptVPCPeeringConnection
import Network.AWS.EC2.AdvertiseByoipCidr
import Network.AWS.EC2.AllocateAddress
import Network.AWS.EC2.AllocateHosts
import Network.AWS.EC2.ApplySecurityGroupsToClientVPNTargetNetwork
import Network.AWS.EC2.AssignIPv6Addresses
import Network.AWS.EC2.AssignPrivateIPAddresses
import Network.AWS.EC2.AssociateAddress
import Network.AWS.EC2.AssociateClientVPNTargetNetwork
import Network.AWS.EC2.AssociateDHCPOptions
import Network.AWS.EC2.AssociateEnclaveCertificateIAMRole
import Network.AWS.EC2.AssociateIAMInstanceProfile
import Network.AWS.EC2.AssociateRouteTable
import Network.AWS.EC2.AssociateSubnetCidrBlock
import Network.AWS.EC2.AssociateTransitGatewayMulticastDomain
import Network.AWS.EC2.AssociateTransitGatewayRouteTable
import Network.AWS.EC2.AssociateVPCCidrBlock
import Network.AWS.EC2.AttachClassicLinkVPC
import Network.AWS.EC2.AttachInternetGateway
import Network.AWS.EC2.AttachNetworkInterface
import Network.AWS.EC2.AttachVPNGateway
import Network.AWS.EC2.AttachVolume
import Network.AWS.EC2.AuthorizeClientVPNIngress
import Network.AWS.EC2.AuthorizeSecurityGroupEgress
import Network.AWS.EC2.AuthorizeSecurityGroupIngress
import Network.AWS.EC2.BundleInstance
import Network.AWS.EC2.CancelBundleTask
import Network.AWS.EC2.CancelCapacityReservation
import Network.AWS.EC2.CancelConversionTask
import Network.AWS.EC2.CancelExportTask
import Network.AWS.EC2.CancelImportTask
import Network.AWS.EC2.CancelReservedInstancesListing
import Network.AWS.EC2.CancelSpotFleetRequests
import Network.AWS.EC2.CancelSpotInstanceRequests
import Network.AWS.EC2.ConfirmProductInstance
import Network.AWS.EC2.CopyFpgaImage
import Network.AWS.EC2.CopyImage
import Network.AWS.EC2.CopySnapshot
import Network.AWS.EC2.CreateCapacityReservation
import Network.AWS.EC2.CreateCarrierGateway
import Network.AWS.EC2.CreateClientVPNEndpoint
import Network.AWS.EC2.CreateClientVPNRoute
import Network.AWS.EC2.CreateCustomerGateway
import Network.AWS.EC2.CreateDHCPOptions
import Network.AWS.EC2.CreateDefaultSubnet
import Network.AWS.EC2.CreateDefaultVPC
import Network.AWS.EC2.CreateEgressOnlyInternetGateway
import Network.AWS.EC2.CreateFleet
import Network.AWS.EC2.CreateFlowLogs
import Network.AWS.EC2.CreateFpgaImage
import Network.AWS.EC2.CreateImage
import Network.AWS.EC2.CreateInstanceExportTask
import Network.AWS.EC2.CreateInternetGateway
import Network.AWS.EC2.CreateKeyPair
import Network.AWS.EC2.CreateLaunchTemplate
import Network.AWS.EC2.CreateLaunchTemplateVersion
import Network.AWS.EC2.CreateLocalGatewayRoute
import Network.AWS.EC2.CreateLocalGatewayRouteTableVPCAssociation
import Network.AWS.EC2.CreateManagedPrefixList
import Network.AWS.EC2.CreateNatGateway
import Network.AWS.EC2.CreateNetworkACL
import Network.AWS.EC2.CreateNetworkACLEntry
import Network.AWS.EC2.CreateNetworkInsightsPath
import Network.AWS.EC2.CreateNetworkInterface
import Network.AWS.EC2.CreateNetworkInterfacePermission
import Network.AWS.EC2.CreatePlacementGroup
import Network.AWS.EC2.CreateReservedInstancesListing
import Network.AWS.EC2.CreateRoute
import Network.AWS.EC2.CreateRouteTable
import Network.AWS.EC2.CreateSecurityGroup
import Network.AWS.EC2.CreateSnapshot
import Network.AWS.EC2.CreateSnapshots
import Network.AWS.EC2.CreateSpotDatafeedSubscription
import Network.AWS.EC2.CreateSubnet
import Network.AWS.EC2.CreateTags
import Network.AWS.EC2.CreateTrafficMirrorFilter
import Network.AWS.EC2.CreateTrafficMirrorFilterRule
import Network.AWS.EC2.CreateTrafficMirrorSession
import Network.AWS.EC2.CreateTrafficMirrorTarget
import Network.AWS.EC2.CreateTransitGateway
import Network.AWS.EC2.CreateTransitGatewayConnect
import Network.AWS.EC2.CreateTransitGatewayConnectPeer
import Network.AWS.EC2.CreateTransitGatewayMulticastDomain
import Network.AWS.EC2.CreateTransitGatewayPeeringAttachment
import Network.AWS.EC2.CreateTransitGatewayPrefixListReference
import Network.AWS.EC2.CreateTransitGatewayRoute
import Network.AWS.EC2.CreateTransitGatewayRouteTable
import Network.AWS.EC2.CreateTransitGatewayVPCAttachment
import Network.AWS.EC2.CreateVPC
import Network.AWS.EC2.CreateVPCEndpoint
import Network.AWS.EC2.CreateVPCEndpointConnectionNotification
import Network.AWS.EC2.CreateVPCEndpointServiceConfiguration
import Network.AWS.EC2.CreateVPCPeeringConnection
import Network.AWS.EC2.CreateVPNConnection
import Network.AWS.EC2.CreateVPNConnectionRoute
import Network.AWS.EC2.CreateVPNGateway
import Network.AWS.EC2.CreateVolume
import Network.AWS.EC2.DeleteCarrierGateway
import Network.AWS.EC2.DeleteClientVPNEndpoint
import Network.AWS.EC2.DeleteClientVPNRoute
import Network.AWS.EC2.DeleteCustomerGateway
import Network.AWS.EC2.DeleteDHCPOptions
import Network.AWS.EC2.DeleteEgressOnlyInternetGateway
import Network.AWS.EC2.DeleteFleets
import Network.AWS.EC2.DeleteFlowLogs
import Network.AWS.EC2.DeleteFpgaImage
import Network.AWS.EC2.DeleteInternetGateway
import Network.AWS.EC2.DeleteKeyPair
import Network.AWS.EC2.DeleteLaunchTemplate
import Network.AWS.EC2.DeleteLaunchTemplateVersions
import Network.AWS.EC2.DeleteLocalGatewayRoute
import Network.AWS.EC2.DeleteLocalGatewayRouteTableVPCAssociation
import Network.AWS.EC2.DeleteManagedPrefixList
import Network.AWS.EC2.DeleteNatGateway
import Network.AWS.EC2.DeleteNetworkACL
import Network.AWS.EC2.DeleteNetworkACLEntry
import Network.AWS.EC2.DeleteNetworkInsightsAnalysis
import Network.AWS.EC2.DeleteNetworkInsightsPath
import Network.AWS.EC2.DeleteNetworkInterface
import Network.AWS.EC2.DeleteNetworkInterfacePermission
import Network.AWS.EC2.DeletePlacementGroup
import Network.AWS.EC2.DeleteQueuedReservedInstances
import Network.AWS.EC2.DeleteRoute
import Network.AWS.EC2.DeleteRouteTable
import Network.AWS.EC2.DeleteSecurityGroup
import Network.AWS.EC2.DeleteSnapshot
import Network.AWS.EC2.DeleteSpotDatafeedSubscription
import Network.AWS.EC2.DeleteSubnet
import Network.AWS.EC2.DeleteTags
import Network.AWS.EC2.DeleteTrafficMirrorFilter
import Network.AWS.EC2.DeleteTrafficMirrorFilterRule
import Network.AWS.EC2.DeleteTrafficMirrorSession
import Network.AWS.EC2.DeleteTrafficMirrorTarget
import Network.AWS.EC2.DeleteTransitGateway
import Network.AWS.EC2.DeleteTransitGatewayConnect
import Network.AWS.EC2.DeleteTransitGatewayConnectPeer
import Network.AWS.EC2.DeleteTransitGatewayMulticastDomain
import Network.AWS.EC2.DeleteTransitGatewayPeeringAttachment
import Network.AWS.EC2.DeleteTransitGatewayPrefixListReference
import Network.AWS.EC2.DeleteTransitGatewayRoute
import Network.AWS.EC2.DeleteTransitGatewayRouteTable
import Network.AWS.EC2.DeleteTransitGatewayVPCAttachment
import Network.AWS.EC2.DeleteVPC
import Network.AWS.EC2.DeleteVPCEndpointConnectionNotifications
import Network.AWS.EC2.DeleteVPCEndpointServiceConfigurations
import Network.AWS.EC2.DeleteVPCEndpoints
import Network.AWS.EC2.DeleteVPCPeeringConnection
import Network.AWS.EC2.DeleteVPNConnection
import Network.AWS.EC2.DeleteVPNConnectionRoute
import Network.AWS.EC2.DeleteVPNGateway
import Network.AWS.EC2.DeleteVolume
import Network.AWS.EC2.DeprovisionByoipCidr
import Network.AWS.EC2.DeregisterImage
import Network.AWS.EC2.DeregisterInstanceEventNotificationAttributes
import Network.AWS.EC2.DeregisterTransitGatewayMulticastGroupMembers
import Network.AWS.EC2.DeregisterTransitGatewayMulticastGroupSources
import Network.AWS.EC2.DescribeAccountAttributes
import Network.AWS.EC2.DescribeAddresses
import Network.AWS.EC2.DescribeAddressesAttribute
import Network.AWS.EC2.DescribeAggregateIdFormat
import Network.AWS.EC2.DescribeAvailabilityZones
import Network.AWS.EC2.DescribeBundleTasks
import Network.AWS.EC2.DescribeByoipCidrs
import Network.AWS.EC2.DescribeCapacityReservations
import Network.AWS.EC2.DescribeCarrierGateways
import Network.AWS.EC2.DescribeClassicLinkInstances
import Network.AWS.EC2.DescribeClientVPNAuthorizationRules
import Network.AWS.EC2.DescribeClientVPNConnections
import Network.AWS.EC2.DescribeClientVPNEndpoints
import Network.AWS.EC2.DescribeClientVPNRoutes
import Network.AWS.EC2.DescribeClientVPNTargetNetworks
import Network.AWS.EC2.DescribeCoipPools
import Network.AWS.EC2.DescribeConversionTasks
import Network.AWS.EC2.DescribeCustomerGateways
import Network.AWS.EC2.DescribeDHCPOptions
import Network.AWS.EC2.DescribeEgressOnlyInternetGateways
import Network.AWS.EC2.DescribeElasticGpus
import Network.AWS.EC2.DescribeExportImageTasks
import Network.AWS.EC2.DescribeExportTasks
import Network.AWS.EC2.DescribeFastSnapshotRestores
import Network.AWS.EC2.DescribeFleetHistory
import Network.AWS.EC2.DescribeFleetInstances
import Network.AWS.EC2.DescribeFleets
import Network.AWS.EC2.DescribeFlowLogs
import Network.AWS.EC2.DescribeFpgaImageAttribute
import Network.AWS.EC2.DescribeFpgaImages
import Network.AWS.EC2.DescribeHostReservationOfferings
import Network.AWS.EC2.DescribeHostReservations
import Network.AWS.EC2.DescribeHosts
import Network.AWS.EC2.DescribeIAMInstanceProfileAssociations
import Network.AWS.EC2.DescribeIPv6Pools
import Network.AWS.EC2.DescribeIdFormat
import Network.AWS.EC2.DescribeIdentityIdFormat
import Network.AWS.EC2.DescribeImageAttribute
import Network.AWS.EC2.DescribeImages
import Network.AWS.EC2.DescribeImportImageTasks
import Network.AWS.EC2.DescribeImportSnapshotTasks
import Network.AWS.EC2.DescribeInstanceAttribute
import Network.AWS.EC2.DescribeInstanceCreditSpecifications
import Network.AWS.EC2.DescribeInstanceEventNotificationAttributes
import Network.AWS.EC2.DescribeInstanceStatus
import Network.AWS.EC2.DescribeInstanceTypeOfferings
import Network.AWS.EC2.DescribeInstanceTypes
import Network.AWS.EC2.DescribeInstances
import Network.AWS.EC2.DescribeInternetGateways
import Network.AWS.EC2.DescribeKeyPairs
import Network.AWS.EC2.DescribeLaunchTemplateVersions
import Network.AWS.EC2.DescribeLaunchTemplates
import Network.AWS.EC2.DescribeLocalGatewayRouteTableVPCAssociations
import Network.AWS.EC2.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
import Network.AWS.EC2.DescribeLocalGatewayRouteTables
import Network.AWS.EC2.DescribeLocalGatewayVirtualInterfaceGroups
import Network.AWS.EC2.DescribeLocalGatewayVirtualInterfaces
import Network.AWS.EC2.DescribeLocalGateways
import Network.AWS.EC2.DescribeManagedPrefixLists
import Network.AWS.EC2.DescribeMovingAddresses
import Network.AWS.EC2.DescribeNatGateways
import Network.AWS.EC2.DescribeNetworkACLs
import Network.AWS.EC2.DescribeNetworkInsightsAnalyses
import Network.AWS.EC2.DescribeNetworkInsightsPaths
import Network.AWS.EC2.DescribeNetworkInterfaceAttribute
import Network.AWS.EC2.DescribeNetworkInterfacePermissions
import Network.AWS.EC2.DescribeNetworkInterfaces
import Network.AWS.EC2.DescribePlacementGroups
import Network.AWS.EC2.DescribePrefixLists
import Network.AWS.EC2.DescribePrincipalIdFormat
import Network.AWS.EC2.DescribePublicIPv4Pools
import Network.AWS.EC2.DescribeRegions
import Network.AWS.EC2.DescribeReservedInstances
import Network.AWS.EC2.DescribeReservedInstancesListings
import Network.AWS.EC2.DescribeReservedInstancesModifications
import Network.AWS.EC2.DescribeReservedInstancesOfferings
import Network.AWS.EC2.DescribeRouteTables
import Network.AWS.EC2.DescribeScheduledInstanceAvailability
import Network.AWS.EC2.DescribeScheduledInstances
import Network.AWS.EC2.DescribeSecurityGroupReferences
import Network.AWS.EC2.DescribeSecurityGroups
import Network.AWS.EC2.DescribeSnapshotAttribute
import Network.AWS.EC2.DescribeSnapshots
import Network.AWS.EC2.DescribeSpotDatafeedSubscription
import Network.AWS.EC2.DescribeSpotFleetInstances
import Network.AWS.EC2.DescribeSpotFleetRequestHistory
import Network.AWS.EC2.DescribeSpotFleetRequests
import Network.AWS.EC2.DescribeSpotInstanceRequests
import Network.AWS.EC2.DescribeSpotPriceHistory
import Network.AWS.EC2.DescribeStaleSecurityGroups
import Network.AWS.EC2.DescribeSubnets
import Network.AWS.EC2.DescribeTags
import Network.AWS.EC2.DescribeTrafficMirrorFilters
import Network.AWS.EC2.DescribeTrafficMirrorSessions
import Network.AWS.EC2.DescribeTrafficMirrorTargets
import Network.AWS.EC2.DescribeTransitGatewayAttachments
import Network.AWS.EC2.DescribeTransitGatewayConnectPeers
import Network.AWS.EC2.DescribeTransitGatewayConnects
import Network.AWS.EC2.DescribeTransitGatewayMulticastDomains
import Network.AWS.EC2.DescribeTransitGatewayPeeringAttachments
import Network.AWS.EC2.DescribeTransitGatewayRouteTables
import Network.AWS.EC2.DescribeTransitGatewayVPCAttachments
import Network.AWS.EC2.DescribeTransitGateways
import Network.AWS.EC2.DescribeVPCAttribute
import Network.AWS.EC2.DescribeVPCClassicLink
import Network.AWS.EC2.DescribeVPCClassicLinkDNSSupport
import Network.AWS.EC2.DescribeVPCEndpointConnectionNotifications
import Network.AWS.EC2.DescribeVPCEndpointConnections
import Network.AWS.EC2.DescribeVPCEndpointServiceConfigurations
import Network.AWS.EC2.DescribeVPCEndpointServicePermissions
import Network.AWS.EC2.DescribeVPCEndpointServices
import Network.AWS.EC2.DescribeVPCEndpoints
import Network.AWS.EC2.DescribeVPCPeeringConnections
import Network.AWS.EC2.DescribeVPCs
import Network.AWS.EC2.DescribeVPNConnections
import Network.AWS.EC2.DescribeVPNGateways
import Network.AWS.EC2.DescribeVolumeAttribute
import Network.AWS.EC2.DescribeVolumeStatus
import Network.AWS.EC2.DescribeVolumes
import Network.AWS.EC2.DescribeVolumesModifications
import Network.AWS.EC2.DetachClassicLinkVPC
import Network.AWS.EC2.DetachInternetGateway
import Network.AWS.EC2.DetachNetworkInterface
import Network.AWS.EC2.DetachVPNGateway
import Network.AWS.EC2.DetachVolume
import Network.AWS.EC2.DisableEBSEncryptionByDefault
import Network.AWS.EC2.DisableFastSnapshotRestores
import Network.AWS.EC2.DisableTransitGatewayRouteTablePropagation
import Network.AWS.EC2.DisableVGWRoutePropagation
import Network.AWS.EC2.DisableVPCClassicLink
import Network.AWS.EC2.DisableVPCClassicLinkDNSSupport
import Network.AWS.EC2.DisassociateAddress
import Network.AWS.EC2.DisassociateClientVPNTargetNetwork
import Network.AWS.EC2.DisassociateEnclaveCertificateIAMRole
import Network.AWS.EC2.DisassociateIAMInstanceProfile
import Network.AWS.EC2.DisassociateRouteTable
import Network.AWS.EC2.DisassociateSubnetCidrBlock
import Network.AWS.EC2.DisassociateTransitGatewayMulticastDomain
import Network.AWS.EC2.DisassociateTransitGatewayRouteTable
import Network.AWS.EC2.DisassociateVPCCidrBlock
import Network.AWS.EC2.EnableEBSEncryptionByDefault
import Network.AWS.EC2.EnableFastSnapshotRestores
import Network.AWS.EC2.EnableTransitGatewayRouteTablePropagation
import Network.AWS.EC2.EnableVGWRoutePropagation
import Network.AWS.EC2.EnableVPCClassicLink
import Network.AWS.EC2.EnableVPCClassicLinkDNSSupport
import Network.AWS.EC2.EnableVolumeIO
import Network.AWS.EC2.ExportClientVPNClientCertificateRevocationList
import Network.AWS.EC2.ExportClientVPNClientConfiguration
import Network.AWS.EC2.ExportImage
import Network.AWS.EC2.ExportTransitGatewayRoutes
import Network.AWS.EC2.GetAssociatedEnclaveCertificateIAMRoles
import Network.AWS.EC2.GetAssociatedIPv6PoolCidrs
import Network.AWS.EC2.GetCapacityReservationUsage
import Network.AWS.EC2.GetCoipPoolUsage
import Network.AWS.EC2.GetConsoleOutput
import Network.AWS.EC2.GetConsoleScreenshot
import Network.AWS.EC2.GetDefaultCreditSpecification
import Network.AWS.EC2.GetEBSDefaultKMSKeyId
import Network.AWS.EC2.GetEBSEncryptionByDefault
import Network.AWS.EC2.GetGroupsForCapacityReservation
import Network.AWS.EC2.GetHostReservationPurchasePreview
import Network.AWS.EC2.GetLaunchTemplateData
import Network.AWS.EC2.GetManagedPrefixListAssociations
import Network.AWS.EC2.GetManagedPrefixListEntries
import Network.AWS.EC2.GetPasswordData
import Network.AWS.EC2.GetReservedInstancesExchangeQuote
import Network.AWS.EC2.GetTransitGatewayAttachmentPropagations
import Network.AWS.EC2.GetTransitGatewayMulticastDomainAssociations
import Network.AWS.EC2.GetTransitGatewayPrefixListReferences
import Network.AWS.EC2.GetTransitGatewayRouteTableAssociations
import Network.AWS.EC2.GetTransitGatewayRouteTablePropagations
import Network.AWS.EC2.ImportClientVPNClientCertificateRevocationList
import Network.AWS.EC2.ImportImage
import Network.AWS.EC2.ImportInstance
import Network.AWS.EC2.ImportKeyPair
import Network.AWS.EC2.ImportSnapshot
import Network.AWS.EC2.ImportVolume
import Network.AWS.EC2.Internal
import Network.AWS.EC2.ModifyAddressAttribute
import Network.AWS.EC2.ModifyAvailabilityZoneGroup
import Network.AWS.EC2.ModifyCapacityReservation
import Network.AWS.EC2.ModifyClientVPNEndpoint
import Network.AWS.EC2.ModifyDefaultCreditSpecification
import Network.AWS.EC2.ModifyEBSDefaultKMSKeyId
import Network.AWS.EC2.ModifyFleet
import Network.AWS.EC2.ModifyFpgaImageAttribute
import Network.AWS.EC2.ModifyHosts
import Network.AWS.EC2.ModifyIdFormat
import Network.AWS.EC2.ModifyIdentityIdFormat
import Network.AWS.EC2.ModifyImageAttribute
import Network.AWS.EC2.ModifyInstanceAttribute
import Network.AWS.EC2.ModifyInstanceCapacityReservationAttributes
import Network.AWS.EC2.ModifyInstanceCreditSpecification
import Network.AWS.EC2.ModifyInstanceEventStartTime
import Network.AWS.EC2.ModifyInstanceMetadataOptions
import Network.AWS.EC2.ModifyInstancePlacement
import Network.AWS.EC2.ModifyLaunchTemplate
import Network.AWS.EC2.ModifyManagedPrefixList
import Network.AWS.EC2.ModifyNetworkInterfaceAttribute
import Network.AWS.EC2.ModifyReservedInstances
import Network.AWS.EC2.ModifySnapshotAttribute
import Network.AWS.EC2.ModifySpotFleetRequest
import Network.AWS.EC2.ModifySubnetAttribute
import Network.AWS.EC2.ModifyTrafficMirrorFilterNetworkServices
import Network.AWS.EC2.ModifyTrafficMirrorFilterRule
import Network.AWS.EC2.ModifyTrafficMirrorSession
import Network.AWS.EC2.ModifyTransitGateway
import Network.AWS.EC2.ModifyTransitGatewayPrefixListReference
import Network.AWS.EC2.ModifyTransitGatewayVPCAttachment
import Network.AWS.EC2.ModifyVPCAttribute
import Network.AWS.EC2.ModifyVPCEndpoint
import Network.AWS.EC2.ModifyVPCEndpointConnectionNotification
import Network.AWS.EC2.ModifyVPCEndpointServiceConfiguration
import Network.AWS.EC2.ModifyVPCEndpointServicePermissions
import Network.AWS.EC2.ModifyVPCPeeringConnectionOptions
import Network.AWS.EC2.ModifyVPCTenancy
import Network.AWS.EC2.ModifyVPNConnection
import Network.AWS.EC2.ModifyVPNConnectionOptions
import Network.AWS.EC2.ModifyVPNTunnelCertificate
import Network.AWS.EC2.ModifyVPNTunnelOptions
import Network.AWS.EC2.ModifyVolume
import Network.AWS.EC2.ModifyVolumeAttribute
import Network.AWS.EC2.MonitorInstances
import Network.AWS.EC2.MoveAddressToVPC
import Network.AWS.EC2.ProvisionByoipCidr
import Network.AWS.EC2.PurchaseHostReservation
import Network.AWS.EC2.PurchaseReservedInstancesOffering
import Network.AWS.EC2.PurchaseScheduledInstances
import Network.AWS.EC2.RebootInstances
import Network.AWS.EC2.RegisterImage
import Network.AWS.EC2.RegisterInstanceEventNotificationAttributes
import Network.AWS.EC2.RegisterTransitGatewayMulticastGroupMembers
import Network.AWS.EC2.RegisterTransitGatewayMulticastGroupSources
import Network.AWS.EC2.RejectTransitGatewayMulticastDomainAssociations
import Network.AWS.EC2.RejectTransitGatewayPeeringAttachment
import Network.AWS.EC2.RejectTransitGatewayVPCAttachment
import Network.AWS.EC2.RejectVPCEndpointConnections
import Network.AWS.EC2.RejectVPCPeeringConnection
import Network.AWS.EC2.ReleaseAddress
import Network.AWS.EC2.ReleaseHosts
import Network.AWS.EC2.ReplaceIAMInstanceProfileAssociation
import Network.AWS.EC2.ReplaceNetworkACLAssociation
import Network.AWS.EC2.ReplaceNetworkACLEntry
import Network.AWS.EC2.ReplaceRoute
import Network.AWS.EC2.ReplaceRouteTableAssociation
import Network.AWS.EC2.ReplaceTransitGatewayRoute
import Network.AWS.EC2.ReportInstanceStatus
import Network.AWS.EC2.RequestSpotFleet
import Network.AWS.EC2.RequestSpotInstances
import Network.AWS.EC2.ResetAddressAttribute
import Network.AWS.EC2.ResetEBSDefaultKMSKeyId
import Network.AWS.EC2.ResetFpgaImageAttribute
import Network.AWS.EC2.ResetImageAttribute
import Network.AWS.EC2.ResetInstanceAttribute
import Network.AWS.EC2.ResetNetworkInterfaceAttribute
import Network.AWS.EC2.ResetSnapshotAttribute
import Network.AWS.EC2.RestoreAddressToClassic
import Network.AWS.EC2.RestoreManagedPrefixListVersion
import Network.AWS.EC2.RevokeClientVPNIngress
import Network.AWS.EC2.RevokeSecurityGroupEgress
import Network.AWS.EC2.RevokeSecurityGroupIngress
import Network.AWS.EC2.RunInstances
import Network.AWS.EC2.RunScheduledInstances
import Network.AWS.EC2.SearchLocalGatewayRoutes
import Network.AWS.EC2.SearchTransitGatewayMulticastGroups
import Network.AWS.EC2.SearchTransitGatewayRoutes
import Network.AWS.EC2.SendDiagnosticInterrupt
import Network.AWS.EC2.StartInstances
import Network.AWS.EC2.StartNetworkInsightsAnalysis
import Network.AWS.EC2.StartVPCEndpointServicePrivateDNSVerification
import Network.AWS.EC2.StopInstances
import Network.AWS.EC2.TerminateClientVPNConnections
import Network.AWS.EC2.TerminateInstances
import Network.AWS.EC2.Types
import Network.AWS.EC2.UnassignIPv6Addresses
import Network.AWS.EC2.UnassignPrivateIPAddresses
import Network.AWS.EC2.UnmonitorInstances
import Network.AWS.EC2.UpdateSecurityGroupRuleDescriptionsEgress
import Network.AWS.EC2.UpdateSecurityGroupRuleDescriptionsIngress
import Network.AWS.EC2.Waiters
import Network.AWS.EC2.WithdrawByoipCidr

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'EC2'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
