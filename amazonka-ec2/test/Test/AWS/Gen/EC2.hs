{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.EC2
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.EC2 where

import Data.Proxy
import Network.AWS.EC2
import Test.AWS.EC2.Internal
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestAcceptReservedInstancesExchangeQuote $
--             acceptReservedInstancesExchangeQuote
--
--         , requestDescribeInstanceCreditSpecifications $
--             describeInstanceCreditSpecifications
--
--         , requestDescribeByoipCidrs $
--             describeByoipCidrs
--
--         , requestDescribeLocalGatewayVirtualInterfaces $
--             describeLocalGatewayVirtualInterfaces
--
--         , requestDeleteLocalGatewayRouteTableVPCAssociation $
--             deleteLocalGatewayRouteTableVPCAssociation
--
--         , requestDetachVolume $
--             detachVolume
--
--         , requestCreateTransitGatewayVPCAttachment $
--             createTransitGatewayVPCAttachment
--
--         , requestDeleteVPCEndpointConnectionNotifications $
--             deleteVPCEndpointConnectionNotifications
--
--         , requestDeleteNetworkInsightsPath $
--             deleteNetworkInsightsPath
--
--         , requestAuthorizeSecurityGroupEgress $
--             authorizeSecurityGroupEgress
--
--         , requestModifyManagedPrefixList $
--             modifyManagedPrefixList
--
--         , requestDeleteTransitGatewayPrefixListReference $
--             deleteTransitGatewayPrefixListReference
--
--         , requestDeleteTransitGatewayRoute $
--             deleteTransitGatewayRoute
--
--         , requestDescribeVPCPeeringConnections $
--             describeVPCPeeringConnections
--
--         , requestDescribeInstances $
--             describeInstances
--
--         , requestDeregisterInstanceEventNotificationAttributes $
--             deregisterInstanceEventNotificationAttributes
--
--         , requestCreateTransitGatewayMulticastDomain $
--             createTransitGatewayMulticastDomain
--
--         , requestAssociateTransitGatewayMulticastDomain $
--             associateTransitGatewayMulticastDomain
--
--         , requestReleaseAddress $
--             releaseAddress
--
--         , requestDeregisterTransitGatewayMulticastGroupMembers $
--             deregisterTransitGatewayMulticastGroupMembers
--
--         , requestGetHostReservationPurchasePreview $
--             getHostReservationPurchasePreview
--
--         , requestCancelBundleTask $
--             cancelBundleTask
--
--         , requestGetCapacityReservationUsage $
--             getCapacityReservationUsage
--
--         , requestCreateTransitGatewayConnectPeer $
--             createTransitGatewayConnectPeer
--
--         , requestModifyVPCTenancy $
--             modifyVPCTenancy
--
--         , requestCreateVPCEndpointServiceConfiguration $
--             createVPCEndpointServiceConfiguration
--
--         , requestDescribeExportTasks $
--             describeExportTasks
--
--         , requestGetTransitGatewayMulticastDomainAssociations $
--             getTransitGatewayMulticastDomainAssociations
--
--         , requestDisableEBSEncryptionByDefault $
--             disableEBSEncryptionByDefault
--
--         , requestAssociateVPCCidrBlock $
--             associateVPCCidrBlock
--
--         , requestCreateNetworkACL $
--             createNetworkACL
--
--         , requestAcceptTransitGatewayPeeringAttachment $
--             acceptTransitGatewayPeeringAttachment
--
--         , requestDeleteLaunchTemplate $
--             deleteLaunchTemplate
--
--         , requestDeleteVPC $
--             deleteVPC
--
--         , requestDeleteFleets $
--             deleteFleets
--
--         , requestGetAssociatedIPv6PoolCidrs $
--             getAssociatedIPv6PoolCidrs
--
--         , requestDescribeTrafficMirrorSessions $
--             describeTrafficMirrorSessions
--
--         , requestImportInstance $
--             importInstance
--
--         , requestDescribeLocalGatewayRouteTables $
--             describeLocalGatewayRouteTables
--
--         , requestCreateNetworkInterfacePermission $
--             createNetworkInterfacePermission
--
--         , requestCreateVPNGateway $
--             createVPNGateway
--
--         , requestGetTransitGatewayRouteTableAssociations $
--             getTransitGatewayRouteTableAssociations
--
--         , requestRejectTransitGatewayVPCAttachment $
--             rejectTransitGatewayVPCAttachment
--
--         , requestModifyVolumeAttribute $
--             modifyVolumeAttribute
--
--         , requestDescribePrefixLists $
--             describePrefixLists
--
--         , requestDetachNetworkInterface $
--             detachNetworkInterface
--
--         , requestDeleteVPCEndpoints $
--             deleteVPCEndpoints
--
--         , requestDescribeVPCClassicLink $
--             describeVPCClassicLink
--
--         , requestUpdateSecurityGroupRuleDescriptionsIngress $
--             updateSecurityGroupRuleDescriptionsIngress
--
--         , requestDescribeClientVPNEndpoints $
--             describeClientVPNEndpoints
--
--         , requestDisassociateAddress $
--             disassociateAddress
--
--         , requestDescribeScheduledInstanceAvailability $
--             describeScheduledInstanceAvailability
--
--         , requestRejectVPCEndpointConnections $
--             rejectVPCEndpointConnections
--
--         , requestCreateTransitGatewayRouteTable $
--             createTransitGatewayRouteTable
--
--         , requestDescribeTags $
--             describeTags
--
--         , requestAssociateTransitGatewayRouteTable $
--             associateTransitGatewayRouteTable
--
--         , requestDeleteFlowLogs $
--             deleteFlowLogs
--
--         , requestCreateDefaultSubnet $
--             createDefaultSubnet
--
--         , requestDeleteTrafficMirrorTarget $
--             deleteTrafficMirrorTarget
--
--         , requestAcceptTransitGatewayMulticastDomainAssociations $
--             acceptTransitGatewayMulticastDomainAssociations
--
--         , requestDescribeLaunchTemplateVersions $
--             describeLaunchTemplateVersions
--
--         , requestDescribeAvailabilityZones $
--             describeAvailabilityZones
--
--         , requestGetReservedInstancesExchangeQuote $
--             getReservedInstancesExchangeQuote
--
--         , requestDeleteVPNGateway $
--             deleteVPNGateway
--
--         , requestCreateKeyPair $
--             createKeyPair
--
--         , requestExportTransitGatewayRoutes $
--             exportTransitGatewayRoutes
--
--         , requestCopySnapshot $
--             copySnapshot
--
--         , requestDescribeElasticGpus $
--             describeElasticGpus
--
--         , requestStartNetworkInsightsAnalysis $
--             startNetworkInsightsAnalysis
--
--         , requestDescribeFpgaImages $
--             describeFpgaImages
--
--         , requestCreateFlowLogs $
--             createFlowLogs
--
--         , requestCreateLaunchTemplate $
--             createLaunchTemplate
--
--         , requestDescribeImportImageTasks $
--             describeImportImageTasks
--
--         , requestDeleteTransitGatewayRouteTable $
--             deleteTransitGatewayRouteTable
--
--         , requestDeleteNetworkACL $
--             deleteNetworkACL
--
--         , requestMoveAddressToVPC $
--             moveAddressToVPC
--
--         , requestDescribeFleetInstances $
--             describeFleetInstances
--
--         , requestRestoreAddressToClassic $
--             restoreAddressToClassic
--
--         , requestDeleteNetworkInterfacePermission $
--             deleteNetworkInterfacePermission
--
--         , requestDescribeRouteTables $
--             describeRouteTables
--
--         , requestUpdateSecurityGroupRuleDescriptionsEgress $
--             updateSecurityGroupRuleDescriptionsEgress
--
--         , requestResetFpgaImageAttribute $
--             resetFpgaImageAttribute
--
--         , requestStartVPCEndpointServicePrivateDNSVerification $
--             startVPCEndpointServicePrivateDNSVerification
--
--         , requestDescribeVolumes $
--             describeVolumes
--
--         , requestCreateClientVPNEndpoint $
--             createClientVPNEndpoint
--
--         , requestRevokeClientVPNIngress $
--             revokeClientVPNIngress
--
--         , requestDeleteFpgaImage $
--             deleteFpgaImage
--
--         , requestModifyVPCEndpoint $
--             modifyVPCEndpoint
--
--         , requestDescribeReservedInstancesModifications $
--             describeReservedInstancesModifications
--
--         , requestDescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations $
--             describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
--
--         , requestEnableFastSnapshotRestores $
--             enableFastSnapshotRestores
--
--         , requestDescribeClientVPNRoutes $
--             describeClientVPNRoutes
--
--         , requestGetEBSDefaultKMSKeyId $
--             getEBSDefaultKMSKeyId
--
--         , requestModifyIdFormat $
--             modifyIdFormat
--
--         , requestDetachClassicLinkVPC $
--             detachClassicLinkVPC
--
--         , requestUnassignPrivateIPAddresses $
--             unassignPrivateIPAddresses
--
--         , requestAllocateHosts $
--             allocateHosts
--
--         , requestGetConsoleOutput $
--             getConsoleOutput
--
--         , requestModifyVPNConnectionOptions $
--             modifyVPNConnectionOptions
--
--         , requestCancelImportTask $
--             cancelImportTask
--
--         , requestRegisterImage $
--             registerImage
--
--         , requestModifyFleet $
--             modifyFleet
--
--         , requestDeleteRouteTable $
--             deleteRouteTable
--
--         , requestModifyReservedInstances $
--             modifyReservedInstances
--
--         , requestDescribeImageAttribute $
--             describeImageAttribute
--
--         , requestCreateTrafficMirrorFilterRule $
--             createTrafficMirrorFilterRule
--
--         , requestMonitorInstances $
--             monitorInstances
--
--         , requestModifyVPNConnection $
--             modifyVPNConnection
--
--         , requestDescribeSpotInstanceRequests $
--             describeSpotInstanceRequests
--
--         , requestCancelConversionTask $
--             cancelConversionTask
--
--         , requestModifyVPCEndpointServiceConfiguration $
--             modifyVPCEndpointServiceConfiguration
--
--         , requestModifyTransitGatewayVPCAttachment $
--             modifyTransitGatewayVPCAttachment
--
--         , requestAssociateRouteTable $
--             associateRouteTable
--
--         , requestDescribeAccountAttributes $
--             describeAccountAttributes
--
--         , requestDescribeLaunchTemplates $
--             describeLaunchTemplates
--
--         , requestDescribeIPv6Pools $
--             describeIPv6Pools
--
--         , requestDescribeLocalGateways $
--             describeLocalGateways
--
--         , requestPurchaseHostReservation $
--             purchaseHostReservation
--
--         , requestReportInstanceStatus $
--             reportInstanceStatus
--
--         , requestModifyVPCEndpointServicePermissions $
--             modifyVPCEndpointServicePermissions
--
--         , requestModifyHosts $
--             modifyHosts
--
--         , requestUnassignIPv6Addresses $
--             unassignIPv6Addresses
--
--         , requestGetManagedPrefixListAssociations $
--             getManagedPrefixListAssociations
--
--         , requestDisableFastSnapshotRestores $
--             disableFastSnapshotRestores
--
--         , requestDeleteEgressOnlyInternetGateway $
--             deleteEgressOnlyInternetGateway
--
--         , requestRequestSpotInstances $
--             requestSpotInstances
--
--         , requestRunInstances $
--             runInstances
--
--         , requestGetTransitGatewayRouteTablePropagations $
--             getTransitGatewayRouteTablePropagations
--
--         , requestAttachVolume $
--             attachVolume
--
--         , requestAcceptVPCEndpointConnections $
--             acceptVPCEndpointConnections
--
--         , requestCreateDHCPOptions $
--             createDHCPOptions
--
--         , requestRebootInstances $
--             rebootInstances
--
--         , requestModifyImageAttribute $
--             modifyImageAttribute
--
--         , requestCreateManagedPrefixList $
--             createManagedPrefixList
--
--         , requestSearchTransitGatewayRoutes $
--             searchTransitGatewayRoutes
--
--         , requestDescribeIdFormat $
--             describeIdFormat
--
--         , requestRegisterTransitGatewayMulticastGroupSources $
--             registerTransitGatewayMulticastGroupSources
--
--         , requestDescribeVPCEndpointConnectionNotifications $
--             describeVPCEndpointConnectionNotifications
--
--         , requestDescribeVPCs $
--             describeVPCs
--
--         , requestGetTransitGatewayPrefixListReferences $
--             getTransitGatewayPrefixListReferences
--
--         , requestCreateRouteTable $
--             createRouteTable
--
--         , requestDescribeVolumesModifications $
--             describeVolumesModifications
--
--         , requestAssociateIAMInstanceProfile $
--             associateIAMInstanceProfile
--
--         , requestCreateImage $
--             createImage
--
--         , requestDescribeTrafficMirrorTargets $
--             describeTrafficMirrorTargets
--
--         , requestAssociateDHCPOptions $
--             associateDHCPOptions
--
--         , requestDescribeSpotFleetRequestHistory $
--             describeSpotFleetRequestHistory
--
--         , requestModifyInstanceEventStartTime $
--             modifyInstanceEventStartTime
--
--         , requestDisassociateEnclaveCertificateIAMRole $
--             disassociateEnclaveCertificateIAMRole
--
--         , requestDeleteVPCPeeringConnection $
--             deleteVPCPeeringConnection
--
--         , requestResetInstanceAttribute $
--             resetInstanceAttribute
--
--         , requestDescribeInstanceStatus $
--             describeInstanceStatus
--
--         , requestAttachNetworkInterface $
--             attachNetworkInterface
--
--         , requestAssignIPv6Addresses $
--             assignIPv6Addresses
--
--         , requestCreateLocalGatewayRoute $
--             createLocalGatewayRoute
--
--         , requestEnableVGWRoutePropagation $
--             enableVGWRoutePropagation
--
--         , requestDescribeVPCEndpoints $
--             describeVPCEndpoints
--
--         , requestCreateNetworkACLEntry $
--             createNetworkACLEntry
--
--         , requestDescribeStaleSecurityGroups $
--             describeStaleSecurityGroups
--
--         , requestDescribeFlowLogs $
--             describeFlowLogs
--
--         , requestDescribePlacementGroups $
--             describePlacementGroups
--
--         , requestDescribeFleets $
--             describeFleets
--
--         , requestModifyIdentityIdFormat $
--             modifyIdentityIdFormat
--
--         , requestDescribeLocalGatewayVirtualInterfaceGroups $
--             describeLocalGatewayVirtualInterfaceGroups
--
--         , requestReplaceNetworkACLEntry $
--             replaceNetworkACLEntry
--
--         , requestDeleteTags $
--             deleteTags
--
--         , requestDescribeTransitGatewayAttachments $
--             describeTransitGatewayAttachments
--
--         , requestDescribeReservedInstancesOfferings $
--             describeReservedInstancesOfferings
--
--         , requestModifySnapshotAttribute $
--             modifySnapshotAttribute
--
--         , requestConfirmProductInstance $
--             confirmProductInstance
--
--         , requestDescribeVPNConnections $
--             describeVPNConnections
--
--         , requestModifyAvailabilityZoneGroup $
--             modifyAvailabilityZoneGroup
--
--         , requestDisassociateIAMInstanceProfile $
--             disassociateIAMInstanceProfile
--
--         , requestDisableVPCClassicLink $
--             disableVPCClassicLink
--
--         , requestGetGroupsForCapacityReservation $
--             getGroupsForCapacityReservation
--
--         , requestImportVolume $
--             importVolume
--
--         , requestDescribeAddresses $
--             describeAddresses
--
--         , requestDeleteLocalGatewayRoute $
--             deleteLocalGatewayRoute
--
--         , requestDescribeVPCEndpointServiceConfigurations $
--             describeVPCEndpointServiceConfigurations
--
--         , requestDescribeNetworkInterfaces $
--             describeNetworkInterfaces
--
--         , requestDescribeVPCEndpointServices $
--             describeVPCEndpointServices
--
--         , requestDeleteNetworkACLEntry $
--             deleteNetworkACLEntry
--
--         , requestGetTransitGatewayAttachmentPropagations $
--             getTransitGatewayAttachmentPropagations
--
--         , requestAssignPrivateIPAddresses $
--             assignPrivateIPAddresses
--
--         , requestDescribeNatGateways $
--             describeNatGateways
--
--         , requestDescribeSnapshotAttribute $
--             describeSnapshotAttribute
--
--         , requestDeleteSnapshot $
--             deleteSnapshot
--
--         , requestDeleteCarrierGateway $
--             deleteCarrierGateway
--
--         , requestDescribeTransitGatewayVPCAttachments $
--             describeTransitGatewayVPCAttachments
--
--         , requestModifyVPCEndpointConnectionNotification $
--             modifyVPCEndpointConnectionNotification
--
--         , requestPurchaseReservedInstancesOffering $
--             purchaseReservedInstancesOffering
--
--         , requestAuthorizeSecurityGroupIngress $
--             authorizeSecurityGroupIngress
--
--         , requestGetConsoleScreenshot $
--             getConsoleScreenshot
--
--         , requestDisableVGWRoutePropagation $
--             disableVGWRoutePropagation
--
--         , requestDescribeTransitGatewayMulticastDomains $
--             describeTransitGatewayMulticastDomains
--
--         , requestDescribeSubnets $
--             describeSubnets
--
--         , requestUnmonitorInstances $
--             unmonitorInstances
--
--         , requestCancelSpotInstanceRequests $
--             cancelSpotInstanceRequests
--
--         , requestCreateSpotDatafeedSubscription $
--             createSpotDatafeedSubscription
--
--         , requestDisassociateRouteTable $
--             disassociateRouteTable
--
--         , requestDescribeTransitGatewayConnectPeers $
--             describeTransitGatewayConnectPeers
--
--         , requestModifyVPNTunnelCertificate $
--             modifyVPNTunnelCertificate
--
--         , requestRestoreManagedPrefixListVersion $
--             restoreManagedPrefixListVersion
--
--         , requestModifyAddressAttribute $
--             modifyAddressAttribute
--
--         , requestCreateVPNConnection $
--             createVPNConnection
--
--         , requestAssociateSubnetCidrBlock $
--             associateSubnetCidrBlock
--
--         , requestAttachClassicLinkVPC $
--             attachClassicLinkVPC
--
--         , requestDescribeSpotPriceHistory $
--             describeSpotPriceHistory
--
--         , requestDeleteQueuedReservedInstances $
--             deleteQueuedReservedInstances
--
--         , requestDescribeAggregateIdFormat $
--             describeAggregateIdFormat
--
--         , requestDescribeReservedInstancesListings $
--             describeReservedInstancesListings
--
--         , requestCopyImage $
--             copyImage
--
--         , requestCreateLocalGatewayRouteTableVPCAssociation $
--             createLocalGatewayRouteTableVPCAssociation
--
--         , requestDescribeCarrierGateways $
--             describeCarrierGateways
--
--         , requestDeleteInternetGateway $
--             deleteInternetGateway
--
--         , requestCreateFleet $
--             createFleet
--
--         , requestModifyClientVPNEndpoint $
--             modifyClientVPNEndpoint
--
--         , requestModifyInstanceCapacityReservationAttributes $
--             modifyInstanceCapacityReservationAttributes
--
--         , requestImportClientVPNClientCertificateRevocationList $
--             importClientVPNClientCertificateRevocationList
--
--         , requestAssociateClientVPNTargetNetwork $
--             associateClientVPNTargetNetwork
--
--         , requestCancelCapacityReservation $
--             cancelCapacityReservation
--
--         , requestCancelReservedInstancesListing $
--             cancelReservedInstancesListing
--
--         , requestDisableTransitGatewayRouteTablePropagation $
--             disableTransitGatewayRouteTablePropagation
--
--         , requestDescribeVPCClassicLinkDNSSupport $
--             describeVPCClassicLinkDNSSupport
--
--         , requestCreateVPCEndpoint $
--             createVPCEndpoint
--
--         , requestDescribeSnapshots $
--             describeSnapshots
--
--         , requestDescribeImportSnapshotTasks $
--             describeImportSnapshotTasks
--
--         , requestDescribeNetworkInterfaceAttribute $
--             describeNetworkInterfaceAttribute
--
--         , requestDescribeInstanceEventNotificationAttributes $
--             describeInstanceEventNotificationAttributes
--
--         , requestEnableEBSEncryptionByDefault $
--             enableEBSEncryptionByDefault
--
--         , requestModifyTrafficMirrorFilterRule $
--             modifyTrafficMirrorFilterRule
--
--         , requestDescribeCoipPools $
--             describeCoipPools
--
--         , requestCancelExportTask $
--             cancelExportTask
--
--         , requestEnableVolumeIO $
--             enableVolumeIO
--
--         , requestModifyTransitGateway $
--             modifyTransitGateway
--
--         , requestDescribeInstanceTypeOfferings $
--             describeInstanceTypeOfferings
--
--         , requestCreateSubnet $
--             createSubnet
--
--         , requestRequestSpotFleet $
--             requestSpotFleet
--
--         , requestDeleteVPNConnection $
--             deleteVPNConnection
--
--         , requestModifySpotFleetRequest $
--             modifySpotFleetRequest
--
--         , requestDeregisterImage $
--             deregisterImage
--
--         , requestDetachVPNGateway $
--             detachVPNGateway
--
--         , requestCreateNetworkInterface $
--             createNetworkInterface
--
--         , requestModifyNetworkInterfaceAttribute $
--             modifyNetworkInterfaceAttribute
--
--         , requestCreateNatGateway $
--             createNatGateway
--
--         , requestGetAssociatedEnclaveCertificateIAMRoles $
--             getAssociatedEnclaveCertificateIAMRoles
--
--         , requestCreateInternetGateway $
--             createInternetGateway
--
--         , requestEnableTransitGatewayRouteTablePropagation $
--             enableTransitGatewayRouteTablePropagation
--
--         , requestResetAddressAttribute $
--             resetAddressAttribute
--
--         , requestDescribeTransitGatewayConnects $
--             describeTransitGatewayConnects
--
--         , requestDeletePlacementGroup $
--             deletePlacementGroup
--
--         , requestDescribeInstanceTypes $
--             describeInstanceTypes
--
--         , requestDescribeBundleTasks $
--             describeBundleTasks
--
--         , requestModifySubnetAttribute $
--             modifySubnetAttribute
--
--         , requestDescribeSecurityGroups $
--             describeSecurityGroups
--
--         , requestCreateClientVPNRoute $
--             createClientVPNRoute
--
--         , requestDisassociateSubnetCidrBlock $
--             disassociateSubnetCidrBlock
--
--         , requestDescribeSpotDatafeedSubscription $
--             describeSpotDatafeedSubscription
--
--         , requestCreateInstanceExportTask $
--             createInstanceExportTask
--
--         , requestDisassociateClientVPNTargetNetwork $
--             disassociateClientVPNTargetNetwork
--
--         , requestSendDiagnosticInterrupt $
--             sendDiagnosticInterrupt
--
--         , requestDescribeVPCAttribute $
--             describeVPCAttribute
--
--         , requestDescribeSecurityGroupReferences $
--             describeSecurityGroupReferences
--
--         , requestModifyCapacityReservation $
--             modifyCapacityReservation
--
--         , requestDetachInternetGateway $
--             detachInternetGateway
--
--         , requestCreateVolume $
--             createVolume
--
--         , requestExportClientVPNClientConfiguration $
--             exportClientVPNClientConfiguration
--
--         , requestRevokeSecurityGroupEgress $
--             revokeSecurityGroupEgress
--
--         , requestDeleteKeyPair $
--             deleteKeyPair
--
--         , requestModifyInstanceMetadataOptions $
--             modifyInstanceMetadataOptions
--
--         , requestDescribeEgressOnlyInternetGateways $
--             describeEgressOnlyInternetGateways
--
--         , requestModifyTrafficMirrorFilterNetworkServices $
--             modifyTrafficMirrorFilterNetworkServices
--
--         , requestImportSnapshot $
--             importSnapshot
--
--         , requestDescribeImages $
--             describeImages
--
--         , requestDeprovisionByoipCidr $
--             deprovisionByoipCidr
--
--         , requestDescribeAddressesAttribute $
--             describeAddressesAttribute
--
--         , requestAcceptVPCPeeringConnection $
--             acceptVPCPeeringConnection
--
--         , requestDescribeMovingAddresses $
--             describeMovingAddresses
--
--         , requestCreateVPCEndpointConnectionNotification $
--             createVPCEndpointConnectionNotification
--
--         , requestDescribeFleetHistory $
--             describeFleetHistory
--
--         , requestDeleteVPCEndpointServiceConfigurations $
--             deleteVPCEndpointServiceConfigurations
--
--         , requestCreateVPC $
--             createVPC
--
--         , requestSearchLocalGatewayRoutes $
--             searchLocalGatewayRoutes
--
--         , requestCreateTrafficMirrorTarget $
--             createTrafficMirrorTarget
--
--         , requestDescribeVolumeStatus $
--             describeVolumeStatus
--
--         , requestDescribeVolumeAttribute $
--             describeVolumeAttribute
--
--         , requestDeleteClientVPNRoute $
--             deleteClientVPNRoute
--
--         , requestModifyVPCPeeringConnectionOptions $
--             modifyVPCPeeringConnectionOptions
--
--         , requestDescribeSpotFleetInstances $
--             describeSpotFleetInstances
--
--         , requestDescribePrincipalIdFormat $
--             describePrincipalIdFormat
--
--         , requestModifyInstanceCreditSpecification $
--             modifyInstanceCreditSpecification
--
--         , requestDisassociateTransitGatewayMulticastDomain $
--             disassociateTransitGatewayMulticastDomain
--
--         , requestDescribeManagedPrefixLists $
--             describeManagedPrefixLists
--
--         , requestGetPasswordData $
--             getPasswordData
--
--         , requestDeleteVolume $
--             deleteVolume
--
--         , requestDescribeTransitGateways $
--             describeTransitGateways
--
--         , requestDescribeSpotFleetRequests $
--             describeSpotFleetRequests
--
--         , requestDescribeClientVPNConnections $
--             describeClientVPNConnections
--
--         , requestSearchTransitGatewayMulticastGroups $
--             searchTransitGatewayMulticastGroups
--
--         , requestModifyVPCAttribute $
--             modifyVPCAttribute
--
--         , requestRevokeSecurityGroupIngress $
--             revokeSecurityGroupIngress
--
--         , requestDescribeHostReservationOfferings $
--             describeHostReservationOfferings
--
--         , requestDescribeTransitGatewayRouteTables $
--             describeTransitGatewayRouteTables
--
--         , requestDescribeNetworkACLs $
--             describeNetworkACLs
--
--         , requestRegisterTransitGatewayMulticastGroupMembers $
--             registerTransitGatewayMulticastGroupMembers
--
--         , requestDescribeHosts $
--             describeHosts
--
--         , requestDescribeVPNGateways $
--             describeVPNGateways
--
--         , requestDescribeHostReservations $
--             describeHostReservations
--
--         , requestDeleteManagedPrefixList $
--             deleteManagedPrefixList
--
--         , requestRejectVPCPeeringConnection $
--             rejectVPCPeeringConnection
--
--         , requestResetImageAttribute $
--             resetImageAttribute
--
--         , requestDescribeScheduledInstances $
--             describeScheduledInstances
--
--         , requestAssociateEnclaveCertificateIAMRole $
--             associateEnclaveCertificateIAMRole
--
--         , requestModifyTransitGatewayPrefixListReference $
--             modifyTransitGatewayPrefixListReference
--
--         , requestDescribeFpgaImageAttribute $
--             describeFpgaImageAttribute
--
--         , requestAdvertiseByoipCidr $
--             advertiseByoipCidr
--
--         , requestDeleteVPNConnectionRoute $
--             deleteVPNConnectionRoute
--
--         , requestDescribeVPCEndpointServicePermissions $
--             describeVPCEndpointServicePermissions
--
--         , requestDescribeVPCEndpointConnections $
--             describeVPCEndpointConnections
--
--         , requestDescribeNetworkInterfacePermissions $
--             describeNetworkInterfacePermissions
--
--         , requestCreateTrafficMirrorSession $
--             createTrafficMirrorSession
--
--         , requestRegisterInstanceEventNotificationAttributes $
--             registerInstanceEventNotificationAttributes
--
--         , requestRejectTransitGatewayMulticastDomainAssociations $
--             rejectTransitGatewayMulticastDomainAssociations
--
--         , requestDeleteDHCPOptions $
--             deleteDHCPOptions
--
--         , requestDeleteTransitGateway $
--             deleteTransitGateway
--
--         , requestEnableVPCClassicLinkDNSSupport $
--             enableVPCClassicLinkDNSSupport
--
--         , requestDescribeRegions $
--             describeRegions
--
--         , requestCreateEgressOnlyInternetGateway $
--             createEgressOnlyInternetGateway
--
--         , requestCreateTransitGateway $
--             createTransitGateway
--
--         , requestDeleteClientVPNEndpoint $
--             deleteClientVPNEndpoint
--
--         , requestExportClientVPNClientCertificateRevocationList $
--             exportClientVPNClientCertificateRevocationList
--
--         , requestCreateLaunchTemplateVersion $
--             createLaunchTemplateVersion
--
--         , requestCreateSnapshots $
--             createSnapshots
--
--         , requestModifyDefaultCreditSpecification $
--             modifyDefaultCreditSpecification
--
--         , requestApplySecurityGroupsToClientVPNTargetNetwork $
--             applySecurityGroupsToClientVPNTargetNetwork
--
--         , requestAttachVPNGateway $
--             attachVPNGateway
--
--         , requestCreateVPNConnectionRoute $
--             createVPNConnectionRoute
--
--         , requestDescribeKeyPairs $
--             describeKeyPairs
--
--         , requestAllocateAddress $
--             allocateAddress
--
--         , requestDeleteTrafficMirrorSession $
--             deleteTrafficMirrorSession
--
--         , requestGetManagedPrefixListEntries $
--             getManagedPrefixListEntries
--
--         , requestCreateFpgaImage $
--             createFpgaImage
--
--         , requestExportImage $
--             exportImage
--
--         , requestRejectTransitGatewayPeeringAttachment $
--             rejectTransitGatewayPeeringAttachment
--
--         , requestDescribeConversionTasks $
--             describeConversionTasks
--
--         , requestWithdrawByoipCidr $
--             withdrawByoipCidr
--
--         , requestDeleteTrafficMirrorFilterRule $
--             deleteTrafficMirrorFilterRule
--
--         , requestDescribeClassicLinkInstances $
--             describeClassicLinkInstances
--
--         , requestTerminateInstances $
--             terminateInstances
--
--         , requestAcceptTransitGatewayVPCAttachment $
--             acceptTransitGatewayVPCAttachment
--
--         , requestDisableVPCClassicLinkDNSSupport $
--             disableVPCClassicLinkDNSSupport
--
--         , requestGetLaunchTemplateData $
--             getLaunchTemplateData
--
--         , requestDescribeReservedInstances $
--             describeReservedInstances
--
--         , requestModifyFpgaImageAttribute $
--             modifyFpgaImageAttribute
--
--         , requestEnableVPCClassicLink $
--             enableVPCClassicLink
--
--         , requestAttachInternetGateway $
--             attachInternetGateway
--
--         , requestDescribePublicIPv4Pools $
--             describePublicIPv4Pools
--
--         , requestCreateCustomerGateway $
--             createCustomerGateway
--
--         , requestDescribeIAMInstanceProfileAssociations $
--             describeIAMInstanceProfileAssociations
--
--         , requestDescribeExportImageTasks $
--             describeExportImageTasks
--
--         , requestProvisionByoipCidr $
--             provisionByoipCidr
--
--         , requestCreateReservedInstancesListing $
--             createReservedInstancesListing
--
--         , requestDescribeClientVPNTargetNetworks $
--             describeClientVPNTargetNetworks
--
--         , requestModifyVPNTunnelOptions $
--             modifyVPNTunnelOptions
--
--         , requestModifyInstancePlacement $
--             modifyInstancePlacement
--
--         , requestImportKeyPair $
--             importKeyPair
--
--         , requestDescribeNetworkInsightsAnalyses $
--             describeNetworkInsightsAnalyses
--
--         , requestDeleteSecurityGroup $
--             deleteSecurityGroup
--
--         , requestCreateCarrierGateway $
--             createCarrierGateway
--
--         , requestCreateSnapshot $
--             createSnapshot
--
--         , requestModifyVolume $
--             modifyVolume
--
--         , requestDeleteNetworkInsightsAnalysis $
--             deleteNetworkInsightsAnalysis
--
--         , requestDescribeLocalGatewayRouteTableVPCAssociations $
--             describeLocalGatewayRouteTableVPCAssociations
--
--         , requestCreateTrafficMirrorFilter $
--             createTrafficMirrorFilter
--
--         , requestDeleteSpotDatafeedSubscription $
--             deleteSpotDatafeedSubscription
--
--         , requestDescribeInstanceAttribute $
--             describeInstanceAttribute
--
--         , requestCreateCapacityReservation $
--             createCapacityReservation
--
--         , requestDeleteTransitGatewayConnect $
--             deleteTransitGatewayConnect
--
--         , requestModifyEBSDefaultKMSKeyId $
--             modifyEBSDefaultKMSKeyId
--
--         , requestDeleteRoute $
--             deleteRoute
--
--         , requestDescribeNetworkInsightsPaths $
--             describeNetworkInsightsPaths
--
--         , requestPurchaseScheduledInstances $
--             purchaseScheduledInstances
--
--         , requestCreateTransitGatewayPeeringAttachment $
--             createTransitGatewayPeeringAttachment
--
--         , requestGetDefaultCreditSpecification $
--             getDefaultCreditSpecification
--
--         , requestDescribeInternetGateways $
--             describeInternetGateways
--
--         , requestModifyInstanceAttribute $
--             modifyInstanceAttribute
--
--         , requestCreateSecurityGroup $
--             createSecurityGroup
--
--         , requestCreateTransitGatewayConnect $
--             createTransitGatewayConnect
--
--         , requestReplaceNetworkACLAssociation $
--             replaceNetworkACLAssociation
--
--         , requestCreateRoute $
--             createRoute
--
--         , requestDeleteLaunchTemplateVersions $
--             deleteLaunchTemplateVersions
--
--         , requestDescribeIdentityIdFormat $
--             describeIdentityIdFormat
--
--         , requestDeleteTrafficMirrorFilter $
--             deleteTrafficMirrorFilter
--
--         , requestReplaceRoute $
--             replaceRoute
--
--         , requestResetSnapshotAttribute $
--             resetSnapshotAttribute
--
--         , requestResetEBSDefaultKMSKeyId $
--             resetEBSDefaultKMSKeyId
--
--         , requestCreateTags $
--             createTags
--
--         , requestBundleInstance $
--             bundleInstance
--
--         , requestDeleteTransitGatewayPeeringAttachment $
--             deleteTransitGatewayPeeringAttachment
--
--         , requestAuthorizeClientVPNIngress $
--             authorizeClientVPNIngress
--
--         , requestModifyLaunchTemplate $
--             modifyLaunchTemplate
--
--         , requestDeleteCustomerGateway $
--             deleteCustomerGateway
--
--         , requestTerminateClientVPNConnections $
--             terminateClientVPNConnections
--
--         , requestGetEBSEncryptionByDefault $
--             getEBSEncryptionByDefault
--
--         , requestCreateVPCPeeringConnection $
--             createVPCPeeringConnection
--
--         , requestDeleteTransitGatewayVPCAttachment $
--             deleteTransitGatewayVPCAttachment
--
--         , requestReplaceIAMInstanceProfileAssociation $
--             replaceIAMInstanceProfileAssociation
--
--         , requestDeleteTransitGatewayConnectPeer $
--             deleteTransitGatewayConnectPeer
--
--         , requestAssociateAddress $
--             associateAddress
--
--         , requestCancelSpotFleetRequests $
--             cancelSpotFleetRequests
--
--         , requestResetNetworkInterfaceAttribute $
--             resetNetworkInterfaceAttribute
--
--         , requestStartInstances $
--             startInstances
--
--         , requestDisassociateTransitGatewayRouteTable $
--             disassociateTransitGatewayRouteTable
--
--         , requestCopyFpgaImage $
--             copyFpgaImage
--
--         , requestReleaseHosts $
--             releaseHosts
--
--         , requestDescribeFastSnapshotRestores $
--             describeFastSnapshotRestores
--
--         , requestDescribeTrafficMirrorFilters $
--             describeTrafficMirrorFilters
--
--         , requestCreateTransitGatewayPrefixListReference $
--             createTransitGatewayPrefixListReference
--
--         , requestDeleteNetworkInterface $
--             deleteNetworkInterface
--
--         , requestCreateTransitGatewayRoute $
--             createTransitGatewayRoute
--
--         , requestDeregisterTransitGatewayMulticastGroupSources $
--             deregisterTransitGatewayMulticastGroupSources
--
--         , requestDisassociateVPCCidrBlock $
--             disassociateVPCCidrBlock
--
--         , requestDescribeTransitGatewayPeeringAttachments $
--             describeTransitGatewayPeeringAttachments
--
--         , requestGetCoipPoolUsage $
--             getCoipPoolUsage
--
--         , requestImportImage $
--             importImage
--
--         , requestReplaceTransitGatewayRoute $
--             replaceTransitGatewayRoute
--
--         , requestCreatePlacementGroup $
--             createPlacementGroup
--
--         , requestCreateDefaultVPC $
--             createDefaultVPC
--
--         , requestCreateNetworkInsightsPath $
--             createNetworkInsightsPath
--
--         , requestModifyTrafficMirrorSession $
--             modifyTrafficMirrorSession
--
--         , requestRunScheduledInstances $
--             runScheduledInstances
--
--         , requestDescribeDHCPOptions $
--             describeDHCPOptions
--
--         , requestDescribeCapacityReservations $
--             describeCapacityReservations
--
--         , requestDescribeCustomerGateways $
--             describeCustomerGateways
--
--         , requestDeleteNatGateway $
--             deleteNatGateway
--
--         , requestDescribeClientVPNAuthorizationRules $
--             describeClientVPNAuthorizationRules
--
--         , requestStopInstances $
--             stopInstances
--
--         , requestReplaceRouteTableAssociation $
--             replaceRouteTableAssociation
--
--         , requestDeleteTransitGatewayMulticastDomain $
--             deleteTransitGatewayMulticastDomain
--
--         , requestDeleteSubnet $
--             deleteSubnet
--
--           ]

--     , testGroup "response"
--         [ responseAcceptReservedInstancesExchangeQuote $
--             acceptReservedInstancesExchangeQuoteResponse
--
--         , responseDescribeInstanceCreditSpecifications $
--             describeInstanceCreditSpecificationsResponse
--
--         , responseDescribeByoipCidrs $
--             describeByoipCidrsResponse
--
--         , responseDescribeLocalGatewayVirtualInterfaces $
--             describeLocalGatewayVirtualInterfacesResponse
--
--         , responseDeleteLocalGatewayRouteTableVPCAssociation $
--             deleteLocalGatewayRouteTableVPCAssociationResponse
--
--         , responseDetachVolume $
--             volumeAttachment
--
--         , responseCreateTransitGatewayVPCAttachment $
--             createTransitGatewayVPCAttachmentResponse
--
--         , responseDeleteVPCEndpointConnectionNotifications $
--             deleteVPCEndpointConnectionNotificationsResponse
--
--         , responseDeleteNetworkInsightsPath $
--             deleteNetworkInsightsPathResponse
--
--         , responseAuthorizeSecurityGroupEgress $
--             authorizeSecurityGroupEgressResponse
--
--         , responseModifyManagedPrefixList $
--             modifyManagedPrefixListResponse
--
--         , responseDeleteTransitGatewayPrefixListReference $
--             deleteTransitGatewayPrefixListReferenceResponse
--
--         , responseDeleteTransitGatewayRoute $
--             deleteTransitGatewayRouteResponse
--
--         , responseDescribeVPCPeeringConnections $
--             describeVPCPeeringConnectionsResponse
--
--         , responseDescribeInstances $
--             describeInstancesResponse
--
--         , responseDeregisterInstanceEventNotificationAttributes $
--             deregisterInstanceEventNotificationAttributesResponse
--
--         , responseCreateTransitGatewayMulticastDomain $
--             createTransitGatewayMulticastDomainResponse
--
--         , responseAssociateTransitGatewayMulticastDomain $
--             associateTransitGatewayMulticastDomainResponse
--
--         , responseReleaseAddress $
--             releaseAddressResponse
--
--         , responseDeregisterTransitGatewayMulticastGroupMembers $
--             deregisterTransitGatewayMulticastGroupMembersResponse
--
--         , responseGetHostReservationPurchasePreview $
--             getHostReservationPurchasePreviewResponse
--
--         , responseCancelBundleTask $
--             cancelBundleTaskResponse
--
--         , responseGetCapacityReservationUsage $
--             getCapacityReservationUsageResponse
--
--         , responseCreateTransitGatewayConnectPeer $
--             createTransitGatewayConnectPeerResponse
--
--         , responseModifyVPCTenancy $
--             modifyVPCTenancyResponse
--
--         , responseCreateVPCEndpointServiceConfiguration $
--             createVPCEndpointServiceConfigurationResponse
--
--         , responseDescribeExportTasks $
--             describeExportTasksResponse
--
--         , responseGetTransitGatewayMulticastDomainAssociations $
--             getTransitGatewayMulticastDomainAssociationsResponse
--
--         , responseDisableEBSEncryptionByDefault $
--             disableEBSEncryptionByDefaultResponse
--
--         , responseAssociateVPCCidrBlock $
--             associateVPCCidrBlockResponse
--
--         , responseCreateNetworkACL $
--             createNetworkACLResponse
--
--         , responseAcceptTransitGatewayPeeringAttachment $
--             acceptTransitGatewayPeeringAttachmentResponse
--
--         , responseDeleteLaunchTemplate $
--             deleteLaunchTemplateResponse
--
--         , responseDeleteVPC $
--             deleteVPCResponse
--
--         , responseDeleteFleets $
--             deleteFleetsResponse
--
--         , responseGetAssociatedIPv6PoolCidrs $
--             getAssociatedIPv6PoolCidrsResponse
--
--         , responseDescribeTrafficMirrorSessions $
--             describeTrafficMirrorSessionsResponse
--
--         , responseImportInstance $
--             importInstanceResponse
--
--         , responseDescribeLocalGatewayRouteTables $
--             describeLocalGatewayRouteTablesResponse
--
--         , responseCreateNetworkInterfacePermission $
--             createNetworkInterfacePermissionResponse
--
--         , responseCreateVPNGateway $
--             createVPNGatewayResponse
--
--         , responseGetTransitGatewayRouteTableAssociations $
--             getTransitGatewayRouteTableAssociationsResponse
--
--         , responseRejectTransitGatewayVPCAttachment $
--             rejectTransitGatewayVPCAttachmentResponse
--
--         , responseModifyVolumeAttribute $
--             modifyVolumeAttributeResponse
--
--         , responseDescribePrefixLists $
--             describePrefixListsResponse
--
--         , responseDetachNetworkInterface $
--             detachNetworkInterfaceResponse
--
--         , responseDeleteVPCEndpoints $
--             deleteVPCEndpointsResponse
--
--         , responseDescribeVPCClassicLink $
--             describeVPCClassicLinkResponse
--
--         , responseUpdateSecurityGroupRuleDescriptionsIngress $
--             updateSecurityGroupRuleDescriptionsIngressResponse
--
--         , responseDescribeClientVPNEndpoints $
--             describeClientVPNEndpointsResponse
--
--         , responseDisassociateAddress $
--             disassociateAddressResponse
--
--         , responseDescribeScheduledInstanceAvailability $
--             describeScheduledInstanceAvailabilityResponse
--
--         , responseRejectVPCEndpointConnections $
--             rejectVPCEndpointConnectionsResponse
--
--         , responseCreateTransitGatewayRouteTable $
--             createTransitGatewayRouteTableResponse
--
--         , responseDescribeTags $
--             describeTagsResponse
--
--         , responseAssociateTransitGatewayRouteTable $
--             associateTransitGatewayRouteTableResponse
--
--         , responseDeleteFlowLogs $
--             deleteFlowLogsResponse
--
--         , responseCreateDefaultSubnet $
--             createDefaultSubnetResponse
--
--         , responseDeleteTrafficMirrorTarget $
--             deleteTrafficMirrorTargetResponse
--
--         , responseAcceptTransitGatewayMulticastDomainAssociations $
--             acceptTransitGatewayMulticastDomainAssociationsResponse
--
--         , responseDescribeLaunchTemplateVersions $
--             describeLaunchTemplateVersionsResponse
--
--         , responseDescribeAvailabilityZones $
--             describeAvailabilityZonesResponse
--
--         , responseGetReservedInstancesExchangeQuote $
--             getReservedInstancesExchangeQuoteResponse
--
--         , responseDeleteVPNGateway $
--             deleteVPNGatewayResponse
--
--         , responseCreateKeyPair $
--             createKeyPairResponse
--
--         , responseExportTransitGatewayRoutes $
--             exportTransitGatewayRoutesResponse
--
--         , responseCopySnapshot $
--             copySnapshotResponse
--
--         , responseDescribeElasticGpus $
--             describeElasticGpusResponse
--
--         , responseStartNetworkInsightsAnalysis $
--             startNetworkInsightsAnalysisResponse
--
--         , responseDescribeFpgaImages $
--             describeFpgaImagesResponse
--
--         , responseCreateFlowLogs $
--             createFlowLogsResponse
--
--         , responseCreateLaunchTemplate $
--             createLaunchTemplateResponse
--
--         , responseDescribeImportImageTasks $
--             describeImportImageTasksResponse
--
--         , responseDeleteTransitGatewayRouteTable $
--             deleteTransitGatewayRouteTableResponse
--
--         , responseDeleteNetworkACL $
--             deleteNetworkACLResponse
--
--         , responseMoveAddressToVPC $
--             moveAddressToVPCResponse
--
--         , responseDescribeFleetInstances $
--             describeFleetInstancesResponse
--
--         , responseRestoreAddressToClassic $
--             restoreAddressToClassicResponse
--
--         , responseDeleteNetworkInterfacePermission $
--             deleteNetworkInterfacePermissionResponse
--
--         , responseDescribeRouteTables $
--             describeRouteTablesResponse
--
--         , responseUpdateSecurityGroupRuleDescriptionsEgress $
--             updateSecurityGroupRuleDescriptionsEgressResponse
--
--         , responseResetFpgaImageAttribute $
--             resetFpgaImageAttributeResponse
--
--         , responseStartVPCEndpointServicePrivateDNSVerification $
--             startVPCEndpointServicePrivateDNSVerificationResponse
--
--         , responseDescribeVolumes $
--             describeVolumesResponse
--
--         , responseCreateClientVPNEndpoint $
--             createClientVPNEndpointResponse
--
--         , responseRevokeClientVPNIngress $
--             revokeClientVPNIngressResponse
--
--         , responseDeleteFpgaImage $
--             deleteFpgaImageResponse
--
--         , responseModifyVPCEndpoint $
--             modifyVPCEndpointResponse
--
--         , responseDescribeReservedInstancesModifications $
--             describeReservedInstancesModificationsResponse
--
--         , responseDescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations $
--             describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResponse
--
--         , responseEnableFastSnapshotRestores $
--             enableFastSnapshotRestoresResponse
--
--         , responseDescribeClientVPNRoutes $
--             describeClientVPNRoutesResponse
--
--         , responseGetEBSDefaultKMSKeyId $
--             getEBSDefaultKMSKeyIdResponse
--
--         , responseModifyIdFormat $
--             modifyIdFormatResponse
--
--         , responseDetachClassicLinkVPC $
--             detachClassicLinkVPCResponse
--
--         , responseUnassignPrivateIPAddresses $
--             unassignPrivateIPAddressesResponse
--
--         , responseAllocateHosts $
--             allocateHostsResponse
--
--         , responseGetConsoleOutput $
--             getConsoleOutputResponse
--
--         , responseModifyVPNConnectionOptions $
--             modifyVPNConnectionOptionsResponse
--
--         , responseCancelImportTask $
--             cancelImportTaskResponse
--
--         , responseRegisterImage $
--             registerImageResponse
--
--         , responseModifyFleet $
--             modifyFleetResponse
--
--         , responseDeleteRouteTable $
--             deleteRouteTableResponse
--
--         , responseModifyReservedInstances $
--             modifyReservedInstancesResponse
--
--         , responseDescribeImageAttribute $
--             describeImageAttributeResponse
--
--         , responseCreateTrafficMirrorFilterRule $
--             createTrafficMirrorFilterRuleResponse
--
--         , responseMonitorInstances $
--             monitorInstancesResponse
--
--         , responseModifyVPNConnection $
--             modifyVPNConnectionResponse
--
--         , responseDescribeSpotInstanceRequests $
--             describeSpotInstanceRequestsResponse
--
--         , responseCancelConversionTask $
--             cancelConversionTaskResponse
--
--         , responseModifyVPCEndpointServiceConfiguration $
--             modifyVPCEndpointServiceConfigurationResponse
--
--         , responseModifyTransitGatewayVPCAttachment $
--             modifyTransitGatewayVPCAttachmentResponse
--
--         , responseAssociateRouteTable $
--             associateRouteTableResponse
--
--         , responseDescribeAccountAttributes $
--             describeAccountAttributesResponse
--
--         , responseDescribeLaunchTemplates $
--             describeLaunchTemplatesResponse
--
--         , responseDescribeIPv6Pools $
--             describeIPv6PoolsResponse
--
--         , responseDescribeLocalGateways $
--             describeLocalGatewaysResponse
--
--         , responsePurchaseHostReservation $
--             purchaseHostReservationResponse
--
--         , responseReportInstanceStatus $
--             reportInstanceStatusResponse
--
--         , responseModifyVPCEndpointServicePermissions $
--             modifyVPCEndpointServicePermissionsResponse
--
--         , responseModifyHosts $
--             modifyHostsResponse
--
--         , responseUnassignIPv6Addresses $
--             unassignIPv6AddressesResponse
--
--         , responseGetManagedPrefixListAssociations $
--             getManagedPrefixListAssociationsResponse
--
--         , responseDisableFastSnapshotRestores $
--             disableFastSnapshotRestoresResponse
--
--         , responseDeleteEgressOnlyInternetGateway $
--             deleteEgressOnlyInternetGatewayResponse
--
--         , responseRequestSpotInstances $
--             requestSpotInstancesResponse
--
--         , responseRunInstances $
--             reservation
--
--         , responseGetTransitGatewayRouteTablePropagations $
--             getTransitGatewayRouteTablePropagationsResponse
--
--         , responseAttachVolume $
--             volumeAttachment
--
--         , responseAcceptVPCEndpointConnections $
--             acceptVPCEndpointConnectionsResponse
--
--         , responseCreateDHCPOptions $
--             createDHCPOptionsResponse
--
--         , responseRebootInstances $
--             rebootInstancesResponse
--
--         , responseModifyImageAttribute $
--             modifyImageAttributeResponse
--
--         , responseCreateManagedPrefixList $
--             createManagedPrefixListResponse
--
--         , responseSearchTransitGatewayRoutes $
--             searchTransitGatewayRoutesResponse
--
--         , responseDescribeIdFormat $
--             describeIdFormatResponse
--
--         , responseRegisterTransitGatewayMulticastGroupSources $
--             registerTransitGatewayMulticastGroupSourcesResponse
--
--         , responseDescribeVPCEndpointConnectionNotifications $
--             describeVPCEndpointConnectionNotificationsResponse
--
--         , responseDescribeVPCs $
--             describeVPCsResponse
--
--         , responseGetTransitGatewayPrefixListReferences $
--             getTransitGatewayPrefixListReferencesResponse
--
--         , responseCreateRouteTable $
--             createRouteTableResponse
--
--         , responseDescribeVolumesModifications $
--             describeVolumesModificationsResponse
--
--         , responseAssociateIAMInstanceProfile $
--             associateIAMInstanceProfileResponse
--
--         , responseCreateImage $
--             createImageResponse
--
--         , responseDescribeTrafficMirrorTargets $
--             describeTrafficMirrorTargetsResponse
--
--         , responseAssociateDHCPOptions $
--             associateDHCPOptionsResponse
--
--         , responseDescribeSpotFleetRequestHistory $
--             describeSpotFleetRequestHistoryResponse
--
--         , responseModifyInstanceEventStartTime $
--             modifyInstanceEventStartTimeResponse
--
--         , responseDisassociateEnclaveCertificateIAMRole $
--             disassociateEnclaveCertificateIAMRoleResponse
--
--         , responseDeleteVPCPeeringConnection $
--             deleteVPCPeeringConnectionResponse
--
--         , responseResetInstanceAttribute $
--             resetInstanceAttributeResponse
--
--         , responseDescribeInstanceStatus $
--             describeInstanceStatusResponse
--
--         , responseAttachNetworkInterface $
--             attachNetworkInterfaceResponse
--
--         , responseAssignIPv6Addresses $
--             assignIPv6AddressesResponse
--
--         , responseCreateLocalGatewayRoute $
--             createLocalGatewayRouteResponse
--
--         , responseEnableVGWRoutePropagation $
--             enableVGWRoutePropagationResponse
--
--         , responseDescribeVPCEndpoints $
--             describeVPCEndpointsResponse
--
--         , responseCreateNetworkACLEntry $
--             createNetworkACLEntryResponse
--
--         , responseDescribeStaleSecurityGroups $
--             describeStaleSecurityGroupsResponse
--
--         , responseDescribeFlowLogs $
--             describeFlowLogsResponse
--
--         , responseDescribePlacementGroups $
--             describePlacementGroupsResponse
--
--         , responseDescribeFleets $
--             describeFleetsResponse
--
--         , responseModifyIdentityIdFormat $
--             modifyIdentityIdFormatResponse
--
--         , responseDescribeLocalGatewayVirtualInterfaceGroups $
--             describeLocalGatewayVirtualInterfaceGroupsResponse
--
--         , responseReplaceNetworkACLEntry $
--             replaceNetworkACLEntryResponse
--
--         , responseDeleteTags $
--             deleteTagsResponse
--
--         , responseDescribeTransitGatewayAttachments $
--             describeTransitGatewayAttachmentsResponse
--
--         , responseDescribeReservedInstancesOfferings $
--             describeReservedInstancesOfferingsResponse
--
--         , responseModifySnapshotAttribute $
--             modifySnapshotAttributeResponse
--
--         , responseConfirmProductInstance $
--             confirmProductInstanceResponse
--
--         , responseDescribeVPNConnections $
--             describeVPNConnectionsResponse
--
--         , responseModifyAvailabilityZoneGroup $
--             modifyAvailabilityZoneGroupResponse
--
--         , responseDisassociateIAMInstanceProfile $
--             disassociateIAMInstanceProfileResponse
--
--         , responseDisableVPCClassicLink $
--             disableVPCClassicLinkResponse
--
--         , responseGetGroupsForCapacityReservation $
--             getGroupsForCapacityReservationResponse
--
--         , responseImportVolume $
--             importVolumeResponse
--
--         , responseDescribeAddresses $
--             describeAddressesResponse
--
--         , responseDeleteLocalGatewayRoute $
--             deleteLocalGatewayRouteResponse
--
--         , responseDescribeVPCEndpointServiceConfigurations $
--             describeVPCEndpointServiceConfigurationsResponse
--
--         , responseDescribeNetworkInterfaces $
--             describeNetworkInterfacesResponse
--
--         , responseDescribeVPCEndpointServices $
--             describeVPCEndpointServicesResponse
--
--         , responseDeleteNetworkACLEntry $
--             deleteNetworkACLEntryResponse
--
--         , responseGetTransitGatewayAttachmentPropagations $
--             getTransitGatewayAttachmentPropagationsResponse
--
--         , responseAssignPrivateIPAddresses $
--             assignPrivateIPAddressesResponse
--
--         , responseDescribeNatGateways $
--             describeNatGatewaysResponse
--
--         , responseDescribeSnapshotAttribute $
--             describeSnapshotAttributeResponse
--
--         , responseDeleteSnapshot $
--             deleteSnapshotResponse
--
--         , responseDeleteCarrierGateway $
--             deleteCarrierGatewayResponse
--
--         , responseDescribeTransitGatewayVPCAttachments $
--             describeTransitGatewayVPCAttachmentsResponse
--
--         , responseModifyVPCEndpointConnectionNotification $
--             modifyVPCEndpointConnectionNotificationResponse
--
--         , responsePurchaseReservedInstancesOffering $
--             purchaseReservedInstancesOfferingResponse
--
--         , responseAuthorizeSecurityGroupIngress $
--             authorizeSecurityGroupIngressResponse
--
--         , responseGetConsoleScreenshot $
--             getConsoleScreenshotResponse
--
--         , responseDisableVGWRoutePropagation $
--             disableVGWRoutePropagationResponse
--
--         , responseDescribeTransitGatewayMulticastDomains $
--             describeTransitGatewayMulticastDomainsResponse
--
--         , responseDescribeSubnets $
--             describeSubnetsResponse
--
--         , responseUnmonitorInstances $
--             unmonitorInstancesResponse
--
--         , responseCancelSpotInstanceRequests $
--             cancelSpotInstanceRequestsResponse
--
--         , responseCreateSpotDatafeedSubscription $
--             createSpotDatafeedSubscriptionResponse
--
--         , responseDisassociateRouteTable $
--             disassociateRouteTableResponse
--
--         , responseDescribeTransitGatewayConnectPeers $
--             describeTransitGatewayConnectPeersResponse
--
--         , responseModifyVPNTunnelCertificate $
--             modifyVPNTunnelCertificateResponse
--
--         , responseRestoreManagedPrefixListVersion $
--             restoreManagedPrefixListVersionResponse
--
--         , responseModifyAddressAttribute $
--             modifyAddressAttributeResponse
--
--         , responseCreateVPNConnection $
--             createVPNConnectionResponse
--
--         , responseAssociateSubnetCidrBlock $
--             associateSubnetCidrBlockResponse
--
--         , responseAttachClassicLinkVPC $
--             attachClassicLinkVPCResponse
--
--         , responseDescribeSpotPriceHistory $
--             describeSpotPriceHistoryResponse
--
--         , responseDeleteQueuedReservedInstances $
--             deleteQueuedReservedInstancesResponse
--
--         , responseDescribeAggregateIdFormat $
--             describeAggregateIdFormatResponse
--
--         , responseDescribeReservedInstancesListings $
--             describeReservedInstancesListingsResponse
--
--         , responseCopyImage $
--             copyImageResponse
--
--         , responseCreateLocalGatewayRouteTableVPCAssociation $
--             createLocalGatewayRouteTableVPCAssociationResponse
--
--         , responseDescribeCarrierGateways $
--             describeCarrierGatewaysResponse
--
--         , responseDeleteInternetGateway $
--             deleteInternetGatewayResponse
--
--         , responseCreateFleet $
--             createFleetResponse
--
--         , responseModifyClientVPNEndpoint $
--             modifyClientVPNEndpointResponse
--
--         , responseModifyInstanceCapacityReservationAttributes $
--             modifyInstanceCapacityReservationAttributesResponse
--
--         , responseImportClientVPNClientCertificateRevocationList $
--             importClientVPNClientCertificateRevocationListResponse
--
--         , responseAssociateClientVPNTargetNetwork $
--             associateClientVPNTargetNetworkResponse
--
--         , responseCancelCapacityReservation $
--             cancelCapacityReservationResponse
--
--         , responseCancelReservedInstancesListing $
--             cancelReservedInstancesListingResponse
--
--         , responseDisableTransitGatewayRouteTablePropagation $
--             disableTransitGatewayRouteTablePropagationResponse
--
--         , responseDescribeVPCClassicLinkDNSSupport $
--             describeVPCClassicLinkDNSSupportResponse
--
--         , responseCreateVPCEndpoint $
--             createVPCEndpointResponse
--
--         , responseDescribeSnapshots $
--             describeSnapshotsResponse
--
--         , responseDescribeImportSnapshotTasks $
--             describeImportSnapshotTasksResponse
--
--         , responseDescribeNetworkInterfaceAttribute $
--             describeNetworkInterfaceAttributeResponse
--
--         , responseDescribeInstanceEventNotificationAttributes $
--             describeInstanceEventNotificationAttributesResponse
--
--         , responseEnableEBSEncryptionByDefault $
--             enableEBSEncryptionByDefaultResponse
--
--         , responseModifyTrafficMirrorFilterRule $
--             modifyTrafficMirrorFilterRuleResponse
--
--         , responseDescribeCoipPools $
--             describeCoipPoolsResponse
--
--         , responseCancelExportTask $
--             cancelExportTaskResponse
--
--         , responseEnableVolumeIO $
--             enableVolumeIOResponse
--
--         , responseModifyTransitGateway $
--             modifyTransitGatewayResponse
--
--         , responseDescribeInstanceTypeOfferings $
--             describeInstanceTypeOfferingsResponse
--
--         , responseCreateSubnet $
--             createSubnetResponse
--
--         , responseRequestSpotFleet $
--             requestSpotFleetResponse
--
--         , responseDeleteVPNConnection $
--             deleteVPNConnectionResponse
--
--         , responseModifySpotFleetRequest $
--             modifySpotFleetRequestResponse
--
--         , responseDeregisterImage $
--             deregisterImageResponse
--
--         , responseDetachVPNGateway $
--             detachVPNGatewayResponse
--
--         , responseCreateNetworkInterface $
--             createNetworkInterfaceResponse
--
--         , responseModifyNetworkInterfaceAttribute $
--             modifyNetworkInterfaceAttributeResponse
--
--         , responseCreateNatGateway $
--             createNatGatewayResponse
--
--         , responseGetAssociatedEnclaveCertificateIAMRoles $
--             getAssociatedEnclaveCertificateIAMRolesResponse
--
--         , responseCreateInternetGateway $
--             createInternetGatewayResponse
--
--         , responseEnableTransitGatewayRouteTablePropagation $
--             enableTransitGatewayRouteTablePropagationResponse
--
--         , responseResetAddressAttribute $
--             resetAddressAttributeResponse
--
--         , responseDescribeTransitGatewayConnects $
--             describeTransitGatewayConnectsResponse
--
--         , responseDeletePlacementGroup $
--             deletePlacementGroupResponse
--
--         , responseDescribeInstanceTypes $
--             describeInstanceTypesResponse
--
--         , responseDescribeBundleTasks $
--             describeBundleTasksResponse
--
--         , responseModifySubnetAttribute $
--             modifySubnetAttributeResponse
--
--         , responseDescribeSecurityGroups $
--             describeSecurityGroupsResponse
--
--         , responseCreateClientVPNRoute $
--             createClientVPNRouteResponse
--
--         , responseDisassociateSubnetCidrBlock $
--             disassociateSubnetCidrBlockResponse
--
--         , responseDescribeSpotDatafeedSubscription $
--             describeSpotDatafeedSubscriptionResponse
--
--         , responseCreateInstanceExportTask $
--             createInstanceExportTaskResponse
--
--         , responseDisassociateClientVPNTargetNetwork $
--             disassociateClientVPNTargetNetworkResponse
--
--         , responseSendDiagnosticInterrupt $
--             sendDiagnosticInterruptResponse
--
--         , responseDescribeVPCAttribute $
--             describeVPCAttributeResponse
--
--         , responseDescribeSecurityGroupReferences $
--             describeSecurityGroupReferencesResponse
--
--         , responseModifyCapacityReservation $
--             modifyCapacityReservationResponse
--
--         , responseDetachInternetGateway $
--             detachInternetGatewayResponse
--
--         , responseCreateVolume $
--             volume
--
--         , responseExportClientVPNClientConfiguration $
--             exportClientVPNClientConfigurationResponse
--
--         , responseRevokeSecurityGroupEgress $
--             revokeSecurityGroupEgressResponse
--
--         , responseDeleteKeyPair $
--             deleteKeyPairResponse
--
--         , responseModifyInstanceMetadataOptions $
--             modifyInstanceMetadataOptionsResponse
--
--         , responseDescribeEgressOnlyInternetGateways $
--             describeEgressOnlyInternetGatewaysResponse
--
--         , responseModifyTrafficMirrorFilterNetworkServices $
--             modifyTrafficMirrorFilterNetworkServicesResponse
--
--         , responseImportSnapshot $
--             importSnapshotResponse
--
--         , responseDescribeImages $
--             describeImagesResponse
--
--         , responseDeprovisionByoipCidr $
--             deprovisionByoipCidrResponse
--
--         , responseDescribeAddressesAttribute $
--             describeAddressesAttributeResponse
--
--         , responseAcceptVPCPeeringConnection $
--             acceptVPCPeeringConnectionResponse
--
--         , responseDescribeMovingAddresses $
--             describeMovingAddressesResponse
--
--         , responseCreateVPCEndpointConnectionNotification $
--             createVPCEndpointConnectionNotificationResponse
--
--         , responseDescribeFleetHistory $
--             describeFleetHistoryResponse
--
--         , responseDeleteVPCEndpointServiceConfigurations $
--             deleteVPCEndpointServiceConfigurationsResponse
--
--         , responseCreateVPC $
--             createVPCResponse
--
--         , responseSearchLocalGatewayRoutes $
--             searchLocalGatewayRoutesResponse
--
--         , responseCreateTrafficMirrorTarget $
--             createTrafficMirrorTargetResponse
--
--         , responseDescribeVolumeStatus $
--             describeVolumeStatusResponse
--
--         , responseDescribeVolumeAttribute $
--             describeVolumeAttributeResponse
--
--         , responseDeleteClientVPNRoute $
--             deleteClientVPNRouteResponse
--
--         , responseModifyVPCPeeringConnectionOptions $
--             modifyVPCPeeringConnectionOptionsResponse
--
--         , responseDescribeSpotFleetInstances $
--             describeSpotFleetInstancesResponse
--
--         , responseDescribePrincipalIdFormat $
--             describePrincipalIdFormatResponse
--
--         , responseModifyInstanceCreditSpecification $
--             modifyInstanceCreditSpecificationResponse
--
--         , responseDisassociateTransitGatewayMulticastDomain $
--             disassociateTransitGatewayMulticastDomainResponse
--
--         , responseDescribeManagedPrefixLists $
--             describeManagedPrefixListsResponse
--
--         , responseGetPasswordData $
--             getPasswordDataResponse
--
--         , responseDeleteVolume $
--             deleteVolumeResponse
--
--         , responseDescribeTransitGateways $
--             describeTransitGatewaysResponse
--
--         , responseDescribeSpotFleetRequests $
--             describeSpotFleetRequestsResponse
--
--         , responseDescribeClientVPNConnections $
--             describeClientVPNConnectionsResponse
--
--         , responseSearchTransitGatewayMulticastGroups $
--             searchTransitGatewayMulticastGroupsResponse
--
--         , responseModifyVPCAttribute $
--             modifyVPCAttributeResponse
--
--         , responseRevokeSecurityGroupIngress $
--             revokeSecurityGroupIngressResponse
--
--         , responseDescribeHostReservationOfferings $
--             describeHostReservationOfferingsResponse
--
--         , responseDescribeTransitGatewayRouteTables $
--             describeTransitGatewayRouteTablesResponse
--
--         , responseDescribeNetworkACLs $
--             describeNetworkACLsResponse
--
--         , responseRegisterTransitGatewayMulticastGroupMembers $
--             registerTransitGatewayMulticastGroupMembersResponse
--
--         , responseDescribeHosts $
--             describeHostsResponse
--
--         , responseDescribeVPNGateways $
--             describeVPNGatewaysResponse
--
--         , responseDescribeHostReservations $
--             describeHostReservationsResponse
--
--         , responseDeleteManagedPrefixList $
--             deleteManagedPrefixListResponse
--
--         , responseRejectVPCPeeringConnection $
--             rejectVPCPeeringConnectionResponse
--
--         , responseResetImageAttribute $
--             resetImageAttributeResponse
--
--         , responseDescribeScheduledInstances $
--             describeScheduledInstancesResponse
--
--         , responseAssociateEnclaveCertificateIAMRole $
--             associateEnclaveCertificateIAMRoleResponse
--
--         , responseModifyTransitGatewayPrefixListReference $
--             modifyTransitGatewayPrefixListReferenceResponse
--
--         , responseDescribeFpgaImageAttribute $
--             describeFpgaImageAttributeResponse
--
--         , responseAdvertiseByoipCidr $
--             advertiseByoipCidrResponse
--
--         , responseDeleteVPNConnectionRoute $
--             deleteVPNConnectionRouteResponse
--
--         , responseDescribeVPCEndpointServicePermissions $
--             describeVPCEndpointServicePermissionsResponse
--
--         , responseDescribeVPCEndpointConnections $
--             describeVPCEndpointConnectionsResponse
--
--         , responseDescribeNetworkInterfacePermissions $
--             describeNetworkInterfacePermissionsResponse
--
--         , responseCreateTrafficMirrorSession $
--             createTrafficMirrorSessionResponse
--
--         , responseRegisterInstanceEventNotificationAttributes $
--             registerInstanceEventNotificationAttributesResponse
--
--         , responseRejectTransitGatewayMulticastDomainAssociations $
--             rejectTransitGatewayMulticastDomainAssociationsResponse
--
--         , responseDeleteDHCPOptions $
--             deleteDHCPOptionsResponse
--
--         , responseDeleteTransitGateway $
--             deleteTransitGatewayResponse
--
--         , responseEnableVPCClassicLinkDNSSupport $
--             enableVPCClassicLinkDNSSupportResponse
--
--         , responseDescribeRegions $
--             describeRegionsResponse
--
--         , responseCreateEgressOnlyInternetGateway $
--             createEgressOnlyInternetGatewayResponse
--
--         , responseCreateTransitGateway $
--             createTransitGatewayResponse
--
--         , responseDeleteClientVPNEndpoint $
--             deleteClientVPNEndpointResponse
--
--         , responseExportClientVPNClientCertificateRevocationList $
--             exportClientVPNClientCertificateRevocationListResponse
--
--         , responseCreateLaunchTemplateVersion $
--             createLaunchTemplateVersionResponse
--
--         , responseCreateSnapshots $
--             createSnapshotsResponse
--
--         , responseModifyDefaultCreditSpecification $
--             modifyDefaultCreditSpecificationResponse
--
--         , responseApplySecurityGroupsToClientVPNTargetNetwork $
--             applySecurityGroupsToClientVPNTargetNetworkResponse
--
--         , responseAttachVPNGateway $
--             attachVPNGatewayResponse
--
--         , responseCreateVPNConnectionRoute $
--             createVPNConnectionRouteResponse
--
--         , responseDescribeKeyPairs $
--             describeKeyPairsResponse
--
--         , responseAllocateAddress $
--             allocateAddressResponse
--
--         , responseDeleteTrafficMirrorSession $
--             deleteTrafficMirrorSessionResponse
--
--         , responseGetManagedPrefixListEntries $
--             getManagedPrefixListEntriesResponse
--
--         , responseCreateFpgaImage $
--             createFpgaImageResponse
--
--         , responseExportImage $
--             exportImageResponse
--
--         , responseRejectTransitGatewayPeeringAttachment $
--             rejectTransitGatewayPeeringAttachmentResponse
--
--         , responseDescribeConversionTasks $
--             describeConversionTasksResponse
--
--         , responseWithdrawByoipCidr $
--             withdrawByoipCidrResponse
--
--         , responseDeleteTrafficMirrorFilterRule $
--             deleteTrafficMirrorFilterRuleResponse
--
--         , responseDescribeClassicLinkInstances $
--             describeClassicLinkInstancesResponse
--
--         , responseTerminateInstances $
--             terminateInstancesResponse
--
--         , responseAcceptTransitGatewayVPCAttachment $
--             acceptTransitGatewayVPCAttachmentResponse
--
--         , responseDisableVPCClassicLinkDNSSupport $
--             disableVPCClassicLinkDNSSupportResponse
--
--         , responseGetLaunchTemplateData $
--             getLaunchTemplateDataResponse
--
--         , responseDescribeReservedInstances $
--             describeReservedInstancesResponse
--
--         , responseModifyFpgaImageAttribute $
--             modifyFpgaImageAttributeResponse
--
--         , responseEnableVPCClassicLink $
--             enableVPCClassicLinkResponse
--
--         , responseAttachInternetGateway $
--             attachInternetGatewayResponse
--
--         , responseDescribePublicIPv4Pools $
--             describePublicIPv4PoolsResponse
--
--         , responseCreateCustomerGateway $
--             createCustomerGatewayResponse
--
--         , responseDescribeIAMInstanceProfileAssociations $
--             describeIAMInstanceProfileAssociationsResponse
--
--         , responseDescribeExportImageTasks $
--             describeExportImageTasksResponse
--
--         , responseProvisionByoipCidr $
--             provisionByoipCidrResponse
--
--         , responseCreateReservedInstancesListing $
--             createReservedInstancesListingResponse
--
--         , responseDescribeClientVPNTargetNetworks $
--             describeClientVPNTargetNetworksResponse
--
--         , responseModifyVPNTunnelOptions $
--             modifyVPNTunnelOptionsResponse
--
--         , responseModifyInstancePlacement $
--             modifyInstancePlacementResponse
--
--         , responseImportKeyPair $
--             importKeyPairResponse
--
--         , responseDescribeNetworkInsightsAnalyses $
--             describeNetworkInsightsAnalysesResponse
--
--         , responseDeleteSecurityGroup $
--             deleteSecurityGroupResponse
--
--         , responseCreateCarrierGateway $
--             createCarrierGatewayResponse
--
--         , responseCreateSnapshot $
--             snapshot
--
--         , responseModifyVolume $
--             modifyVolumeResponse
--
--         , responseDeleteNetworkInsightsAnalysis $
--             deleteNetworkInsightsAnalysisResponse
--
--         , responseDescribeLocalGatewayRouteTableVPCAssociations $
--             describeLocalGatewayRouteTableVPCAssociationsResponse
--
--         , responseCreateTrafficMirrorFilter $
--             createTrafficMirrorFilterResponse
--
--         , responseDeleteSpotDatafeedSubscription $
--             deleteSpotDatafeedSubscriptionResponse
--
--         , responseDescribeInstanceAttribute $
--             describeInstanceAttributeResponse
--
--         , responseCreateCapacityReservation $
--             createCapacityReservationResponse
--
--         , responseDeleteTransitGatewayConnect $
--             deleteTransitGatewayConnectResponse
--
--         , responseModifyEBSDefaultKMSKeyId $
--             modifyEBSDefaultKMSKeyIdResponse
--
--         , responseDeleteRoute $
--             deleteRouteResponse
--
--         , responseDescribeNetworkInsightsPaths $
--             describeNetworkInsightsPathsResponse
--
--         , responsePurchaseScheduledInstances $
--             purchaseScheduledInstancesResponse
--
--         , responseCreateTransitGatewayPeeringAttachment $
--             createTransitGatewayPeeringAttachmentResponse
--
--         , responseGetDefaultCreditSpecification $
--             getDefaultCreditSpecificationResponse
--
--         , responseDescribeInternetGateways $
--             describeInternetGatewaysResponse
--
--         , responseModifyInstanceAttribute $
--             modifyInstanceAttributeResponse
--
--         , responseCreateSecurityGroup $
--             createSecurityGroupResponse
--
--         , responseCreateTransitGatewayConnect $
--             createTransitGatewayConnectResponse
--
--         , responseReplaceNetworkACLAssociation $
--             replaceNetworkACLAssociationResponse
--
--         , responseCreateRoute $
--             createRouteResponse
--
--         , responseDeleteLaunchTemplateVersions $
--             deleteLaunchTemplateVersionsResponse
--
--         , responseDescribeIdentityIdFormat $
--             describeIdentityIdFormatResponse
--
--         , responseDeleteTrafficMirrorFilter $
--             deleteTrafficMirrorFilterResponse
--
--         , responseReplaceRoute $
--             replaceRouteResponse
--
--         , responseResetSnapshotAttribute $
--             resetSnapshotAttributeResponse
--
--         , responseResetEBSDefaultKMSKeyId $
--             resetEBSDefaultKMSKeyIdResponse
--
--         , responseCreateTags $
--             createTagsResponse
--
--         , responseBundleInstance $
--             bundleInstanceResponse
--
--         , responseDeleteTransitGatewayPeeringAttachment $
--             deleteTransitGatewayPeeringAttachmentResponse
--
--         , responseAuthorizeClientVPNIngress $
--             authorizeClientVPNIngressResponse
--
--         , responseModifyLaunchTemplate $
--             modifyLaunchTemplateResponse
--
--         , responseDeleteCustomerGateway $
--             deleteCustomerGatewayResponse
--
--         , responseTerminateClientVPNConnections $
--             terminateClientVPNConnectionsResponse
--
--         , responseGetEBSEncryptionByDefault $
--             getEBSEncryptionByDefaultResponse
--
--         , responseCreateVPCPeeringConnection $
--             createVPCPeeringConnectionResponse
--
--         , responseDeleteTransitGatewayVPCAttachment $
--             deleteTransitGatewayVPCAttachmentResponse
--
--         , responseReplaceIAMInstanceProfileAssociation $
--             replaceIAMInstanceProfileAssociationResponse
--
--         , responseDeleteTransitGatewayConnectPeer $
--             deleteTransitGatewayConnectPeerResponse
--
--         , responseAssociateAddress $
--             associateAddressResponse
--
--         , responseCancelSpotFleetRequests $
--             cancelSpotFleetRequestsResponse
--
--         , responseResetNetworkInterfaceAttribute $
--             resetNetworkInterfaceAttributeResponse
--
--         , responseStartInstances $
--             startInstancesResponse
--
--         , responseDisassociateTransitGatewayRouteTable $
--             disassociateTransitGatewayRouteTableResponse
--
--         , responseCopyFpgaImage $
--             copyFpgaImageResponse
--
--         , responseReleaseHosts $
--             releaseHostsResponse
--
--         , responseDescribeFastSnapshotRestores $
--             describeFastSnapshotRestoresResponse
--
--         , responseDescribeTrafficMirrorFilters $
--             describeTrafficMirrorFiltersResponse
--
--         , responseCreateTransitGatewayPrefixListReference $
--             createTransitGatewayPrefixListReferenceResponse
--
--         , responseDeleteNetworkInterface $
--             deleteNetworkInterfaceResponse
--
--         , responseCreateTransitGatewayRoute $
--             createTransitGatewayRouteResponse
--
--         , responseDeregisterTransitGatewayMulticastGroupSources $
--             deregisterTransitGatewayMulticastGroupSourcesResponse
--
--         , responseDisassociateVPCCidrBlock $
--             disassociateVPCCidrBlockResponse
--
--         , responseDescribeTransitGatewayPeeringAttachments $
--             describeTransitGatewayPeeringAttachmentsResponse
--
--         , responseGetCoipPoolUsage $
--             getCoipPoolUsageResponse
--
--         , responseImportImage $
--             importImageResponse
--
--         , responseReplaceTransitGatewayRoute $
--             replaceTransitGatewayRouteResponse
--
--         , responseCreatePlacementGroup $
--             createPlacementGroupResponse
--
--         , responseCreateDefaultVPC $
--             createDefaultVPCResponse
--
--         , responseCreateNetworkInsightsPath $
--             createNetworkInsightsPathResponse
--
--         , responseModifyTrafficMirrorSession $
--             modifyTrafficMirrorSessionResponse
--
--         , responseRunScheduledInstances $
--             runScheduledInstancesResponse
--
--         , responseDescribeDHCPOptions $
--             describeDHCPOptionsResponse
--
--         , responseDescribeCapacityReservations $
--             describeCapacityReservationsResponse
--
--         , responseDescribeCustomerGateways $
--             describeCustomerGatewaysResponse
--
--         , responseDeleteNatGateway $
--             deleteNatGatewayResponse
--
--         , responseDescribeClientVPNAuthorizationRules $
--             describeClientVPNAuthorizationRulesResponse
--
--         , responseStopInstances $
--             stopInstancesResponse
--
--         , responseReplaceRouteTableAssociation $
--             replaceRouteTableAssociationResponse
--
--         , responseDeleteTransitGatewayMulticastDomain $
--             deleteTransitGatewayMulticastDomainResponse
--
--         , responseDeleteSubnet $
--             deleteSubnetResponse
--
--           ]
--     ]

-- Requests

requestAcceptReservedInstancesExchangeQuote :: AcceptReservedInstancesExchangeQuote -> TestTree
requestAcceptReservedInstancesExchangeQuote =
  req
    "AcceptReservedInstancesExchangeQuote"
    "fixture/AcceptReservedInstancesExchangeQuote.yaml"

requestDescribeInstanceCreditSpecifications :: DescribeInstanceCreditSpecifications -> TestTree
requestDescribeInstanceCreditSpecifications =
  req
    "DescribeInstanceCreditSpecifications"
    "fixture/DescribeInstanceCreditSpecifications.yaml"

requestDescribeByoipCidrs :: DescribeByoipCidrs -> TestTree
requestDescribeByoipCidrs =
  req
    "DescribeByoipCidrs"
    "fixture/DescribeByoipCidrs.yaml"

requestDescribeLocalGatewayVirtualInterfaces :: DescribeLocalGatewayVirtualInterfaces -> TestTree
requestDescribeLocalGatewayVirtualInterfaces =
  req
    "DescribeLocalGatewayVirtualInterfaces"
    "fixture/DescribeLocalGatewayVirtualInterfaces.yaml"

requestDeleteLocalGatewayRouteTableVPCAssociation :: DeleteLocalGatewayRouteTableVPCAssociation -> TestTree
requestDeleteLocalGatewayRouteTableVPCAssociation =
  req
    "DeleteLocalGatewayRouteTableVPCAssociation"
    "fixture/DeleteLocalGatewayRouteTableVPCAssociation.yaml"

requestDetachVolume :: DetachVolume -> TestTree
requestDetachVolume =
  req
    "DetachVolume"
    "fixture/DetachVolume.yaml"

requestCreateTransitGatewayVPCAttachment :: CreateTransitGatewayVPCAttachment -> TestTree
requestCreateTransitGatewayVPCAttachment =
  req
    "CreateTransitGatewayVPCAttachment"
    "fixture/CreateTransitGatewayVPCAttachment.yaml"

requestDeleteVPCEndpointConnectionNotifications :: DeleteVPCEndpointConnectionNotifications -> TestTree
requestDeleteVPCEndpointConnectionNotifications =
  req
    "DeleteVPCEndpointConnectionNotifications"
    "fixture/DeleteVPCEndpointConnectionNotifications.yaml"

requestDeleteNetworkInsightsPath :: DeleteNetworkInsightsPath -> TestTree
requestDeleteNetworkInsightsPath =
  req
    "DeleteNetworkInsightsPath"
    "fixture/DeleteNetworkInsightsPath.yaml"

requestAuthorizeSecurityGroupEgress :: AuthorizeSecurityGroupEgress -> TestTree
requestAuthorizeSecurityGroupEgress =
  req
    "AuthorizeSecurityGroupEgress"
    "fixture/AuthorizeSecurityGroupEgress.yaml"

requestModifyManagedPrefixList :: ModifyManagedPrefixList -> TestTree
requestModifyManagedPrefixList =
  req
    "ModifyManagedPrefixList"
    "fixture/ModifyManagedPrefixList.yaml"

requestDeleteTransitGatewayPrefixListReference :: DeleteTransitGatewayPrefixListReference -> TestTree
requestDeleteTransitGatewayPrefixListReference =
  req
    "DeleteTransitGatewayPrefixListReference"
    "fixture/DeleteTransitGatewayPrefixListReference.yaml"

requestDeleteTransitGatewayRoute :: DeleteTransitGatewayRoute -> TestTree
requestDeleteTransitGatewayRoute =
  req
    "DeleteTransitGatewayRoute"
    "fixture/DeleteTransitGatewayRoute.yaml"

requestDescribeVPCPeeringConnections :: DescribeVPCPeeringConnections -> TestTree
requestDescribeVPCPeeringConnections =
  req
    "DescribeVPCPeeringConnections"
    "fixture/DescribeVPCPeeringConnections.yaml"

requestDescribeInstances :: DescribeInstances -> TestTree
requestDescribeInstances =
  req
    "DescribeInstances"
    "fixture/DescribeInstances.yaml"

requestDeregisterInstanceEventNotificationAttributes :: DeregisterInstanceEventNotificationAttributes -> TestTree
requestDeregisterInstanceEventNotificationAttributes =
  req
    "DeregisterInstanceEventNotificationAttributes"
    "fixture/DeregisterInstanceEventNotificationAttributes.yaml"

requestCreateTransitGatewayMulticastDomain :: CreateTransitGatewayMulticastDomain -> TestTree
requestCreateTransitGatewayMulticastDomain =
  req
    "CreateTransitGatewayMulticastDomain"
    "fixture/CreateTransitGatewayMulticastDomain.yaml"

requestAssociateTransitGatewayMulticastDomain :: AssociateTransitGatewayMulticastDomain -> TestTree
requestAssociateTransitGatewayMulticastDomain =
  req
    "AssociateTransitGatewayMulticastDomain"
    "fixture/AssociateTransitGatewayMulticastDomain.yaml"

requestReleaseAddress :: ReleaseAddress -> TestTree
requestReleaseAddress =
  req
    "ReleaseAddress"
    "fixture/ReleaseAddress.yaml"

requestDeregisterTransitGatewayMulticastGroupMembers :: DeregisterTransitGatewayMulticastGroupMembers -> TestTree
requestDeregisterTransitGatewayMulticastGroupMembers =
  req
    "DeregisterTransitGatewayMulticastGroupMembers"
    "fixture/DeregisterTransitGatewayMulticastGroupMembers.yaml"

requestGetHostReservationPurchasePreview :: GetHostReservationPurchasePreview -> TestTree
requestGetHostReservationPurchasePreview =
  req
    "GetHostReservationPurchasePreview"
    "fixture/GetHostReservationPurchasePreview.yaml"

requestCancelBundleTask :: CancelBundleTask -> TestTree
requestCancelBundleTask =
  req
    "CancelBundleTask"
    "fixture/CancelBundleTask.yaml"

requestGetCapacityReservationUsage :: GetCapacityReservationUsage -> TestTree
requestGetCapacityReservationUsage =
  req
    "GetCapacityReservationUsage"
    "fixture/GetCapacityReservationUsage.yaml"

requestCreateTransitGatewayConnectPeer :: CreateTransitGatewayConnectPeer -> TestTree
requestCreateTransitGatewayConnectPeer =
  req
    "CreateTransitGatewayConnectPeer"
    "fixture/CreateTransitGatewayConnectPeer.yaml"

requestModifyVPCTenancy :: ModifyVPCTenancy -> TestTree
requestModifyVPCTenancy =
  req
    "ModifyVPCTenancy"
    "fixture/ModifyVPCTenancy.yaml"

requestCreateVPCEndpointServiceConfiguration :: CreateVPCEndpointServiceConfiguration -> TestTree
requestCreateVPCEndpointServiceConfiguration =
  req
    "CreateVPCEndpointServiceConfiguration"
    "fixture/CreateVPCEndpointServiceConfiguration.yaml"

requestDescribeExportTasks :: DescribeExportTasks -> TestTree
requestDescribeExportTasks =
  req
    "DescribeExportTasks"
    "fixture/DescribeExportTasks.yaml"

requestGetTransitGatewayMulticastDomainAssociations :: GetTransitGatewayMulticastDomainAssociations -> TestTree
requestGetTransitGatewayMulticastDomainAssociations =
  req
    "GetTransitGatewayMulticastDomainAssociations"
    "fixture/GetTransitGatewayMulticastDomainAssociations.yaml"

requestDisableEBSEncryptionByDefault :: DisableEBSEncryptionByDefault -> TestTree
requestDisableEBSEncryptionByDefault =
  req
    "DisableEBSEncryptionByDefault"
    "fixture/DisableEBSEncryptionByDefault.yaml"

requestAssociateVPCCidrBlock :: AssociateVPCCidrBlock -> TestTree
requestAssociateVPCCidrBlock =
  req
    "AssociateVPCCidrBlock"
    "fixture/AssociateVPCCidrBlock.yaml"

requestCreateNetworkACL :: CreateNetworkACL -> TestTree
requestCreateNetworkACL =
  req
    "CreateNetworkACL"
    "fixture/CreateNetworkACL.yaml"

requestAcceptTransitGatewayPeeringAttachment :: AcceptTransitGatewayPeeringAttachment -> TestTree
requestAcceptTransitGatewayPeeringAttachment =
  req
    "AcceptTransitGatewayPeeringAttachment"
    "fixture/AcceptTransitGatewayPeeringAttachment.yaml"

requestDeleteLaunchTemplate :: DeleteLaunchTemplate -> TestTree
requestDeleteLaunchTemplate =
  req
    "DeleteLaunchTemplate"
    "fixture/DeleteLaunchTemplate.yaml"

requestDeleteVPC :: DeleteVPC -> TestTree
requestDeleteVPC =
  req
    "DeleteVPC"
    "fixture/DeleteVPC.yaml"

requestDeleteFleets :: DeleteFleets -> TestTree
requestDeleteFleets =
  req
    "DeleteFleets"
    "fixture/DeleteFleets.yaml"

requestGetAssociatedIPv6PoolCidrs :: GetAssociatedIPv6PoolCidrs -> TestTree
requestGetAssociatedIPv6PoolCidrs =
  req
    "GetAssociatedIPv6PoolCidrs"
    "fixture/GetAssociatedIPv6PoolCidrs.yaml"

requestDescribeTrafficMirrorSessions :: DescribeTrafficMirrorSessions -> TestTree
requestDescribeTrafficMirrorSessions =
  req
    "DescribeTrafficMirrorSessions"
    "fixture/DescribeTrafficMirrorSessions.yaml"

requestImportInstance :: ImportInstance -> TestTree
requestImportInstance =
  req
    "ImportInstance"
    "fixture/ImportInstance.yaml"

requestDescribeLocalGatewayRouteTables :: DescribeLocalGatewayRouteTables -> TestTree
requestDescribeLocalGatewayRouteTables =
  req
    "DescribeLocalGatewayRouteTables"
    "fixture/DescribeLocalGatewayRouteTables.yaml"

requestCreateNetworkInterfacePermission :: CreateNetworkInterfacePermission -> TestTree
requestCreateNetworkInterfacePermission =
  req
    "CreateNetworkInterfacePermission"
    "fixture/CreateNetworkInterfacePermission.yaml"

requestCreateVPNGateway :: CreateVPNGateway -> TestTree
requestCreateVPNGateway =
  req
    "CreateVPNGateway"
    "fixture/CreateVPNGateway.yaml"

requestGetTransitGatewayRouteTableAssociations :: GetTransitGatewayRouteTableAssociations -> TestTree
requestGetTransitGatewayRouteTableAssociations =
  req
    "GetTransitGatewayRouteTableAssociations"
    "fixture/GetTransitGatewayRouteTableAssociations.yaml"

requestRejectTransitGatewayVPCAttachment :: RejectTransitGatewayVPCAttachment -> TestTree
requestRejectTransitGatewayVPCAttachment =
  req
    "RejectTransitGatewayVPCAttachment"
    "fixture/RejectTransitGatewayVPCAttachment.yaml"

requestModifyVolumeAttribute :: ModifyVolumeAttribute -> TestTree
requestModifyVolumeAttribute =
  req
    "ModifyVolumeAttribute"
    "fixture/ModifyVolumeAttribute.yaml"

requestDescribePrefixLists :: DescribePrefixLists -> TestTree
requestDescribePrefixLists =
  req
    "DescribePrefixLists"
    "fixture/DescribePrefixLists.yaml"

requestDetachNetworkInterface :: DetachNetworkInterface -> TestTree
requestDetachNetworkInterface =
  req
    "DetachNetworkInterface"
    "fixture/DetachNetworkInterface.yaml"

requestDeleteVPCEndpoints :: DeleteVPCEndpoints -> TestTree
requestDeleteVPCEndpoints =
  req
    "DeleteVPCEndpoints"
    "fixture/DeleteVPCEndpoints.yaml"

requestDescribeVPCClassicLink :: DescribeVPCClassicLink -> TestTree
requestDescribeVPCClassicLink =
  req
    "DescribeVPCClassicLink"
    "fixture/DescribeVPCClassicLink.yaml"

requestUpdateSecurityGroupRuleDescriptionsIngress :: UpdateSecurityGroupRuleDescriptionsIngress -> TestTree
requestUpdateSecurityGroupRuleDescriptionsIngress =
  req
    "UpdateSecurityGroupRuleDescriptionsIngress"
    "fixture/UpdateSecurityGroupRuleDescriptionsIngress.yaml"

requestDescribeClientVPNEndpoints :: DescribeClientVPNEndpoints -> TestTree
requestDescribeClientVPNEndpoints =
  req
    "DescribeClientVPNEndpoints"
    "fixture/DescribeClientVPNEndpoints.yaml"

requestDisassociateAddress :: DisassociateAddress -> TestTree
requestDisassociateAddress =
  req
    "DisassociateAddress"
    "fixture/DisassociateAddress.yaml"

requestDescribeScheduledInstanceAvailability :: DescribeScheduledInstanceAvailability -> TestTree
requestDescribeScheduledInstanceAvailability =
  req
    "DescribeScheduledInstanceAvailability"
    "fixture/DescribeScheduledInstanceAvailability.yaml"

requestRejectVPCEndpointConnections :: RejectVPCEndpointConnections -> TestTree
requestRejectVPCEndpointConnections =
  req
    "RejectVPCEndpointConnections"
    "fixture/RejectVPCEndpointConnections.yaml"

requestCreateTransitGatewayRouteTable :: CreateTransitGatewayRouteTable -> TestTree
requestCreateTransitGatewayRouteTable =
  req
    "CreateTransitGatewayRouteTable"
    "fixture/CreateTransitGatewayRouteTable.yaml"

requestDescribeTags :: DescribeTags -> TestTree
requestDescribeTags =
  req
    "DescribeTags"
    "fixture/DescribeTags.yaml"

requestAssociateTransitGatewayRouteTable :: AssociateTransitGatewayRouteTable -> TestTree
requestAssociateTransitGatewayRouteTable =
  req
    "AssociateTransitGatewayRouteTable"
    "fixture/AssociateTransitGatewayRouteTable.yaml"

requestDeleteFlowLogs :: DeleteFlowLogs -> TestTree
requestDeleteFlowLogs =
  req
    "DeleteFlowLogs"
    "fixture/DeleteFlowLogs.yaml"

requestCreateDefaultSubnet :: CreateDefaultSubnet -> TestTree
requestCreateDefaultSubnet =
  req
    "CreateDefaultSubnet"
    "fixture/CreateDefaultSubnet.yaml"

requestDeleteTrafficMirrorTarget :: DeleteTrafficMirrorTarget -> TestTree
requestDeleteTrafficMirrorTarget =
  req
    "DeleteTrafficMirrorTarget"
    "fixture/DeleteTrafficMirrorTarget.yaml"

requestAcceptTransitGatewayMulticastDomainAssociations :: AcceptTransitGatewayMulticastDomainAssociations -> TestTree
requestAcceptTransitGatewayMulticastDomainAssociations =
  req
    "AcceptTransitGatewayMulticastDomainAssociations"
    "fixture/AcceptTransitGatewayMulticastDomainAssociations.yaml"

requestDescribeLaunchTemplateVersions :: DescribeLaunchTemplateVersions -> TestTree
requestDescribeLaunchTemplateVersions =
  req
    "DescribeLaunchTemplateVersions"
    "fixture/DescribeLaunchTemplateVersions.yaml"

requestDescribeAvailabilityZones :: DescribeAvailabilityZones -> TestTree
requestDescribeAvailabilityZones =
  req
    "DescribeAvailabilityZones"
    "fixture/DescribeAvailabilityZones.yaml"

requestGetReservedInstancesExchangeQuote :: GetReservedInstancesExchangeQuote -> TestTree
requestGetReservedInstancesExchangeQuote =
  req
    "GetReservedInstancesExchangeQuote"
    "fixture/GetReservedInstancesExchangeQuote.yaml"

requestDeleteVPNGateway :: DeleteVPNGateway -> TestTree
requestDeleteVPNGateway =
  req
    "DeleteVPNGateway"
    "fixture/DeleteVPNGateway.yaml"

requestCreateKeyPair :: CreateKeyPair -> TestTree
requestCreateKeyPair =
  req
    "CreateKeyPair"
    "fixture/CreateKeyPair.yaml"

requestExportTransitGatewayRoutes :: ExportTransitGatewayRoutes -> TestTree
requestExportTransitGatewayRoutes =
  req
    "ExportTransitGatewayRoutes"
    "fixture/ExportTransitGatewayRoutes.yaml"

requestCopySnapshot :: CopySnapshot -> TestTree
requestCopySnapshot =
  req
    "CopySnapshot"
    "fixture/CopySnapshot.yaml"

requestDescribeElasticGpus :: DescribeElasticGpus -> TestTree
requestDescribeElasticGpus =
  req
    "DescribeElasticGpus"
    "fixture/DescribeElasticGpus.yaml"

requestStartNetworkInsightsAnalysis :: StartNetworkInsightsAnalysis -> TestTree
requestStartNetworkInsightsAnalysis =
  req
    "StartNetworkInsightsAnalysis"
    "fixture/StartNetworkInsightsAnalysis.yaml"

requestDescribeFpgaImages :: DescribeFpgaImages -> TestTree
requestDescribeFpgaImages =
  req
    "DescribeFpgaImages"
    "fixture/DescribeFpgaImages.yaml"

requestCreateFlowLogs :: CreateFlowLogs -> TestTree
requestCreateFlowLogs =
  req
    "CreateFlowLogs"
    "fixture/CreateFlowLogs.yaml"

requestCreateLaunchTemplate :: CreateLaunchTemplate -> TestTree
requestCreateLaunchTemplate =
  req
    "CreateLaunchTemplate"
    "fixture/CreateLaunchTemplate.yaml"

requestDescribeImportImageTasks :: DescribeImportImageTasks -> TestTree
requestDescribeImportImageTasks =
  req
    "DescribeImportImageTasks"
    "fixture/DescribeImportImageTasks.yaml"

requestDeleteTransitGatewayRouteTable :: DeleteTransitGatewayRouteTable -> TestTree
requestDeleteTransitGatewayRouteTable =
  req
    "DeleteTransitGatewayRouteTable"
    "fixture/DeleteTransitGatewayRouteTable.yaml"

requestDeleteNetworkACL :: DeleteNetworkACL -> TestTree
requestDeleteNetworkACL =
  req
    "DeleteNetworkACL"
    "fixture/DeleteNetworkACL.yaml"

requestMoveAddressToVPC :: MoveAddressToVPC -> TestTree
requestMoveAddressToVPC =
  req
    "MoveAddressToVPC"
    "fixture/MoveAddressToVPC.yaml"

requestDescribeFleetInstances :: DescribeFleetInstances -> TestTree
requestDescribeFleetInstances =
  req
    "DescribeFleetInstances"
    "fixture/DescribeFleetInstances.yaml"

requestRestoreAddressToClassic :: RestoreAddressToClassic -> TestTree
requestRestoreAddressToClassic =
  req
    "RestoreAddressToClassic"
    "fixture/RestoreAddressToClassic.yaml"

requestDeleteNetworkInterfacePermission :: DeleteNetworkInterfacePermission -> TestTree
requestDeleteNetworkInterfacePermission =
  req
    "DeleteNetworkInterfacePermission"
    "fixture/DeleteNetworkInterfacePermission.yaml"

requestDescribeRouteTables :: DescribeRouteTables -> TestTree
requestDescribeRouteTables =
  req
    "DescribeRouteTables"
    "fixture/DescribeRouteTables.yaml"

requestUpdateSecurityGroupRuleDescriptionsEgress :: UpdateSecurityGroupRuleDescriptionsEgress -> TestTree
requestUpdateSecurityGroupRuleDescriptionsEgress =
  req
    "UpdateSecurityGroupRuleDescriptionsEgress"
    "fixture/UpdateSecurityGroupRuleDescriptionsEgress.yaml"

requestResetFpgaImageAttribute :: ResetFpgaImageAttribute -> TestTree
requestResetFpgaImageAttribute =
  req
    "ResetFpgaImageAttribute"
    "fixture/ResetFpgaImageAttribute.yaml"

requestStartVPCEndpointServicePrivateDNSVerification :: StartVPCEndpointServicePrivateDNSVerification -> TestTree
requestStartVPCEndpointServicePrivateDNSVerification =
  req
    "StartVPCEndpointServicePrivateDNSVerification"
    "fixture/StartVPCEndpointServicePrivateDNSVerification.yaml"

requestDescribeVolumes :: DescribeVolumes -> TestTree
requestDescribeVolumes =
  req
    "DescribeVolumes"
    "fixture/DescribeVolumes.yaml"

requestCreateClientVPNEndpoint :: CreateClientVPNEndpoint -> TestTree
requestCreateClientVPNEndpoint =
  req
    "CreateClientVPNEndpoint"
    "fixture/CreateClientVPNEndpoint.yaml"

requestRevokeClientVPNIngress :: RevokeClientVPNIngress -> TestTree
requestRevokeClientVPNIngress =
  req
    "RevokeClientVPNIngress"
    "fixture/RevokeClientVPNIngress.yaml"

requestDeleteFpgaImage :: DeleteFpgaImage -> TestTree
requestDeleteFpgaImage =
  req
    "DeleteFpgaImage"
    "fixture/DeleteFpgaImage.yaml"

requestModifyVPCEndpoint :: ModifyVPCEndpoint -> TestTree
requestModifyVPCEndpoint =
  req
    "ModifyVPCEndpoint"
    "fixture/ModifyVPCEndpoint.yaml"

requestDescribeReservedInstancesModifications :: DescribeReservedInstancesModifications -> TestTree
requestDescribeReservedInstancesModifications =
  req
    "DescribeReservedInstancesModifications"
    "fixture/DescribeReservedInstancesModifications.yaml"

requestDescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations :: DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations -> TestTree
requestDescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations =
  req
    "DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations"
    "fixture/DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations.yaml"

requestEnableFastSnapshotRestores :: EnableFastSnapshotRestores -> TestTree
requestEnableFastSnapshotRestores =
  req
    "EnableFastSnapshotRestores"
    "fixture/EnableFastSnapshotRestores.yaml"

requestDescribeClientVPNRoutes :: DescribeClientVPNRoutes -> TestTree
requestDescribeClientVPNRoutes =
  req
    "DescribeClientVPNRoutes"
    "fixture/DescribeClientVPNRoutes.yaml"

requestGetEBSDefaultKMSKeyId :: GetEBSDefaultKMSKeyId -> TestTree
requestGetEBSDefaultKMSKeyId =
  req
    "GetEBSDefaultKMSKeyId"
    "fixture/GetEBSDefaultKMSKeyId.yaml"

requestModifyIdFormat :: ModifyIdFormat -> TestTree
requestModifyIdFormat =
  req
    "ModifyIdFormat"
    "fixture/ModifyIdFormat.yaml"

requestDetachClassicLinkVPC :: DetachClassicLinkVPC -> TestTree
requestDetachClassicLinkVPC =
  req
    "DetachClassicLinkVPC"
    "fixture/DetachClassicLinkVPC.yaml"

requestUnassignPrivateIPAddresses :: UnassignPrivateIPAddresses -> TestTree
requestUnassignPrivateIPAddresses =
  req
    "UnassignPrivateIPAddresses"
    "fixture/UnassignPrivateIPAddresses.yaml"

requestAllocateHosts :: AllocateHosts -> TestTree
requestAllocateHosts =
  req
    "AllocateHosts"
    "fixture/AllocateHosts.yaml"

requestGetConsoleOutput :: GetConsoleOutput -> TestTree
requestGetConsoleOutput =
  req
    "GetConsoleOutput"
    "fixture/GetConsoleOutput.yaml"

requestModifyVPNConnectionOptions :: ModifyVPNConnectionOptions -> TestTree
requestModifyVPNConnectionOptions =
  req
    "ModifyVPNConnectionOptions"
    "fixture/ModifyVPNConnectionOptions.yaml"

requestCancelImportTask :: CancelImportTask -> TestTree
requestCancelImportTask =
  req
    "CancelImportTask"
    "fixture/CancelImportTask.yaml"

requestRegisterImage :: RegisterImage -> TestTree
requestRegisterImage =
  req
    "RegisterImage"
    "fixture/RegisterImage.yaml"

requestModifyFleet :: ModifyFleet -> TestTree
requestModifyFleet =
  req
    "ModifyFleet"
    "fixture/ModifyFleet.yaml"

requestDeleteRouteTable :: DeleteRouteTable -> TestTree
requestDeleteRouteTable =
  req
    "DeleteRouteTable"
    "fixture/DeleteRouteTable.yaml"

requestModifyReservedInstances :: ModifyReservedInstances -> TestTree
requestModifyReservedInstances =
  req
    "ModifyReservedInstances"
    "fixture/ModifyReservedInstances.yaml"

requestDescribeImageAttribute :: DescribeImageAttribute -> TestTree
requestDescribeImageAttribute =
  req
    "DescribeImageAttribute"
    "fixture/DescribeImageAttribute.yaml"

requestCreateTrafficMirrorFilterRule :: CreateTrafficMirrorFilterRule -> TestTree
requestCreateTrafficMirrorFilterRule =
  req
    "CreateTrafficMirrorFilterRule"
    "fixture/CreateTrafficMirrorFilterRule.yaml"

requestMonitorInstances :: MonitorInstances -> TestTree
requestMonitorInstances =
  req
    "MonitorInstances"
    "fixture/MonitorInstances.yaml"

requestModifyVPNConnection :: ModifyVPNConnection -> TestTree
requestModifyVPNConnection =
  req
    "ModifyVPNConnection"
    "fixture/ModifyVPNConnection.yaml"

requestDescribeSpotInstanceRequests :: DescribeSpotInstanceRequests -> TestTree
requestDescribeSpotInstanceRequests =
  req
    "DescribeSpotInstanceRequests"
    "fixture/DescribeSpotInstanceRequests.yaml"

requestCancelConversionTask :: CancelConversionTask -> TestTree
requestCancelConversionTask =
  req
    "CancelConversionTask"
    "fixture/CancelConversionTask.yaml"

requestModifyVPCEndpointServiceConfiguration :: ModifyVPCEndpointServiceConfiguration -> TestTree
requestModifyVPCEndpointServiceConfiguration =
  req
    "ModifyVPCEndpointServiceConfiguration"
    "fixture/ModifyVPCEndpointServiceConfiguration.yaml"

requestModifyTransitGatewayVPCAttachment :: ModifyTransitGatewayVPCAttachment -> TestTree
requestModifyTransitGatewayVPCAttachment =
  req
    "ModifyTransitGatewayVPCAttachment"
    "fixture/ModifyTransitGatewayVPCAttachment.yaml"

requestAssociateRouteTable :: AssociateRouteTable -> TestTree
requestAssociateRouteTable =
  req
    "AssociateRouteTable"
    "fixture/AssociateRouteTable.yaml"

requestDescribeAccountAttributes :: DescribeAccountAttributes -> TestTree
requestDescribeAccountAttributes =
  req
    "DescribeAccountAttributes"
    "fixture/DescribeAccountAttributes.yaml"

requestDescribeLaunchTemplates :: DescribeLaunchTemplates -> TestTree
requestDescribeLaunchTemplates =
  req
    "DescribeLaunchTemplates"
    "fixture/DescribeLaunchTemplates.yaml"

requestDescribeIPv6Pools :: DescribeIPv6Pools -> TestTree
requestDescribeIPv6Pools =
  req
    "DescribeIPv6Pools"
    "fixture/DescribeIPv6Pools.yaml"

requestDescribeLocalGateways :: DescribeLocalGateways -> TestTree
requestDescribeLocalGateways =
  req
    "DescribeLocalGateways"
    "fixture/DescribeLocalGateways.yaml"

requestPurchaseHostReservation :: PurchaseHostReservation -> TestTree
requestPurchaseHostReservation =
  req
    "PurchaseHostReservation"
    "fixture/PurchaseHostReservation.yaml"

requestReportInstanceStatus :: ReportInstanceStatus -> TestTree
requestReportInstanceStatus =
  req
    "ReportInstanceStatus"
    "fixture/ReportInstanceStatus.yaml"

requestModifyVPCEndpointServicePermissions :: ModifyVPCEndpointServicePermissions -> TestTree
requestModifyVPCEndpointServicePermissions =
  req
    "ModifyVPCEndpointServicePermissions"
    "fixture/ModifyVPCEndpointServicePermissions.yaml"

requestModifyHosts :: ModifyHosts -> TestTree
requestModifyHosts =
  req
    "ModifyHosts"
    "fixture/ModifyHosts.yaml"

requestUnassignIPv6Addresses :: UnassignIPv6Addresses -> TestTree
requestUnassignIPv6Addresses =
  req
    "UnassignIPv6Addresses"
    "fixture/UnassignIPv6Addresses.yaml"

requestGetManagedPrefixListAssociations :: GetManagedPrefixListAssociations -> TestTree
requestGetManagedPrefixListAssociations =
  req
    "GetManagedPrefixListAssociations"
    "fixture/GetManagedPrefixListAssociations.yaml"

requestDisableFastSnapshotRestores :: DisableFastSnapshotRestores -> TestTree
requestDisableFastSnapshotRestores =
  req
    "DisableFastSnapshotRestores"
    "fixture/DisableFastSnapshotRestores.yaml"

requestDeleteEgressOnlyInternetGateway :: DeleteEgressOnlyInternetGateway -> TestTree
requestDeleteEgressOnlyInternetGateway =
  req
    "DeleteEgressOnlyInternetGateway"
    "fixture/DeleteEgressOnlyInternetGateway.yaml"

requestRequestSpotInstances :: RequestSpotInstances -> TestTree
requestRequestSpotInstances =
  req
    "RequestSpotInstances"
    "fixture/RequestSpotInstances.yaml"

requestRunInstances :: RunInstances -> TestTree
requestRunInstances =
  req
    "RunInstances"
    "fixture/RunInstances.yaml"

requestGetTransitGatewayRouteTablePropagations :: GetTransitGatewayRouteTablePropagations -> TestTree
requestGetTransitGatewayRouteTablePropagations =
  req
    "GetTransitGatewayRouteTablePropagations"
    "fixture/GetTransitGatewayRouteTablePropagations.yaml"

requestAttachVolume :: AttachVolume -> TestTree
requestAttachVolume =
  req
    "AttachVolume"
    "fixture/AttachVolume.yaml"

requestAcceptVPCEndpointConnections :: AcceptVPCEndpointConnections -> TestTree
requestAcceptVPCEndpointConnections =
  req
    "AcceptVPCEndpointConnections"
    "fixture/AcceptVPCEndpointConnections.yaml"

requestCreateDHCPOptions :: CreateDHCPOptions -> TestTree
requestCreateDHCPOptions =
  req
    "CreateDHCPOptions"
    "fixture/CreateDHCPOptions.yaml"

requestRebootInstances :: RebootInstances -> TestTree
requestRebootInstances =
  req
    "RebootInstances"
    "fixture/RebootInstances.yaml"

requestModifyImageAttribute :: ModifyImageAttribute -> TestTree
requestModifyImageAttribute =
  req
    "ModifyImageAttribute"
    "fixture/ModifyImageAttribute.yaml"

requestCreateManagedPrefixList :: CreateManagedPrefixList -> TestTree
requestCreateManagedPrefixList =
  req
    "CreateManagedPrefixList"
    "fixture/CreateManagedPrefixList.yaml"

requestSearchTransitGatewayRoutes :: SearchTransitGatewayRoutes -> TestTree
requestSearchTransitGatewayRoutes =
  req
    "SearchTransitGatewayRoutes"
    "fixture/SearchTransitGatewayRoutes.yaml"

requestDescribeIdFormat :: DescribeIdFormat -> TestTree
requestDescribeIdFormat =
  req
    "DescribeIdFormat"
    "fixture/DescribeIdFormat.yaml"

requestRegisterTransitGatewayMulticastGroupSources :: RegisterTransitGatewayMulticastGroupSources -> TestTree
requestRegisterTransitGatewayMulticastGroupSources =
  req
    "RegisterTransitGatewayMulticastGroupSources"
    "fixture/RegisterTransitGatewayMulticastGroupSources.yaml"

requestDescribeVPCEndpointConnectionNotifications :: DescribeVPCEndpointConnectionNotifications -> TestTree
requestDescribeVPCEndpointConnectionNotifications =
  req
    "DescribeVPCEndpointConnectionNotifications"
    "fixture/DescribeVPCEndpointConnectionNotifications.yaml"

requestDescribeVPCs :: DescribeVPCs -> TestTree
requestDescribeVPCs =
  req
    "DescribeVPCs"
    "fixture/DescribeVPCs.yaml"

requestGetTransitGatewayPrefixListReferences :: GetTransitGatewayPrefixListReferences -> TestTree
requestGetTransitGatewayPrefixListReferences =
  req
    "GetTransitGatewayPrefixListReferences"
    "fixture/GetTransitGatewayPrefixListReferences.yaml"

requestCreateRouteTable :: CreateRouteTable -> TestTree
requestCreateRouteTable =
  req
    "CreateRouteTable"
    "fixture/CreateRouteTable.yaml"

requestDescribeVolumesModifications :: DescribeVolumesModifications -> TestTree
requestDescribeVolumesModifications =
  req
    "DescribeVolumesModifications"
    "fixture/DescribeVolumesModifications.yaml"

requestAssociateIAMInstanceProfile :: AssociateIAMInstanceProfile -> TestTree
requestAssociateIAMInstanceProfile =
  req
    "AssociateIAMInstanceProfile"
    "fixture/AssociateIAMInstanceProfile.yaml"

requestCreateImage :: CreateImage -> TestTree
requestCreateImage =
  req
    "CreateImage"
    "fixture/CreateImage.yaml"

requestDescribeTrafficMirrorTargets :: DescribeTrafficMirrorTargets -> TestTree
requestDescribeTrafficMirrorTargets =
  req
    "DescribeTrafficMirrorTargets"
    "fixture/DescribeTrafficMirrorTargets.yaml"

requestAssociateDHCPOptions :: AssociateDHCPOptions -> TestTree
requestAssociateDHCPOptions =
  req
    "AssociateDHCPOptions"
    "fixture/AssociateDHCPOptions.yaml"

requestDescribeSpotFleetRequestHistory :: DescribeSpotFleetRequestHistory -> TestTree
requestDescribeSpotFleetRequestHistory =
  req
    "DescribeSpotFleetRequestHistory"
    "fixture/DescribeSpotFleetRequestHistory.yaml"

requestModifyInstanceEventStartTime :: ModifyInstanceEventStartTime -> TestTree
requestModifyInstanceEventStartTime =
  req
    "ModifyInstanceEventStartTime"
    "fixture/ModifyInstanceEventStartTime.yaml"

requestDisassociateEnclaveCertificateIAMRole :: DisassociateEnclaveCertificateIAMRole -> TestTree
requestDisassociateEnclaveCertificateIAMRole =
  req
    "DisassociateEnclaveCertificateIAMRole"
    "fixture/DisassociateEnclaveCertificateIAMRole.yaml"

requestDeleteVPCPeeringConnection :: DeleteVPCPeeringConnection -> TestTree
requestDeleteVPCPeeringConnection =
  req
    "DeleteVPCPeeringConnection"
    "fixture/DeleteVPCPeeringConnection.yaml"

requestResetInstanceAttribute :: ResetInstanceAttribute -> TestTree
requestResetInstanceAttribute =
  req
    "ResetInstanceAttribute"
    "fixture/ResetInstanceAttribute.yaml"

requestDescribeInstanceStatus :: DescribeInstanceStatus -> TestTree
requestDescribeInstanceStatus =
  req
    "DescribeInstanceStatus"
    "fixture/DescribeInstanceStatus.yaml"

requestAttachNetworkInterface :: AttachNetworkInterface -> TestTree
requestAttachNetworkInterface =
  req
    "AttachNetworkInterface"
    "fixture/AttachNetworkInterface.yaml"

requestAssignIPv6Addresses :: AssignIPv6Addresses -> TestTree
requestAssignIPv6Addresses =
  req
    "AssignIPv6Addresses"
    "fixture/AssignIPv6Addresses.yaml"

requestCreateLocalGatewayRoute :: CreateLocalGatewayRoute -> TestTree
requestCreateLocalGatewayRoute =
  req
    "CreateLocalGatewayRoute"
    "fixture/CreateLocalGatewayRoute.yaml"

requestEnableVGWRoutePropagation :: EnableVGWRoutePropagation -> TestTree
requestEnableVGWRoutePropagation =
  req
    "EnableVGWRoutePropagation"
    "fixture/EnableVGWRoutePropagation.yaml"

requestDescribeVPCEndpoints :: DescribeVPCEndpoints -> TestTree
requestDescribeVPCEndpoints =
  req
    "DescribeVPCEndpoints"
    "fixture/DescribeVPCEndpoints.yaml"

requestCreateNetworkACLEntry :: CreateNetworkACLEntry -> TestTree
requestCreateNetworkACLEntry =
  req
    "CreateNetworkACLEntry"
    "fixture/CreateNetworkACLEntry.yaml"

requestDescribeStaleSecurityGroups :: DescribeStaleSecurityGroups -> TestTree
requestDescribeStaleSecurityGroups =
  req
    "DescribeStaleSecurityGroups"
    "fixture/DescribeStaleSecurityGroups.yaml"

requestDescribeFlowLogs :: DescribeFlowLogs -> TestTree
requestDescribeFlowLogs =
  req
    "DescribeFlowLogs"
    "fixture/DescribeFlowLogs.yaml"

requestDescribePlacementGroups :: DescribePlacementGroups -> TestTree
requestDescribePlacementGroups =
  req
    "DescribePlacementGroups"
    "fixture/DescribePlacementGroups.yaml"

requestDescribeFleets :: DescribeFleets -> TestTree
requestDescribeFleets =
  req
    "DescribeFleets"
    "fixture/DescribeFleets.yaml"

requestModifyIdentityIdFormat :: ModifyIdentityIdFormat -> TestTree
requestModifyIdentityIdFormat =
  req
    "ModifyIdentityIdFormat"
    "fixture/ModifyIdentityIdFormat.yaml"

requestDescribeLocalGatewayVirtualInterfaceGroups :: DescribeLocalGatewayVirtualInterfaceGroups -> TestTree
requestDescribeLocalGatewayVirtualInterfaceGroups =
  req
    "DescribeLocalGatewayVirtualInterfaceGroups"
    "fixture/DescribeLocalGatewayVirtualInterfaceGroups.yaml"

requestReplaceNetworkACLEntry :: ReplaceNetworkACLEntry -> TestTree
requestReplaceNetworkACLEntry =
  req
    "ReplaceNetworkACLEntry"
    "fixture/ReplaceNetworkACLEntry.yaml"

requestDeleteTags :: DeleteTags -> TestTree
requestDeleteTags =
  req
    "DeleteTags"
    "fixture/DeleteTags.yaml"

requestDescribeTransitGatewayAttachments :: DescribeTransitGatewayAttachments -> TestTree
requestDescribeTransitGatewayAttachments =
  req
    "DescribeTransitGatewayAttachments"
    "fixture/DescribeTransitGatewayAttachments.yaml"

requestDescribeReservedInstancesOfferings :: DescribeReservedInstancesOfferings -> TestTree
requestDescribeReservedInstancesOfferings =
  req
    "DescribeReservedInstancesOfferings"
    "fixture/DescribeReservedInstancesOfferings.yaml"

requestModifySnapshotAttribute :: ModifySnapshotAttribute -> TestTree
requestModifySnapshotAttribute =
  req
    "ModifySnapshotAttribute"
    "fixture/ModifySnapshotAttribute.yaml"

requestConfirmProductInstance :: ConfirmProductInstance -> TestTree
requestConfirmProductInstance =
  req
    "ConfirmProductInstance"
    "fixture/ConfirmProductInstance.yaml"

requestDescribeVPNConnections :: DescribeVPNConnections -> TestTree
requestDescribeVPNConnections =
  req
    "DescribeVPNConnections"
    "fixture/DescribeVPNConnections.yaml"

requestModifyAvailabilityZoneGroup :: ModifyAvailabilityZoneGroup -> TestTree
requestModifyAvailabilityZoneGroup =
  req
    "ModifyAvailabilityZoneGroup"
    "fixture/ModifyAvailabilityZoneGroup.yaml"

requestDisassociateIAMInstanceProfile :: DisassociateIAMInstanceProfile -> TestTree
requestDisassociateIAMInstanceProfile =
  req
    "DisassociateIAMInstanceProfile"
    "fixture/DisassociateIAMInstanceProfile.yaml"

requestDisableVPCClassicLink :: DisableVPCClassicLink -> TestTree
requestDisableVPCClassicLink =
  req
    "DisableVPCClassicLink"
    "fixture/DisableVPCClassicLink.yaml"

requestGetGroupsForCapacityReservation :: GetGroupsForCapacityReservation -> TestTree
requestGetGroupsForCapacityReservation =
  req
    "GetGroupsForCapacityReservation"
    "fixture/GetGroupsForCapacityReservation.yaml"

requestImportVolume :: ImportVolume -> TestTree
requestImportVolume =
  req
    "ImportVolume"
    "fixture/ImportVolume.yaml"

requestDescribeAddresses :: DescribeAddresses -> TestTree
requestDescribeAddresses =
  req
    "DescribeAddresses"
    "fixture/DescribeAddresses.yaml"

requestDeleteLocalGatewayRoute :: DeleteLocalGatewayRoute -> TestTree
requestDeleteLocalGatewayRoute =
  req
    "DeleteLocalGatewayRoute"
    "fixture/DeleteLocalGatewayRoute.yaml"

requestDescribeVPCEndpointServiceConfigurations :: DescribeVPCEndpointServiceConfigurations -> TestTree
requestDescribeVPCEndpointServiceConfigurations =
  req
    "DescribeVPCEndpointServiceConfigurations"
    "fixture/DescribeVPCEndpointServiceConfigurations.yaml"

requestDescribeNetworkInterfaces :: DescribeNetworkInterfaces -> TestTree
requestDescribeNetworkInterfaces =
  req
    "DescribeNetworkInterfaces"
    "fixture/DescribeNetworkInterfaces.yaml"

requestDescribeVPCEndpointServices :: DescribeVPCEndpointServices -> TestTree
requestDescribeVPCEndpointServices =
  req
    "DescribeVPCEndpointServices"
    "fixture/DescribeVPCEndpointServices.yaml"

requestDeleteNetworkACLEntry :: DeleteNetworkACLEntry -> TestTree
requestDeleteNetworkACLEntry =
  req
    "DeleteNetworkACLEntry"
    "fixture/DeleteNetworkACLEntry.yaml"

requestGetTransitGatewayAttachmentPropagations :: GetTransitGatewayAttachmentPropagations -> TestTree
requestGetTransitGatewayAttachmentPropagations =
  req
    "GetTransitGatewayAttachmentPropagations"
    "fixture/GetTransitGatewayAttachmentPropagations.yaml"

requestAssignPrivateIPAddresses :: AssignPrivateIPAddresses -> TestTree
requestAssignPrivateIPAddresses =
  req
    "AssignPrivateIPAddresses"
    "fixture/AssignPrivateIPAddresses.yaml"

requestDescribeNatGateways :: DescribeNatGateways -> TestTree
requestDescribeNatGateways =
  req
    "DescribeNatGateways"
    "fixture/DescribeNatGateways.yaml"

requestDescribeSnapshotAttribute :: DescribeSnapshotAttribute -> TestTree
requestDescribeSnapshotAttribute =
  req
    "DescribeSnapshotAttribute"
    "fixture/DescribeSnapshotAttribute.yaml"

requestDeleteSnapshot :: DeleteSnapshot -> TestTree
requestDeleteSnapshot =
  req
    "DeleteSnapshot"
    "fixture/DeleteSnapshot.yaml"

requestDeleteCarrierGateway :: DeleteCarrierGateway -> TestTree
requestDeleteCarrierGateway =
  req
    "DeleteCarrierGateway"
    "fixture/DeleteCarrierGateway.yaml"

requestDescribeTransitGatewayVPCAttachments :: DescribeTransitGatewayVPCAttachments -> TestTree
requestDescribeTransitGatewayVPCAttachments =
  req
    "DescribeTransitGatewayVPCAttachments"
    "fixture/DescribeTransitGatewayVPCAttachments.yaml"

requestModifyVPCEndpointConnectionNotification :: ModifyVPCEndpointConnectionNotification -> TestTree
requestModifyVPCEndpointConnectionNotification =
  req
    "ModifyVPCEndpointConnectionNotification"
    "fixture/ModifyVPCEndpointConnectionNotification.yaml"

requestPurchaseReservedInstancesOffering :: PurchaseReservedInstancesOffering -> TestTree
requestPurchaseReservedInstancesOffering =
  req
    "PurchaseReservedInstancesOffering"
    "fixture/PurchaseReservedInstancesOffering.yaml"

requestAuthorizeSecurityGroupIngress :: AuthorizeSecurityGroupIngress -> TestTree
requestAuthorizeSecurityGroupIngress =
  req
    "AuthorizeSecurityGroupIngress"
    "fixture/AuthorizeSecurityGroupIngress.yaml"

requestGetConsoleScreenshot :: GetConsoleScreenshot -> TestTree
requestGetConsoleScreenshot =
  req
    "GetConsoleScreenshot"
    "fixture/GetConsoleScreenshot.yaml"

requestDisableVGWRoutePropagation :: DisableVGWRoutePropagation -> TestTree
requestDisableVGWRoutePropagation =
  req
    "DisableVGWRoutePropagation"
    "fixture/DisableVGWRoutePropagation.yaml"

requestDescribeTransitGatewayMulticastDomains :: DescribeTransitGatewayMulticastDomains -> TestTree
requestDescribeTransitGatewayMulticastDomains =
  req
    "DescribeTransitGatewayMulticastDomains"
    "fixture/DescribeTransitGatewayMulticastDomains.yaml"

requestDescribeSubnets :: DescribeSubnets -> TestTree
requestDescribeSubnets =
  req
    "DescribeSubnets"
    "fixture/DescribeSubnets.yaml"

requestUnmonitorInstances :: UnmonitorInstances -> TestTree
requestUnmonitorInstances =
  req
    "UnmonitorInstances"
    "fixture/UnmonitorInstances.yaml"

requestCancelSpotInstanceRequests :: CancelSpotInstanceRequests -> TestTree
requestCancelSpotInstanceRequests =
  req
    "CancelSpotInstanceRequests"
    "fixture/CancelSpotInstanceRequests.yaml"

requestCreateSpotDatafeedSubscription :: CreateSpotDatafeedSubscription -> TestTree
requestCreateSpotDatafeedSubscription =
  req
    "CreateSpotDatafeedSubscription"
    "fixture/CreateSpotDatafeedSubscription.yaml"

requestDisassociateRouteTable :: DisassociateRouteTable -> TestTree
requestDisassociateRouteTable =
  req
    "DisassociateRouteTable"
    "fixture/DisassociateRouteTable.yaml"

requestDescribeTransitGatewayConnectPeers :: DescribeTransitGatewayConnectPeers -> TestTree
requestDescribeTransitGatewayConnectPeers =
  req
    "DescribeTransitGatewayConnectPeers"
    "fixture/DescribeTransitGatewayConnectPeers.yaml"

requestModifyVPNTunnelCertificate :: ModifyVPNTunnelCertificate -> TestTree
requestModifyVPNTunnelCertificate =
  req
    "ModifyVPNTunnelCertificate"
    "fixture/ModifyVPNTunnelCertificate.yaml"

requestRestoreManagedPrefixListVersion :: RestoreManagedPrefixListVersion -> TestTree
requestRestoreManagedPrefixListVersion =
  req
    "RestoreManagedPrefixListVersion"
    "fixture/RestoreManagedPrefixListVersion.yaml"

requestModifyAddressAttribute :: ModifyAddressAttribute -> TestTree
requestModifyAddressAttribute =
  req
    "ModifyAddressAttribute"
    "fixture/ModifyAddressAttribute.yaml"

requestCreateVPNConnection :: CreateVPNConnection -> TestTree
requestCreateVPNConnection =
  req
    "CreateVPNConnection"
    "fixture/CreateVPNConnection.yaml"

requestAssociateSubnetCidrBlock :: AssociateSubnetCidrBlock -> TestTree
requestAssociateSubnetCidrBlock =
  req
    "AssociateSubnetCidrBlock"
    "fixture/AssociateSubnetCidrBlock.yaml"

requestAttachClassicLinkVPC :: AttachClassicLinkVPC -> TestTree
requestAttachClassicLinkVPC =
  req
    "AttachClassicLinkVPC"
    "fixture/AttachClassicLinkVPC.yaml"

requestDescribeSpotPriceHistory :: DescribeSpotPriceHistory -> TestTree
requestDescribeSpotPriceHistory =
  req
    "DescribeSpotPriceHistory"
    "fixture/DescribeSpotPriceHistory.yaml"

requestDeleteQueuedReservedInstances :: DeleteQueuedReservedInstances -> TestTree
requestDeleteQueuedReservedInstances =
  req
    "DeleteQueuedReservedInstances"
    "fixture/DeleteQueuedReservedInstances.yaml"

requestDescribeAggregateIdFormat :: DescribeAggregateIdFormat -> TestTree
requestDescribeAggregateIdFormat =
  req
    "DescribeAggregateIdFormat"
    "fixture/DescribeAggregateIdFormat.yaml"

requestDescribeReservedInstancesListings :: DescribeReservedInstancesListings -> TestTree
requestDescribeReservedInstancesListings =
  req
    "DescribeReservedInstancesListings"
    "fixture/DescribeReservedInstancesListings.yaml"

requestCopyImage :: CopyImage -> TestTree
requestCopyImage =
  req
    "CopyImage"
    "fixture/CopyImage.yaml"

requestCreateLocalGatewayRouteTableVPCAssociation :: CreateLocalGatewayRouteTableVPCAssociation -> TestTree
requestCreateLocalGatewayRouteTableVPCAssociation =
  req
    "CreateLocalGatewayRouteTableVPCAssociation"
    "fixture/CreateLocalGatewayRouteTableVPCAssociation.yaml"

requestDescribeCarrierGateways :: DescribeCarrierGateways -> TestTree
requestDescribeCarrierGateways =
  req
    "DescribeCarrierGateways"
    "fixture/DescribeCarrierGateways.yaml"

requestDeleteInternetGateway :: DeleteInternetGateway -> TestTree
requestDeleteInternetGateway =
  req
    "DeleteInternetGateway"
    "fixture/DeleteInternetGateway.yaml"

requestCreateFleet :: CreateFleet -> TestTree
requestCreateFleet =
  req
    "CreateFleet"
    "fixture/CreateFleet.yaml"

requestModifyClientVPNEndpoint :: ModifyClientVPNEndpoint -> TestTree
requestModifyClientVPNEndpoint =
  req
    "ModifyClientVPNEndpoint"
    "fixture/ModifyClientVPNEndpoint.yaml"

requestModifyInstanceCapacityReservationAttributes :: ModifyInstanceCapacityReservationAttributes -> TestTree
requestModifyInstanceCapacityReservationAttributes =
  req
    "ModifyInstanceCapacityReservationAttributes"
    "fixture/ModifyInstanceCapacityReservationAttributes.yaml"

requestImportClientVPNClientCertificateRevocationList :: ImportClientVPNClientCertificateRevocationList -> TestTree
requestImportClientVPNClientCertificateRevocationList =
  req
    "ImportClientVPNClientCertificateRevocationList"
    "fixture/ImportClientVPNClientCertificateRevocationList.yaml"

requestAssociateClientVPNTargetNetwork :: AssociateClientVPNTargetNetwork -> TestTree
requestAssociateClientVPNTargetNetwork =
  req
    "AssociateClientVPNTargetNetwork"
    "fixture/AssociateClientVPNTargetNetwork.yaml"

requestCancelCapacityReservation :: CancelCapacityReservation -> TestTree
requestCancelCapacityReservation =
  req
    "CancelCapacityReservation"
    "fixture/CancelCapacityReservation.yaml"

requestCancelReservedInstancesListing :: CancelReservedInstancesListing -> TestTree
requestCancelReservedInstancesListing =
  req
    "CancelReservedInstancesListing"
    "fixture/CancelReservedInstancesListing.yaml"

requestDisableTransitGatewayRouteTablePropagation :: DisableTransitGatewayRouteTablePropagation -> TestTree
requestDisableTransitGatewayRouteTablePropagation =
  req
    "DisableTransitGatewayRouteTablePropagation"
    "fixture/DisableTransitGatewayRouteTablePropagation.yaml"

requestDescribeVPCClassicLinkDNSSupport :: DescribeVPCClassicLinkDNSSupport -> TestTree
requestDescribeVPCClassicLinkDNSSupport =
  req
    "DescribeVPCClassicLinkDNSSupport"
    "fixture/DescribeVPCClassicLinkDNSSupport.yaml"

requestCreateVPCEndpoint :: CreateVPCEndpoint -> TestTree
requestCreateVPCEndpoint =
  req
    "CreateVPCEndpoint"
    "fixture/CreateVPCEndpoint.yaml"

requestDescribeSnapshots :: DescribeSnapshots -> TestTree
requestDescribeSnapshots =
  req
    "DescribeSnapshots"
    "fixture/DescribeSnapshots.yaml"

requestDescribeImportSnapshotTasks :: DescribeImportSnapshotTasks -> TestTree
requestDescribeImportSnapshotTasks =
  req
    "DescribeImportSnapshotTasks"
    "fixture/DescribeImportSnapshotTasks.yaml"

requestDescribeNetworkInterfaceAttribute :: DescribeNetworkInterfaceAttribute -> TestTree
requestDescribeNetworkInterfaceAttribute =
  req
    "DescribeNetworkInterfaceAttribute"
    "fixture/DescribeNetworkInterfaceAttribute.yaml"

requestDescribeInstanceEventNotificationAttributes :: DescribeInstanceEventNotificationAttributes -> TestTree
requestDescribeInstanceEventNotificationAttributes =
  req
    "DescribeInstanceEventNotificationAttributes"
    "fixture/DescribeInstanceEventNotificationAttributes.yaml"

requestEnableEBSEncryptionByDefault :: EnableEBSEncryptionByDefault -> TestTree
requestEnableEBSEncryptionByDefault =
  req
    "EnableEBSEncryptionByDefault"
    "fixture/EnableEBSEncryptionByDefault.yaml"

requestModifyTrafficMirrorFilterRule :: ModifyTrafficMirrorFilterRule -> TestTree
requestModifyTrafficMirrorFilterRule =
  req
    "ModifyTrafficMirrorFilterRule"
    "fixture/ModifyTrafficMirrorFilterRule.yaml"

requestDescribeCoipPools :: DescribeCoipPools -> TestTree
requestDescribeCoipPools =
  req
    "DescribeCoipPools"
    "fixture/DescribeCoipPools.yaml"

requestCancelExportTask :: CancelExportTask -> TestTree
requestCancelExportTask =
  req
    "CancelExportTask"
    "fixture/CancelExportTask.yaml"

requestEnableVolumeIO :: EnableVolumeIO -> TestTree
requestEnableVolumeIO =
  req
    "EnableVolumeIO"
    "fixture/EnableVolumeIO.yaml"

requestModifyTransitGateway :: ModifyTransitGateway -> TestTree
requestModifyTransitGateway =
  req
    "ModifyTransitGateway"
    "fixture/ModifyTransitGateway.yaml"

requestDescribeInstanceTypeOfferings :: DescribeInstanceTypeOfferings -> TestTree
requestDescribeInstanceTypeOfferings =
  req
    "DescribeInstanceTypeOfferings"
    "fixture/DescribeInstanceTypeOfferings.yaml"

requestCreateSubnet :: CreateSubnet -> TestTree
requestCreateSubnet =
  req
    "CreateSubnet"
    "fixture/CreateSubnet.yaml"

requestRequestSpotFleet :: RequestSpotFleet -> TestTree
requestRequestSpotFleet =
  req
    "RequestSpotFleet"
    "fixture/RequestSpotFleet.yaml"

requestDeleteVPNConnection :: DeleteVPNConnection -> TestTree
requestDeleteVPNConnection =
  req
    "DeleteVPNConnection"
    "fixture/DeleteVPNConnection.yaml"

requestModifySpotFleetRequest :: ModifySpotFleetRequest -> TestTree
requestModifySpotFleetRequest =
  req
    "ModifySpotFleetRequest"
    "fixture/ModifySpotFleetRequest.yaml"

requestDeregisterImage :: DeregisterImage -> TestTree
requestDeregisterImage =
  req
    "DeregisterImage"
    "fixture/DeregisterImage.yaml"

requestDetachVPNGateway :: DetachVPNGateway -> TestTree
requestDetachVPNGateway =
  req
    "DetachVPNGateway"
    "fixture/DetachVPNGateway.yaml"

requestCreateNetworkInterface :: CreateNetworkInterface -> TestTree
requestCreateNetworkInterface =
  req
    "CreateNetworkInterface"
    "fixture/CreateNetworkInterface.yaml"

requestModifyNetworkInterfaceAttribute :: ModifyNetworkInterfaceAttribute -> TestTree
requestModifyNetworkInterfaceAttribute =
  req
    "ModifyNetworkInterfaceAttribute"
    "fixture/ModifyNetworkInterfaceAttribute.yaml"

requestCreateNatGateway :: CreateNatGateway -> TestTree
requestCreateNatGateway =
  req
    "CreateNatGateway"
    "fixture/CreateNatGateway.yaml"

requestGetAssociatedEnclaveCertificateIAMRoles :: GetAssociatedEnclaveCertificateIAMRoles -> TestTree
requestGetAssociatedEnclaveCertificateIAMRoles =
  req
    "GetAssociatedEnclaveCertificateIAMRoles"
    "fixture/GetAssociatedEnclaveCertificateIAMRoles.yaml"

requestCreateInternetGateway :: CreateInternetGateway -> TestTree
requestCreateInternetGateway =
  req
    "CreateInternetGateway"
    "fixture/CreateInternetGateway.yaml"

requestEnableTransitGatewayRouteTablePropagation :: EnableTransitGatewayRouteTablePropagation -> TestTree
requestEnableTransitGatewayRouteTablePropagation =
  req
    "EnableTransitGatewayRouteTablePropagation"
    "fixture/EnableTransitGatewayRouteTablePropagation.yaml"

requestResetAddressAttribute :: ResetAddressAttribute -> TestTree
requestResetAddressAttribute =
  req
    "ResetAddressAttribute"
    "fixture/ResetAddressAttribute.yaml"

requestDescribeTransitGatewayConnects :: DescribeTransitGatewayConnects -> TestTree
requestDescribeTransitGatewayConnects =
  req
    "DescribeTransitGatewayConnects"
    "fixture/DescribeTransitGatewayConnects.yaml"

requestDeletePlacementGroup :: DeletePlacementGroup -> TestTree
requestDeletePlacementGroup =
  req
    "DeletePlacementGroup"
    "fixture/DeletePlacementGroup.yaml"

requestDescribeInstanceTypes :: DescribeInstanceTypes -> TestTree
requestDescribeInstanceTypes =
  req
    "DescribeInstanceTypes"
    "fixture/DescribeInstanceTypes.yaml"

requestDescribeBundleTasks :: DescribeBundleTasks -> TestTree
requestDescribeBundleTasks =
  req
    "DescribeBundleTasks"
    "fixture/DescribeBundleTasks.yaml"

requestModifySubnetAttribute :: ModifySubnetAttribute -> TestTree
requestModifySubnetAttribute =
  req
    "ModifySubnetAttribute"
    "fixture/ModifySubnetAttribute.yaml"

requestDescribeSecurityGroups :: DescribeSecurityGroups -> TestTree
requestDescribeSecurityGroups =
  req
    "DescribeSecurityGroups"
    "fixture/DescribeSecurityGroups.yaml"

requestCreateClientVPNRoute :: CreateClientVPNRoute -> TestTree
requestCreateClientVPNRoute =
  req
    "CreateClientVPNRoute"
    "fixture/CreateClientVPNRoute.yaml"

requestDisassociateSubnetCidrBlock :: DisassociateSubnetCidrBlock -> TestTree
requestDisassociateSubnetCidrBlock =
  req
    "DisassociateSubnetCidrBlock"
    "fixture/DisassociateSubnetCidrBlock.yaml"

requestDescribeSpotDatafeedSubscription :: DescribeSpotDatafeedSubscription -> TestTree
requestDescribeSpotDatafeedSubscription =
  req
    "DescribeSpotDatafeedSubscription"
    "fixture/DescribeSpotDatafeedSubscription.yaml"

requestCreateInstanceExportTask :: CreateInstanceExportTask -> TestTree
requestCreateInstanceExportTask =
  req
    "CreateInstanceExportTask"
    "fixture/CreateInstanceExportTask.yaml"

requestDisassociateClientVPNTargetNetwork :: DisassociateClientVPNTargetNetwork -> TestTree
requestDisassociateClientVPNTargetNetwork =
  req
    "DisassociateClientVPNTargetNetwork"
    "fixture/DisassociateClientVPNTargetNetwork.yaml"

requestSendDiagnosticInterrupt :: SendDiagnosticInterrupt -> TestTree
requestSendDiagnosticInterrupt =
  req
    "SendDiagnosticInterrupt"
    "fixture/SendDiagnosticInterrupt.yaml"

requestDescribeVPCAttribute :: DescribeVPCAttribute -> TestTree
requestDescribeVPCAttribute =
  req
    "DescribeVPCAttribute"
    "fixture/DescribeVPCAttribute.yaml"

requestDescribeSecurityGroupReferences :: DescribeSecurityGroupReferences -> TestTree
requestDescribeSecurityGroupReferences =
  req
    "DescribeSecurityGroupReferences"
    "fixture/DescribeSecurityGroupReferences.yaml"

requestModifyCapacityReservation :: ModifyCapacityReservation -> TestTree
requestModifyCapacityReservation =
  req
    "ModifyCapacityReservation"
    "fixture/ModifyCapacityReservation.yaml"

requestDetachInternetGateway :: DetachInternetGateway -> TestTree
requestDetachInternetGateway =
  req
    "DetachInternetGateway"
    "fixture/DetachInternetGateway.yaml"

requestCreateVolume :: CreateVolume -> TestTree
requestCreateVolume =
  req
    "CreateVolume"
    "fixture/CreateVolume.yaml"

requestExportClientVPNClientConfiguration :: ExportClientVPNClientConfiguration -> TestTree
requestExportClientVPNClientConfiguration =
  req
    "ExportClientVPNClientConfiguration"
    "fixture/ExportClientVPNClientConfiguration.yaml"

requestRevokeSecurityGroupEgress :: RevokeSecurityGroupEgress -> TestTree
requestRevokeSecurityGroupEgress =
  req
    "RevokeSecurityGroupEgress"
    "fixture/RevokeSecurityGroupEgress.yaml"

requestDeleteKeyPair :: DeleteKeyPair -> TestTree
requestDeleteKeyPair =
  req
    "DeleteKeyPair"
    "fixture/DeleteKeyPair.yaml"

requestModifyInstanceMetadataOptions :: ModifyInstanceMetadataOptions -> TestTree
requestModifyInstanceMetadataOptions =
  req
    "ModifyInstanceMetadataOptions"
    "fixture/ModifyInstanceMetadataOptions.yaml"

requestDescribeEgressOnlyInternetGateways :: DescribeEgressOnlyInternetGateways -> TestTree
requestDescribeEgressOnlyInternetGateways =
  req
    "DescribeEgressOnlyInternetGateways"
    "fixture/DescribeEgressOnlyInternetGateways.yaml"

requestModifyTrafficMirrorFilterNetworkServices :: ModifyTrafficMirrorFilterNetworkServices -> TestTree
requestModifyTrafficMirrorFilterNetworkServices =
  req
    "ModifyTrafficMirrorFilterNetworkServices"
    "fixture/ModifyTrafficMirrorFilterNetworkServices.yaml"

requestImportSnapshot :: ImportSnapshot -> TestTree
requestImportSnapshot =
  req
    "ImportSnapshot"
    "fixture/ImportSnapshot.yaml"

requestDescribeImages :: DescribeImages -> TestTree
requestDescribeImages =
  req
    "DescribeImages"
    "fixture/DescribeImages.yaml"

requestDeprovisionByoipCidr :: DeprovisionByoipCidr -> TestTree
requestDeprovisionByoipCidr =
  req
    "DeprovisionByoipCidr"
    "fixture/DeprovisionByoipCidr.yaml"

requestDescribeAddressesAttribute :: DescribeAddressesAttribute -> TestTree
requestDescribeAddressesAttribute =
  req
    "DescribeAddressesAttribute"
    "fixture/DescribeAddressesAttribute.yaml"

requestAcceptVPCPeeringConnection :: AcceptVPCPeeringConnection -> TestTree
requestAcceptVPCPeeringConnection =
  req
    "AcceptVPCPeeringConnection"
    "fixture/AcceptVPCPeeringConnection.yaml"

requestDescribeMovingAddresses :: DescribeMovingAddresses -> TestTree
requestDescribeMovingAddresses =
  req
    "DescribeMovingAddresses"
    "fixture/DescribeMovingAddresses.yaml"

requestCreateVPCEndpointConnectionNotification :: CreateVPCEndpointConnectionNotification -> TestTree
requestCreateVPCEndpointConnectionNotification =
  req
    "CreateVPCEndpointConnectionNotification"
    "fixture/CreateVPCEndpointConnectionNotification.yaml"

requestDescribeFleetHistory :: DescribeFleetHistory -> TestTree
requestDescribeFleetHistory =
  req
    "DescribeFleetHistory"
    "fixture/DescribeFleetHistory.yaml"

requestDeleteVPCEndpointServiceConfigurations :: DeleteVPCEndpointServiceConfigurations -> TestTree
requestDeleteVPCEndpointServiceConfigurations =
  req
    "DeleteVPCEndpointServiceConfigurations"
    "fixture/DeleteVPCEndpointServiceConfigurations.yaml"

requestCreateVPC :: CreateVPC -> TestTree
requestCreateVPC =
  req
    "CreateVPC"
    "fixture/CreateVPC.yaml"

requestSearchLocalGatewayRoutes :: SearchLocalGatewayRoutes -> TestTree
requestSearchLocalGatewayRoutes =
  req
    "SearchLocalGatewayRoutes"
    "fixture/SearchLocalGatewayRoutes.yaml"

requestCreateTrafficMirrorTarget :: CreateTrafficMirrorTarget -> TestTree
requestCreateTrafficMirrorTarget =
  req
    "CreateTrafficMirrorTarget"
    "fixture/CreateTrafficMirrorTarget.yaml"

requestDescribeVolumeStatus :: DescribeVolumeStatus -> TestTree
requestDescribeVolumeStatus =
  req
    "DescribeVolumeStatus"
    "fixture/DescribeVolumeStatus.yaml"

requestDescribeVolumeAttribute :: DescribeVolumeAttribute -> TestTree
requestDescribeVolumeAttribute =
  req
    "DescribeVolumeAttribute"
    "fixture/DescribeVolumeAttribute.yaml"

requestDeleteClientVPNRoute :: DeleteClientVPNRoute -> TestTree
requestDeleteClientVPNRoute =
  req
    "DeleteClientVPNRoute"
    "fixture/DeleteClientVPNRoute.yaml"

requestModifyVPCPeeringConnectionOptions :: ModifyVPCPeeringConnectionOptions -> TestTree
requestModifyVPCPeeringConnectionOptions =
  req
    "ModifyVPCPeeringConnectionOptions"
    "fixture/ModifyVPCPeeringConnectionOptions.yaml"

requestDescribeSpotFleetInstances :: DescribeSpotFleetInstances -> TestTree
requestDescribeSpotFleetInstances =
  req
    "DescribeSpotFleetInstances"
    "fixture/DescribeSpotFleetInstances.yaml"

requestDescribePrincipalIdFormat :: DescribePrincipalIdFormat -> TestTree
requestDescribePrincipalIdFormat =
  req
    "DescribePrincipalIdFormat"
    "fixture/DescribePrincipalIdFormat.yaml"

requestModifyInstanceCreditSpecification :: ModifyInstanceCreditSpecification -> TestTree
requestModifyInstanceCreditSpecification =
  req
    "ModifyInstanceCreditSpecification"
    "fixture/ModifyInstanceCreditSpecification.yaml"

requestDisassociateTransitGatewayMulticastDomain :: DisassociateTransitGatewayMulticastDomain -> TestTree
requestDisassociateTransitGatewayMulticastDomain =
  req
    "DisassociateTransitGatewayMulticastDomain"
    "fixture/DisassociateTransitGatewayMulticastDomain.yaml"

requestDescribeManagedPrefixLists :: DescribeManagedPrefixLists -> TestTree
requestDescribeManagedPrefixLists =
  req
    "DescribeManagedPrefixLists"
    "fixture/DescribeManagedPrefixLists.yaml"

requestGetPasswordData :: GetPasswordData -> TestTree
requestGetPasswordData =
  req
    "GetPasswordData"
    "fixture/GetPasswordData.yaml"

requestDeleteVolume :: DeleteVolume -> TestTree
requestDeleteVolume =
  req
    "DeleteVolume"
    "fixture/DeleteVolume.yaml"

requestDescribeTransitGateways :: DescribeTransitGateways -> TestTree
requestDescribeTransitGateways =
  req
    "DescribeTransitGateways"
    "fixture/DescribeTransitGateways.yaml"

requestDescribeSpotFleetRequests :: DescribeSpotFleetRequests -> TestTree
requestDescribeSpotFleetRequests =
  req
    "DescribeSpotFleetRequests"
    "fixture/DescribeSpotFleetRequests.yaml"

requestDescribeClientVPNConnections :: DescribeClientVPNConnections -> TestTree
requestDescribeClientVPNConnections =
  req
    "DescribeClientVPNConnections"
    "fixture/DescribeClientVPNConnections.yaml"

requestSearchTransitGatewayMulticastGroups :: SearchTransitGatewayMulticastGroups -> TestTree
requestSearchTransitGatewayMulticastGroups =
  req
    "SearchTransitGatewayMulticastGroups"
    "fixture/SearchTransitGatewayMulticastGroups.yaml"

requestModifyVPCAttribute :: ModifyVPCAttribute -> TestTree
requestModifyVPCAttribute =
  req
    "ModifyVPCAttribute"
    "fixture/ModifyVPCAttribute.yaml"

requestRevokeSecurityGroupIngress :: RevokeSecurityGroupIngress -> TestTree
requestRevokeSecurityGroupIngress =
  req
    "RevokeSecurityGroupIngress"
    "fixture/RevokeSecurityGroupIngress.yaml"

requestDescribeHostReservationOfferings :: DescribeHostReservationOfferings -> TestTree
requestDescribeHostReservationOfferings =
  req
    "DescribeHostReservationOfferings"
    "fixture/DescribeHostReservationOfferings.yaml"

requestDescribeTransitGatewayRouteTables :: DescribeTransitGatewayRouteTables -> TestTree
requestDescribeTransitGatewayRouteTables =
  req
    "DescribeTransitGatewayRouteTables"
    "fixture/DescribeTransitGatewayRouteTables.yaml"

requestDescribeNetworkACLs :: DescribeNetworkACLs -> TestTree
requestDescribeNetworkACLs =
  req
    "DescribeNetworkACLs"
    "fixture/DescribeNetworkACLs.yaml"

requestRegisterTransitGatewayMulticastGroupMembers :: RegisterTransitGatewayMulticastGroupMembers -> TestTree
requestRegisterTransitGatewayMulticastGroupMembers =
  req
    "RegisterTransitGatewayMulticastGroupMembers"
    "fixture/RegisterTransitGatewayMulticastGroupMembers.yaml"

requestDescribeHosts :: DescribeHosts -> TestTree
requestDescribeHosts =
  req
    "DescribeHosts"
    "fixture/DescribeHosts.yaml"

requestDescribeVPNGateways :: DescribeVPNGateways -> TestTree
requestDescribeVPNGateways =
  req
    "DescribeVPNGateways"
    "fixture/DescribeVPNGateways.yaml"

requestDescribeHostReservations :: DescribeHostReservations -> TestTree
requestDescribeHostReservations =
  req
    "DescribeHostReservations"
    "fixture/DescribeHostReservations.yaml"

requestDeleteManagedPrefixList :: DeleteManagedPrefixList -> TestTree
requestDeleteManagedPrefixList =
  req
    "DeleteManagedPrefixList"
    "fixture/DeleteManagedPrefixList.yaml"

requestRejectVPCPeeringConnection :: RejectVPCPeeringConnection -> TestTree
requestRejectVPCPeeringConnection =
  req
    "RejectVPCPeeringConnection"
    "fixture/RejectVPCPeeringConnection.yaml"

requestResetImageAttribute :: ResetImageAttribute -> TestTree
requestResetImageAttribute =
  req
    "ResetImageAttribute"
    "fixture/ResetImageAttribute.yaml"

requestDescribeScheduledInstances :: DescribeScheduledInstances -> TestTree
requestDescribeScheduledInstances =
  req
    "DescribeScheduledInstances"
    "fixture/DescribeScheduledInstances.yaml"

requestAssociateEnclaveCertificateIAMRole :: AssociateEnclaveCertificateIAMRole -> TestTree
requestAssociateEnclaveCertificateIAMRole =
  req
    "AssociateEnclaveCertificateIAMRole"
    "fixture/AssociateEnclaveCertificateIAMRole.yaml"

requestModifyTransitGatewayPrefixListReference :: ModifyTransitGatewayPrefixListReference -> TestTree
requestModifyTransitGatewayPrefixListReference =
  req
    "ModifyTransitGatewayPrefixListReference"
    "fixture/ModifyTransitGatewayPrefixListReference.yaml"

requestDescribeFpgaImageAttribute :: DescribeFpgaImageAttribute -> TestTree
requestDescribeFpgaImageAttribute =
  req
    "DescribeFpgaImageAttribute"
    "fixture/DescribeFpgaImageAttribute.yaml"

requestAdvertiseByoipCidr :: AdvertiseByoipCidr -> TestTree
requestAdvertiseByoipCidr =
  req
    "AdvertiseByoipCidr"
    "fixture/AdvertiseByoipCidr.yaml"

requestDeleteVPNConnectionRoute :: DeleteVPNConnectionRoute -> TestTree
requestDeleteVPNConnectionRoute =
  req
    "DeleteVPNConnectionRoute"
    "fixture/DeleteVPNConnectionRoute.yaml"

requestDescribeVPCEndpointServicePermissions :: DescribeVPCEndpointServicePermissions -> TestTree
requestDescribeVPCEndpointServicePermissions =
  req
    "DescribeVPCEndpointServicePermissions"
    "fixture/DescribeVPCEndpointServicePermissions.yaml"

requestDescribeVPCEndpointConnections :: DescribeVPCEndpointConnections -> TestTree
requestDescribeVPCEndpointConnections =
  req
    "DescribeVPCEndpointConnections"
    "fixture/DescribeVPCEndpointConnections.yaml"

requestDescribeNetworkInterfacePermissions :: DescribeNetworkInterfacePermissions -> TestTree
requestDescribeNetworkInterfacePermissions =
  req
    "DescribeNetworkInterfacePermissions"
    "fixture/DescribeNetworkInterfacePermissions.yaml"

requestCreateTrafficMirrorSession :: CreateTrafficMirrorSession -> TestTree
requestCreateTrafficMirrorSession =
  req
    "CreateTrafficMirrorSession"
    "fixture/CreateTrafficMirrorSession.yaml"

requestRegisterInstanceEventNotificationAttributes :: RegisterInstanceEventNotificationAttributes -> TestTree
requestRegisterInstanceEventNotificationAttributes =
  req
    "RegisterInstanceEventNotificationAttributes"
    "fixture/RegisterInstanceEventNotificationAttributes.yaml"

requestRejectTransitGatewayMulticastDomainAssociations :: RejectTransitGatewayMulticastDomainAssociations -> TestTree
requestRejectTransitGatewayMulticastDomainAssociations =
  req
    "RejectTransitGatewayMulticastDomainAssociations"
    "fixture/RejectTransitGatewayMulticastDomainAssociations.yaml"

requestDeleteDHCPOptions :: DeleteDHCPOptions -> TestTree
requestDeleteDHCPOptions =
  req
    "DeleteDHCPOptions"
    "fixture/DeleteDHCPOptions.yaml"

requestDeleteTransitGateway :: DeleteTransitGateway -> TestTree
requestDeleteTransitGateway =
  req
    "DeleteTransitGateway"
    "fixture/DeleteTransitGateway.yaml"

requestEnableVPCClassicLinkDNSSupport :: EnableVPCClassicLinkDNSSupport -> TestTree
requestEnableVPCClassicLinkDNSSupport =
  req
    "EnableVPCClassicLinkDNSSupport"
    "fixture/EnableVPCClassicLinkDNSSupport.yaml"

requestDescribeRegions :: DescribeRegions -> TestTree
requestDescribeRegions =
  req
    "DescribeRegions"
    "fixture/DescribeRegions.yaml"

requestCreateEgressOnlyInternetGateway :: CreateEgressOnlyInternetGateway -> TestTree
requestCreateEgressOnlyInternetGateway =
  req
    "CreateEgressOnlyInternetGateway"
    "fixture/CreateEgressOnlyInternetGateway.yaml"

requestCreateTransitGateway :: CreateTransitGateway -> TestTree
requestCreateTransitGateway =
  req
    "CreateTransitGateway"
    "fixture/CreateTransitGateway.yaml"

requestDeleteClientVPNEndpoint :: DeleteClientVPNEndpoint -> TestTree
requestDeleteClientVPNEndpoint =
  req
    "DeleteClientVPNEndpoint"
    "fixture/DeleteClientVPNEndpoint.yaml"

requestExportClientVPNClientCertificateRevocationList :: ExportClientVPNClientCertificateRevocationList -> TestTree
requestExportClientVPNClientCertificateRevocationList =
  req
    "ExportClientVPNClientCertificateRevocationList"
    "fixture/ExportClientVPNClientCertificateRevocationList.yaml"

requestCreateLaunchTemplateVersion :: CreateLaunchTemplateVersion -> TestTree
requestCreateLaunchTemplateVersion =
  req
    "CreateLaunchTemplateVersion"
    "fixture/CreateLaunchTemplateVersion.yaml"

requestCreateSnapshots :: CreateSnapshots -> TestTree
requestCreateSnapshots =
  req
    "CreateSnapshots"
    "fixture/CreateSnapshots.yaml"

requestModifyDefaultCreditSpecification :: ModifyDefaultCreditSpecification -> TestTree
requestModifyDefaultCreditSpecification =
  req
    "ModifyDefaultCreditSpecification"
    "fixture/ModifyDefaultCreditSpecification.yaml"

requestApplySecurityGroupsToClientVPNTargetNetwork :: ApplySecurityGroupsToClientVPNTargetNetwork -> TestTree
requestApplySecurityGroupsToClientVPNTargetNetwork =
  req
    "ApplySecurityGroupsToClientVPNTargetNetwork"
    "fixture/ApplySecurityGroupsToClientVPNTargetNetwork.yaml"

requestAttachVPNGateway :: AttachVPNGateway -> TestTree
requestAttachVPNGateway =
  req
    "AttachVPNGateway"
    "fixture/AttachVPNGateway.yaml"

requestCreateVPNConnectionRoute :: CreateVPNConnectionRoute -> TestTree
requestCreateVPNConnectionRoute =
  req
    "CreateVPNConnectionRoute"
    "fixture/CreateVPNConnectionRoute.yaml"

requestDescribeKeyPairs :: DescribeKeyPairs -> TestTree
requestDescribeKeyPairs =
  req
    "DescribeKeyPairs"
    "fixture/DescribeKeyPairs.yaml"

requestAllocateAddress :: AllocateAddress -> TestTree
requestAllocateAddress =
  req
    "AllocateAddress"
    "fixture/AllocateAddress.yaml"

requestDeleteTrafficMirrorSession :: DeleteTrafficMirrorSession -> TestTree
requestDeleteTrafficMirrorSession =
  req
    "DeleteTrafficMirrorSession"
    "fixture/DeleteTrafficMirrorSession.yaml"

requestGetManagedPrefixListEntries :: GetManagedPrefixListEntries -> TestTree
requestGetManagedPrefixListEntries =
  req
    "GetManagedPrefixListEntries"
    "fixture/GetManagedPrefixListEntries.yaml"

requestCreateFpgaImage :: CreateFpgaImage -> TestTree
requestCreateFpgaImage =
  req
    "CreateFpgaImage"
    "fixture/CreateFpgaImage.yaml"

requestExportImage :: ExportImage -> TestTree
requestExportImage =
  req
    "ExportImage"
    "fixture/ExportImage.yaml"

requestRejectTransitGatewayPeeringAttachment :: RejectTransitGatewayPeeringAttachment -> TestTree
requestRejectTransitGatewayPeeringAttachment =
  req
    "RejectTransitGatewayPeeringAttachment"
    "fixture/RejectTransitGatewayPeeringAttachment.yaml"

requestDescribeConversionTasks :: DescribeConversionTasks -> TestTree
requestDescribeConversionTasks =
  req
    "DescribeConversionTasks"
    "fixture/DescribeConversionTasks.yaml"

requestWithdrawByoipCidr :: WithdrawByoipCidr -> TestTree
requestWithdrawByoipCidr =
  req
    "WithdrawByoipCidr"
    "fixture/WithdrawByoipCidr.yaml"

requestDeleteTrafficMirrorFilterRule :: DeleteTrafficMirrorFilterRule -> TestTree
requestDeleteTrafficMirrorFilterRule =
  req
    "DeleteTrafficMirrorFilterRule"
    "fixture/DeleteTrafficMirrorFilterRule.yaml"

requestDescribeClassicLinkInstances :: DescribeClassicLinkInstances -> TestTree
requestDescribeClassicLinkInstances =
  req
    "DescribeClassicLinkInstances"
    "fixture/DescribeClassicLinkInstances.yaml"

requestTerminateInstances :: TerminateInstances -> TestTree
requestTerminateInstances =
  req
    "TerminateInstances"
    "fixture/TerminateInstances.yaml"

requestAcceptTransitGatewayVPCAttachment :: AcceptTransitGatewayVPCAttachment -> TestTree
requestAcceptTransitGatewayVPCAttachment =
  req
    "AcceptTransitGatewayVPCAttachment"
    "fixture/AcceptTransitGatewayVPCAttachment.yaml"

requestDisableVPCClassicLinkDNSSupport :: DisableVPCClassicLinkDNSSupport -> TestTree
requestDisableVPCClassicLinkDNSSupport =
  req
    "DisableVPCClassicLinkDNSSupport"
    "fixture/DisableVPCClassicLinkDNSSupport.yaml"

requestGetLaunchTemplateData :: GetLaunchTemplateData -> TestTree
requestGetLaunchTemplateData =
  req
    "GetLaunchTemplateData"
    "fixture/GetLaunchTemplateData.yaml"

requestDescribeReservedInstances :: DescribeReservedInstances -> TestTree
requestDescribeReservedInstances =
  req
    "DescribeReservedInstances"
    "fixture/DescribeReservedInstances.yaml"

requestModifyFpgaImageAttribute :: ModifyFpgaImageAttribute -> TestTree
requestModifyFpgaImageAttribute =
  req
    "ModifyFpgaImageAttribute"
    "fixture/ModifyFpgaImageAttribute.yaml"

requestEnableVPCClassicLink :: EnableVPCClassicLink -> TestTree
requestEnableVPCClassicLink =
  req
    "EnableVPCClassicLink"
    "fixture/EnableVPCClassicLink.yaml"

requestAttachInternetGateway :: AttachInternetGateway -> TestTree
requestAttachInternetGateway =
  req
    "AttachInternetGateway"
    "fixture/AttachInternetGateway.yaml"

requestDescribePublicIPv4Pools :: DescribePublicIPv4Pools -> TestTree
requestDescribePublicIPv4Pools =
  req
    "DescribePublicIPv4Pools"
    "fixture/DescribePublicIPv4Pools.yaml"

requestCreateCustomerGateway :: CreateCustomerGateway -> TestTree
requestCreateCustomerGateway =
  req
    "CreateCustomerGateway"
    "fixture/CreateCustomerGateway.yaml"

requestDescribeIAMInstanceProfileAssociations :: DescribeIAMInstanceProfileAssociations -> TestTree
requestDescribeIAMInstanceProfileAssociations =
  req
    "DescribeIAMInstanceProfileAssociations"
    "fixture/DescribeIAMInstanceProfileAssociations.yaml"

requestDescribeExportImageTasks :: DescribeExportImageTasks -> TestTree
requestDescribeExportImageTasks =
  req
    "DescribeExportImageTasks"
    "fixture/DescribeExportImageTasks.yaml"

requestProvisionByoipCidr :: ProvisionByoipCidr -> TestTree
requestProvisionByoipCidr =
  req
    "ProvisionByoipCidr"
    "fixture/ProvisionByoipCidr.yaml"

requestCreateReservedInstancesListing :: CreateReservedInstancesListing -> TestTree
requestCreateReservedInstancesListing =
  req
    "CreateReservedInstancesListing"
    "fixture/CreateReservedInstancesListing.yaml"

requestDescribeClientVPNTargetNetworks :: DescribeClientVPNTargetNetworks -> TestTree
requestDescribeClientVPNTargetNetworks =
  req
    "DescribeClientVPNTargetNetworks"
    "fixture/DescribeClientVPNTargetNetworks.yaml"

requestModifyVPNTunnelOptions :: ModifyVPNTunnelOptions -> TestTree
requestModifyVPNTunnelOptions =
  req
    "ModifyVPNTunnelOptions"
    "fixture/ModifyVPNTunnelOptions.yaml"

requestModifyInstancePlacement :: ModifyInstancePlacement -> TestTree
requestModifyInstancePlacement =
  req
    "ModifyInstancePlacement"
    "fixture/ModifyInstancePlacement.yaml"

requestImportKeyPair :: ImportKeyPair -> TestTree
requestImportKeyPair =
  req
    "ImportKeyPair"
    "fixture/ImportKeyPair.yaml"

requestDescribeNetworkInsightsAnalyses :: DescribeNetworkInsightsAnalyses -> TestTree
requestDescribeNetworkInsightsAnalyses =
  req
    "DescribeNetworkInsightsAnalyses"
    "fixture/DescribeNetworkInsightsAnalyses.yaml"

requestDeleteSecurityGroup :: DeleteSecurityGroup -> TestTree
requestDeleteSecurityGroup =
  req
    "DeleteSecurityGroup"
    "fixture/DeleteSecurityGroup.yaml"

requestCreateCarrierGateway :: CreateCarrierGateway -> TestTree
requestCreateCarrierGateway =
  req
    "CreateCarrierGateway"
    "fixture/CreateCarrierGateway.yaml"

requestCreateSnapshot :: CreateSnapshot -> TestTree
requestCreateSnapshot =
  req
    "CreateSnapshot"
    "fixture/CreateSnapshot.yaml"

requestModifyVolume :: ModifyVolume -> TestTree
requestModifyVolume =
  req
    "ModifyVolume"
    "fixture/ModifyVolume.yaml"

requestDeleteNetworkInsightsAnalysis :: DeleteNetworkInsightsAnalysis -> TestTree
requestDeleteNetworkInsightsAnalysis =
  req
    "DeleteNetworkInsightsAnalysis"
    "fixture/DeleteNetworkInsightsAnalysis.yaml"

requestDescribeLocalGatewayRouteTableVPCAssociations :: DescribeLocalGatewayRouteTableVPCAssociations -> TestTree
requestDescribeLocalGatewayRouteTableVPCAssociations =
  req
    "DescribeLocalGatewayRouteTableVPCAssociations"
    "fixture/DescribeLocalGatewayRouteTableVPCAssociations.yaml"

requestCreateTrafficMirrorFilter :: CreateTrafficMirrorFilter -> TestTree
requestCreateTrafficMirrorFilter =
  req
    "CreateTrafficMirrorFilter"
    "fixture/CreateTrafficMirrorFilter.yaml"

requestDeleteSpotDatafeedSubscription :: DeleteSpotDatafeedSubscription -> TestTree
requestDeleteSpotDatafeedSubscription =
  req
    "DeleteSpotDatafeedSubscription"
    "fixture/DeleteSpotDatafeedSubscription.yaml"

requestDescribeInstanceAttribute :: DescribeInstanceAttribute -> TestTree
requestDescribeInstanceAttribute =
  req
    "DescribeInstanceAttribute"
    "fixture/DescribeInstanceAttribute.yaml"

requestCreateCapacityReservation :: CreateCapacityReservation -> TestTree
requestCreateCapacityReservation =
  req
    "CreateCapacityReservation"
    "fixture/CreateCapacityReservation.yaml"

requestDeleteTransitGatewayConnect :: DeleteTransitGatewayConnect -> TestTree
requestDeleteTransitGatewayConnect =
  req
    "DeleteTransitGatewayConnect"
    "fixture/DeleteTransitGatewayConnect.yaml"

requestModifyEBSDefaultKMSKeyId :: ModifyEBSDefaultKMSKeyId -> TestTree
requestModifyEBSDefaultKMSKeyId =
  req
    "ModifyEBSDefaultKMSKeyId"
    "fixture/ModifyEBSDefaultKMSKeyId.yaml"

requestDeleteRoute :: DeleteRoute -> TestTree
requestDeleteRoute =
  req
    "DeleteRoute"
    "fixture/DeleteRoute.yaml"

requestDescribeNetworkInsightsPaths :: DescribeNetworkInsightsPaths -> TestTree
requestDescribeNetworkInsightsPaths =
  req
    "DescribeNetworkInsightsPaths"
    "fixture/DescribeNetworkInsightsPaths.yaml"

requestPurchaseScheduledInstances :: PurchaseScheduledInstances -> TestTree
requestPurchaseScheduledInstances =
  req
    "PurchaseScheduledInstances"
    "fixture/PurchaseScheduledInstances.yaml"

requestCreateTransitGatewayPeeringAttachment :: CreateTransitGatewayPeeringAttachment -> TestTree
requestCreateTransitGatewayPeeringAttachment =
  req
    "CreateTransitGatewayPeeringAttachment"
    "fixture/CreateTransitGatewayPeeringAttachment.yaml"

requestGetDefaultCreditSpecification :: GetDefaultCreditSpecification -> TestTree
requestGetDefaultCreditSpecification =
  req
    "GetDefaultCreditSpecification"
    "fixture/GetDefaultCreditSpecification.yaml"

requestDescribeInternetGateways :: DescribeInternetGateways -> TestTree
requestDescribeInternetGateways =
  req
    "DescribeInternetGateways"
    "fixture/DescribeInternetGateways.yaml"

requestModifyInstanceAttribute :: ModifyInstanceAttribute -> TestTree
requestModifyInstanceAttribute =
  req
    "ModifyInstanceAttribute"
    "fixture/ModifyInstanceAttribute.yaml"

requestCreateSecurityGroup :: CreateSecurityGroup -> TestTree
requestCreateSecurityGroup =
  req
    "CreateSecurityGroup"
    "fixture/CreateSecurityGroup.yaml"

requestCreateTransitGatewayConnect :: CreateTransitGatewayConnect -> TestTree
requestCreateTransitGatewayConnect =
  req
    "CreateTransitGatewayConnect"
    "fixture/CreateTransitGatewayConnect.yaml"

requestReplaceNetworkACLAssociation :: ReplaceNetworkACLAssociation -> TestTree
requestReplaceNetworkACLAssociation =
  req
    "ReplaceNetworkACLAssociation"
    "fixture/ReplaceNetworkACLAssociation.yaml"

requestCreateRoute :: CreateRoute -> TestTree
requestCreateRoute =
  req
    "CreateRoute"
    "fixture/CreateRoute.yaml"

requestDeleteLaunchTemplateVersions :: DeleteLaunchTemplateVersions -> TestTree
requestDeleteLaunchTemplateVersions =
  req
    "DeleteLaunchTemplateVersions"
    "fixture/DeleteLaunchTemplateVersions.yaml"

requestDescribeIdentityIdFormat :: DescribeIdentityIdFormat -> TestTree
requestDescribeIdentityIdFormat =
  req
    "DescribeIdentityIdFormat"
    "fixture/DescribeIdentityIdFormat.yaml"

requestDeleteTrafficMirrorFilter :: DeleteTrafficMirrorFilter -> TestTree
requestDeleteTrafficMirrorFilter =
  req
    "DeleteTrafficMirrorFilter"
    "fixture/DeleteTrafficMirrorFilter.yaml"

requestReplaceRoute :: ReplaceRoute -> TestTree
requestReplaceRoute =
  req
    "ReplaceRoute"
    "fixture/ReplaceRoute.yaml"

requestResetSnapshotAttribute :: ResetSnapshotAttribute -> TestTree
requestResetSnapshotAttribute =
  req
    "ResetSnapshotAttribute"
    "fixture/ResetSnapshotAttribute.yaml"

requestResetEBSDefaultKMSKeyId :: ResetEBSDefaultKMSKeyId -> TestTree
requestResetEBSDefaultKMSKeyId =
  req
    "ResetEBSDefaultKMSKeyId"
    "fixture/ResetEBSDefaultKMSKeyId.yaml"

requestCreateTags :: CreateTags -> TestTree
requestCreateTags =
  req
    "CreateTags"
    "fixture/CreateTags.yaml"

requestBundleInstance :: BundleInstance -> TestTree
requestBundleInstance =
  req
    "BundleInstance"
    "fixture/BundleInstance.yaml"

requestDeleteTransitGatewayPeeringAttachment :: DeleteTransitGatewayPeeringAttachment -> TestTree
requestDeleteTransitGatewayPeeringAttachment =
  req
    "DeleteTransitGatewayPeeringAttachment"
    "fixture/DeleteTransitGatewayPeeringAttachment.yaml"

requestAuthorizeClientVPNIngress :: AuthorizeClientVPNIngress -> TestTree
requestAuthorizeClientVPNIngress =
  req
    "AuthorizeClientVPNIngress"
    "fixture/AuthorizeClientVPNIngress.yaml"

requestModifyLaunchTemplate :: ModifyLaunchTemplate -> TestTree
requestModifyLaunchTemplate =
  req
    "ModifyLaunchTemplate"
    "fixture/ModifyLaunchTemplate.yaml"

requestDeleteCustomerGateway :: DeleteCustomerGateway -> TestTree
requestDeleteCustomerGateway =
  req
    "DeleteCustomerGateway"
    "fixture/DeleteCustomerGateway.yaml"

requestTerminateClientVPNConnections :: TerminateClientVPNConnections -> TestTree
requestTerminateClientVPNConnections =
  req
    "TerminateClientVPNConnections"
    "fixture/TerminateClientVPNConnections.yaml"

requestGetEBSEncryptionByDefault :: GetEBSEncryptionByDefault -> TestTree
requestGetEBSEncryptionByDefault =
  req
    "GetEBSEncryptionByDefault"
    "fixture/GetEBSEncryptionByDefault.yaml"

requestCreateVPCPeeringConnection :: CreateVPCPeeringConnection -> TestTree
requestCreateVPCPeeringConnection =
  req
    "CreateVPCPeeringConnection"
    "fixture/CreateVPCPeeringConnection.yaml"

requestDeleteTransitGatewayVPCAttachment :: DeleteTransitGatewayVPCAttachment -> TestTree
requestDeleteTransitGatewayVPCAttachment =
  req
    "DeleteTransitGatewayVPCAttachment"
    "fixture/DeleteTransitGatewayVPCAttachment.yaml"

requestReplaceIAMInstanceProfileAssociation :: ReplaceIAMInstanceProfileAssociation -> TestTree
requestReplaceIAMInstanceProfileAssociation =
  req
    "ReplaceIAMInstanceProfileAssociation"
    "fixture/ReplaceIAMInstanceProfileAssociation.yaml"

requestDeleteTransitGatewayConnectPeer :: DeleteTransitGatewayConnectPeer -> TestTree
requestDeleteTransitGatewayConnectPeer =
  req
    "DeleteTransitGatewayConnectPeer"
    "fixture/DeleteTransitGatewayConnectPeer.yaml"

requestAssociateAddress :: AssociateAddress -> TestTree
requestAssociateAddress =
  req
    "AssociateAddress"
    "fixture/AssociateAddress.yaml"

requestCancelSpotFleetRequests :: CancelSpotFleetRequests -> TestTree
requestCancelSpotFleetRequests =
  req
    "CancelSpotFleetRequests"
    "fixture/CancelSpotFleetRequests.yaml"

requestResetNetworkInterfaceAttribute :: ResetNetworkInterfaceAttribute -> TestTree
requestResetNetworkInterfaceAttribute =
  req
    "ResetNetworkInterfaceAttribute"
    "fixture/ResetNetworkInterfaceAttribute.yaml"

requestStartInstances :: StartInstances -> TestTree
requestStartInstances =
  req
    "StartInstances"
    "fixture/StartInstances.yaml"

requestDisassociateTransitGatewayRouteTable :: DisassociateTransitGatewayRouteTable -> TestTree
requestDisassociateTransitGatewayRouteTable =
  req
    "DisassociateTransitGatewayRouteTable"
    "fixture/DisassociateTransitGatewayRouteTable.yaml"

requestCopyFpgaImage :: CopyFpgaImage -> TestTree
requestCopyFpgaImage =
  req
    "CopyFpgaImage"
    "fixture/CopyFpgaImage.yaml"

requestReleaseHosts :: ReleaseHosts -> TestTree
requestReleaseHosts =
  req
    "ReleaseHosts"
    "fixture/ReleaseHosts.yaml"

requestDescribeFastSnapshotRestores :: DescribeFastSnapshotRestores -> TestTree
requestDescribeFastSnapshotRestores =
  req
    "DescribeFastSnapshotRestores"
    "fixture/DescribeFastSnapshotRestores.yaml"

requestDescribeTrafficMirrorFilters :: DescribeTrafficMirrorFilters -> TestTree
requestDescribeTrafficMirrorFilters =
  req
    "DescribeTrafficMirrorFilters"
    "fixture/DescribeTrafficMirrorFilters.yaml"

requestCreateTransitGatewayPrefixListReference :: CreateTransitGatewayPrefixListReference -> TestTree
requestCreateTransitGatewayPrefixListReference =
  req
    "CreateTransitGatewayPrefixListReference"
    "fixture/CreateTransitGatewayPrefixListReference.yaml"

requestDeleteNetworkInterface :: DeleteNetworkInterface -> TestTree
requestDeleteNetworkInterface =
  req
    "DeleteNetworkInterface"
    "fixture/DeleteNetworkInterface.yaml"

requestCreateTransitGatewayRoute :: CreateTransitGatewayRoute -> TestTree
requestCreateTransitGatewayRoute =
  req
    "CreateTransitGatewayRoute"
    "fixture/CreateTransitGatewayRoute.yaml"

requestDeregisterTransitGatewayMulticastGroupSources :: DeregisterTransitGatewayMulticastGroupSources -> TestTree
requestDeregisterTransitGatewayMulticastGroupSources =
  req
    "DeregisterTransitGatewayMulticastGroupSources"
    "fixture/DeregisterTransitGatewayMulticastGroupSources.yaml"

requestDisassociateVPCCidrBlock :: DisassociateVPCCidrBlock -> TestTree
requestDisassociateVPCCidrBlock =
  req
    "DisassociateVPCCidrBlock"
    "fixture/DisassociateVPCCidrBlock.yaml"

requestDescribeTransitGatewayPeeringAttachments :: DescribeTransitGatewayPeeringAttachments -> TestTree
requestDescribeTransitGatewayPeeringAttachments =
  req
    "DescribeTransitGatewayPeeringAttachments"
    "fixture/DescribeTransitGatewayPeeringAttachments.yaml"

requestGetCoipPoolUsage :: GetCoipPoolUsage -> TestTree
requestGetCoipPoolUsage =
  req
    "GetCoipPoolUsage"
    "fixture/GetCoipPoolUsage.yaml"

requestImportImage :: ImportImage -> TestTree
requestImportImage =
  req
    "ImportImage"
    "fixture/ImportImage.yaml"

requestReplaceTransitGatewayRoute :: ReplaceTransitGatewayRoute -> TestTree
requestReplaceTransitGatewayRoute =
  req
    "ReplaceTransitGatewayRoute"
    "fixture/ReplaceTransitGatewayRoute.yaml"

requestCreatePlacementGroup :: CreatePlacementGroup -> TestTree
requestCreatePlacementGroup =
  req
    "CreatePlacementGroup"
    "fixture/CreatePlacementGroup.yaml"

requestCreateDefaultVPC :: CreateDefaultVPC -> TestTree
requestCreateDefaultVPC =
  req
    "CreateDefaultVPC"
    "fixture/CreateDefaultVPC.yaml"

requestCreateNetworkInsightsPath :: CreateNetworkInsightsPath -> TestTree
requestCreateNetworkInsightsPath =
  req
    "CreateNetworkInsightsPath"
    "fixture/CreateNetworkInsightsPath.yaml"

requestModifyTrafficMirrorSession :: ModifyTrafficMirrorSession -> TestTree
requestModifyTrafficMirrorSession =
  req
    "ModifyTrafficMirrorSession"
    "fixture/ModifyTrafficMirrorSession.yaml"

requestRunScheduledInstances :: RunScheduledInstances -> TestTree
requestRunScheduledInstances =
  req
    "RunScheduledInstances"
    "fixture/RunScheduledInstances.yaml"

requestDescribeDHCPOptions :: DescribeDHCPOptions -> TestTree
requestDescribeDHCPOptions =
  req
    "DescribeDHCPOptions"
    "fixture/DescribeDHCPOptions.yaml"

requestDescribeCapacityReservations :: DescribeCapacityReservations -> TestTree
requestDescribeCapacityReservations =
  req
    "DescribeCapacityReservations"
    "fixture/DescribeCapacityReservations.yaml"

requestDescribeCustomerGateways :: DescribeCustomerGateways -> TestTree
requestDescribeCustomerGateways =
  req
    "DescribeCustomerGateways"
    "fixture/DescribeCustomerGateways.yaml"

requestDeleteNatGateway :: DeleteNatGateway -> TestTree
requestDeleteNatGateway =
  req
    "DeleteNatGateway"
    "fixture/DeleteNatGateway.yaml"

requestDescribeClientVPNAuthorizationRules :: DescribeClientVPNAuthorizationRules -> TestTree
requestDescribeClientVPNAuthorizationRules =
  req
    "DescribeClientVPNAuthorizationRules"
    "fixture/DescribeClientVPNAuthorizationRules.yaml"

requestStopInstances :: StopInstances -> TestTree
requestStopInstances =
  req
    "StopInstances"
    "fixture/StopInstances.yaml"

requestReplaceRouteTableAssociation :: ReplaceRouteTableAssociation -> TestTree
requestReplaceRouteTableAssociation =
  req
    "ReplaceRouteTableAssociation"
    "fixture/ReplaceRouteTableAssociation.yaml"

requestDeleteTransitGatewayMulticastDomain :: DeleteTransitGatewayMulticastDomain -> TestTree
requestDeleteTransitGatewayMulticastDomain =
  req
    "DeleteTransitGatewayMulticastDomain"
    "fixture/DeleteTransitGatewayMulticastDomain.yaml"

requestDeleteSubnet :: DeleteSubnet -> TestTree
requestDeleteSubnet =
  req
    "DeleteSubnet"
    "fixture/DeleteSubnet.yaml"

-- Responses

responseAcceptReservedInstancesExchangeQuote :: AcceptReservedInstancesExchangeQuoteResponse -> TestTree
responseAcceptReservedInstancesExchangeQuote =
  res
    "AcceptReservedInstancesExchangeQuoteResponse"
    "fixture/AcceptReservedInstancesExchangeQuoteResponse.proto"
    ec2
    (Proxy :: Proxy AcceptReservedInstancesExchangeQuote)

responseDescribeInstanceCreditSpecifications :: DescribeInstanceCreditSpecificationsResponse -> TestTree
responseDescribeInstanceCreditSpecifications =
  res
    "DescribeInstanceCreditSpecificationsResponse"
    "fixture/DescribeInstanceCreditSpecificationsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeInstanceCreditSpecifications)

responseDescribeByoipCidrs :: DescribeByoipCidrsResponse -> TestTree
responseDescribeByoipCidrs =
  res
    "DescribeByoipCidrsResponse"
    "fixture/DescribeByoipCidrsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeByoipCidrs)

responseDescribeLocalGatewayVirtualInterfaces :: DescribeLocalGatewayVirtualInterfacesResponse -> TestTree
responseDescribeLocalGatewayVirtualInterfaces =
  res
    "DescribeLocalGatewayVirtualInterfacesResponse"
    "fixture/DescribeLocalGatewayVirtualInterfacesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeLocalGatewayVirtualInterfaces)

responseDeleteLocalGatewayRouteTableVPCAssociation :: DeleteLocalGatewayRouteTableVPCAssociationResponse -> TestTree
responseDeleteLocalGatewayRouteTableVPCAssociation =
  res
    "DeleteLocalGatewayRouteTableVPCAssociationResponse"
    "fixture/DeleteLocalGatewayRouteTableVPCAssociationResponse.proto"
    ec2
    (Proxy :: Proxy DeleteLocalGatewayRouteTableVPCAssociation)

responseDetachVolume :: VolumeAttachment -> TestTree
responseDetachVolume =
  res
    "DetachVolumeResponse"
    "fixture/DetachVolumeResponse.proto"
    ec2
    (Proxy :: Proxy DetachVolume)

responseCreateTransitGatewayVPCAttachment :: CreateTransitGatewayVPCAttachmentResponse -> TestTree
responseCreateTransitGatewayVPCAttachment =
  res
    "CreateTransitGatewayVPCAttachmentResponse"
    "fixture/CreateTransitGatewayVPCAttachmentResponse.proto"
    ec2
    (Proxy :: Proxy CreateTransitGatewayVPCAttachment)

responseDeleteVPCEndpointConnectionNotifications :: DeleteVPCEndpointConnectionNotificationsResponse -> TestTree
responseDeleteVPCEndpointConnectionNotifications =
  res
    "DeleteVPCEndpointConnectionNotificationsResponse"
    "fixture/DeleteVPCEndpointConnectionNotificationsResponse.proto"
    ec2
    (Proxy :: Proxy DeleteVPCEndpointConnectionNotifications)

responseDeleteNetworkInsightsPath :: DeleteNetworkInsightsPathResponse -> TestTree
responseDeleteNetworkInsightsPath =
  res
    "DeleteNetworkInsightsPathResponse"
    "fixture/DeleteNetworkInsightsPathResponse.proto"
    ec2
    (Proxy :: Proxy DeleteNetworkInsightsPath)

responseAuthorizeSecurityGroupEgress :: AuthorizeSecurityGroupEgressResponse -> TestTree
responseAuthorizeSecurityGroupEgress =
  res
    "AuthorizeSecurityGroupEgressResponse"
    "fixture/AuthorizeSecurityGroupEgressResponse.proto"
    ec2
    (Proxy :: Proxy AuthorizeSecurityGroupEgress)

responseModifyManagedPrefixList :: ModifyManagedPrefixListResponse -> TestTree
responseModifyManagedPrefixList =
  res
    "ModifyManagedPrefixListResponse"
    "fixture/ModifyManagedPrefixListResponse.proto"
    ec2
    (Proxy :: Proxy ModifyManagedPrefixList)

responseDeleteTransitGatewayPrefixListReference :: DeleteTransitGatewayPrefixListReferenceResponse -> TestTree
responseDeleteTransitGatewayPrefixListReference =
  res
    "DeleteTransitGatewayPrefixListReferenceResponse"
    "fixture/DeleteTransitGatewayPrefixListReferenceResponse.proto"
    ec2
    (Proxy :: Proxy DeleteTransitGatewayPrefixListReference)

responseDeleteTransitGatewayRoute :: DeleteTransitGatewayRouteResponse -> TestTree
responseDeleteTransitGatewayRoute =
  res
    "DeleteTransitGatewayRouteResponse"
    "fixture/DeleteTransitGatewayRouteResponse.proto"
    ec2
    (Proxy :: Proxy DeleteTransitGatewayRoute)

responseDescribeVPCPeeringConnections :: DescribeVPCPeeringConnectionsResponse -> TestTree
responseDescribeVPCPeeringConnections =
  res
    "DescribeVPCPeeringConnectionsResponse"
    "fixture/DescribeVPCPeeringConnectionsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeVPCPeeringConnections)

responseDescribeInstances :: DescribeInstancesResponse -> TestTree
responseDescribeInstances =
  res
    "DescribeInstancesResponse"
    "fixture/DescribeInstancesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeInstances)

responseDeregisterInstanceEventNotificationAttributes :: DeregisterInstanceEventNotificationAttributesResponse -> TestTree
responseDeregisterInstanceEventNotificationAttributes =
  res
    "DeregisterInstanceEventNotificationAttributesResponse"
    "fixture/DeregisterInstanceEventNotificationAttributesResponse.proto"
    ec2
    (Proxy :: Proxy DeregisterInstanceEventNotificationAttributes)

responseCreateTransitGatewayMulticastDomain :: CreateTransitGatewayMulticastDomainResponse -> TestTree
responseCreateTransitGatewayMulticastDomain =
  res
    "CreateTransitGatewayMulticastDomainResponse"
    "fixture/CreateTransitGatewayMulticastDomainResponse.proto"
    ec2
    (Proxy :: Proxy CreateTransitGatewayMulticastDomain)

responseAssociateTransitGatewayMulticastDomain :: AssociateTransitGatewayMulticastDomainResponse -> TestTree
responseAssociateTransitGatewayMulticastDomain =
  res
    "AssociateTransitGatewayMulticastDomainResponse"
    "fixture/AssociateTransitGatewayMulticastDomainResponse.proto"
    ec2
    (Proxy :: Proxy AssociateTransitGatewayMulticastDomain)

responseReleaseAddress :: ReleaseAddressResponse -> TestTree
responseReleaseAddress =
  res
    "ReleaseAddressResponse"
    "fixture/ReleaseAddressResponse.proto"
    ec2
    (Proxy :: Proxy ReleaseAddress)

responseDeregisterTransitGatewayMulticastGroupMembers :: DeregisterTransitGatewayMulticastGroupMembersResponse -> TestTree
responseDeregisterTransitGatewayMulticastGroupMembers =
  res
    "DeregisterTransitGatewayMulticastGroupMembersResponse"
    "fixture/DeregisterTransitGatewayMulticastGroupMembersResponse.proto"
    ec2
    (Proxy :: Proxy DeregisterTransitGatewayMulticastGroupMembers)

responseGetHostReservationPurchasePreview :: GetHostReservationPurchasePreviewResponse -> TestTree
responseGetHostReservationPurchasePreview =
  res
    "GetHostReservationPurchasePreviewResponse"
    "fixture/GetHostReservationPurchasePreviewResponse.proto"
    ec2
    (Proxy :: Proxy GetHostReservationPurchasePreview)

responseCancelBundleTask :: CancelBundleTaskResponse -> TestTree
responseCancelBundleTask =
  res
    "CancelBundleTaskResponse"
    "fixture/CancelBundleTaskResponse.proto"
    ec2
    (Proxy :: Proxy CancelBundleTask)

responseGetCapacityReservationUsage :: GetCapacityReservationUsageResponse -> TestTree
responseGetCapacityReservationUsage =
  res
    "GetCapacityReservationUsageResponse"
    "fixture/GetCapacityReservationUsageResponse.proto"
    ec2
    (Proxy :: Proxy GetCapacityReservationUsage)

responseCreateTransitGatewayConnectPeer :: CreateTransitGatewayConnectPeerResponse -> TestTree
responseCreateTransitGatewayConnectPeer =
  res
    "CreateTransitGatewayConnectPeerResponse"
    "fixture/CreateTransitGatewayConnectPeerResponse.proto"
    ec2
    (Proxy :: Proxy CreateTransitGatewayConnectPeer)

responseModifyVPCTenancy :: ModifyVPCTenancyResponse -> TestTree
responseModifyVPCTenancy =
  res
    "ModifyVPCTenancyResponse"
    "fixture/ModifyVPCTenancyResponse.proto"
    ec2
    (Proxy :: Proxy ModifyVPCTenancy)

responseCreateVPCEndpointServiceConfiguration :: CreateVPCEndpointServiceConfigurationResponse -> TestTree
responseCreateVPCEndpointServiceConfiguration =
  res
    "CreateVPCEndpointServiceConfigurationResponse"
    "fixture/CreateVPCEndpointServiceConfigurationResponse.proto"
    ec2
    (Proxy :: Proxy CreateVPCEndpointServiceConfiguration)

responseDescribeExportTasks :: DescribeExportTasksResponse -> TestTree
responseDescribeExportTasks =
  res
    "DescribeExportTasksResponse"
    "fixture/DescribeExportTasksResponse.proto"
    ec2
    (Proxy :: Proxy DescribeExportTasks)

responseGetTransitGatewayMulticastDomainAssociations :: GetTransitGatewayMulticastDomainAssociationsResponse -> TestTree
responseGetTransitGatewayMulticastDomainAssociations =
  res
    "GetTransitGatewayMulticastDomainAssociationsResponse"
    "fixture/GetTransitGatewayMulticastDomainAssociationsResponse.proto"
    ec2
    (Proxy :: Proxy GetTransitGatewayMulticastDomainAssociations)

responseDisableEBSEncryptionByDefault :: DisableEBSEncryptionByDefaultResponse -> TestTree
responseDisableEBSEncryptionByDefault =
  res
    "DisableEBSEncryptionByDefaultResponse"
    "fixture/DisableEBSEncryptionByDefaultResponse.proto"
    ec2
    (Proxy :: Proxy DisableEBSEncryptionByDefault)

responseAssociateVPCCidrBlock :: AssociateVPCCidrBlockResponse -> TestTree
responseAssociateVPCCidrBlock =
  res
    "AssociateVPCCidrBlockResponse"
    "fixture/AssociateVPCCidrBlockResponse.proto"
    ec2
    (Proxy :: Proxy AssociateVPCCidrBlock)

responseCreateNetworkACL :: CreateNetworkACLResponse -> TestTree
responseCreateNetworkACL =
  res
    "CreateNetworkACLResponse"
    "fixture/CreateNetworkACLResponse.proto"
    ec2
    (Proxy :: Proxy CreateNetworkACL)

responseAcceptTransitGatewayPeeringAttachment :: AcceptTransitGatewayPeeringAttachmentResponse -> TestTree
responseAcceptTransitGatewayPeeringAttachment =
  res
    "AcceptTransitGatewayPeeringAttachmentResponse"
    "fixture/AcceptTransitGatewayPeeringAttachmentResponse.proto"
    ec2
    (Proxy :: Proxy AcceptTransitGatewayPeeringAttachment)

responseDeleteLaunchTemplate :: DeleteLaunchTemplateResponse -> TestTree
responseDeleteLaunchTemplate =
  res
    "DeleteLaunchTemplateResponse"
    "fixture/DeleteLaunchTemplateResponse.proto"
    ec2
    (Proxy :: Proxy DeleteLaunchTemplate)

responseDeleteVPC :: DeleteVPCResponse -> TestTree
responseDeleteVPC =
  res
    "DeleteVPCResponse"
    "fixture/DeleteVPCResponse.proto"
    ec2
    (Proxy :: Proxy DeleteVPC)

responseDeleteFleets :: DeleteFleetsResponse -> TestTree
responseDeleteFleets =
  res
    "DeleteFleetsResponse"
    "fixture/DeleteFleetsResponse.proto"
    ec2
    (Proxy :: Proxy DeleteFleets)

responseGetAssociatedIPv6PoolCidrs :: GetAssociatedIPv6PoolCidrsResponse -> TestTree
responseGetAssociatedIPv6PoolCidrs =
  res
    "GetAssociatedIPv6PoolCidrsResponse"
    "fixture/GetAssociatedIPv6PoolCidrsResponse.proto"
    ec2
    (Proxy :: Proxy GetAssociatedIPv6PoolCidrs)

responseDescribeTrafficMirrorSessions :: DescribeTrafficMirrorSessionsResponse -> TestTree
responseDescribeTrafficMirrorSessions =
  res
    "DescribeTrafficMirrorSessionsResponse"
    "fixture/DescribeTrafficMirrorSessionsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeTrafficMirrorSessions)

responseImportInstance :: ImportInstanceResponse -> TestTree
responseImportInstance =
  res
    "ImportInstanceResponse"
    "fixture/ImportInstanceResponse.proto"
    ec2
    (Proxy :: Proxy ImportInstance)

responseDescribeLocalGatewayRouteTables :: DescribeLocalGatewayRouteTablesResponse -> TestTree
responseDescribeLocalGatewayRouteTables =
  res
    "DescribeLocalGatewayRouteTablesResponse"
    "fixture/DescribeLocalGatewayRouteTablesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeLocalGatewayRouteTables)

responseCreateNetworkInterfacePermission :: CreateNetworkInterfacePermissionResponse -> TestTree
responseCreateNetworkInterfacePermission =
  res
    "CreateNetworkInterfacePermissionResponse"
    "fixture/CreateNetworkInterfacePermissionResponse.proto"
    ec2
    (Proxy :: Proxy CreateNetworkInterfacePermission)

responseCreateVPNGateway :: CreateVPNGatewayResponse -> TestTree
responseCreateVPNGateway =
  res
    "CreateVPNGatewayResponse"
    "fixture/CreateVPNGatewayResponse.proto"
    ec2
    (Proxy :: Proxy CreateVPNGateway)

responseGetTransitGatewayRouteTableAssociations :: GetTransitGatewayRouteTableAssociationsResponse -> TestTree
responseGetTransitGatewayRouteTableAssociations =
  res
    "GetTransitGatewayRouteTableAssociationsResponse"
    "fixture/GetTransitGatewayRouteTableAssociationsResponse.proto"
    ec2
    (Proxy :: Proxy GetTransitGatewayRouteTableAssociations)

responseRejectTransitGatewayVPCAttachment :: RejectTransitGatewayVPCAttachmentResponse -> TestTree
responseRejectTransitGatewayVPCAttachment =
  res
    "RejectTransitGatewayVPCAttachmentResponse"
    "fixture/RejectTransitGatewayVPCAttachmentResponse.proto"
    ec2
    (Proxy :: Proxy RejectTransitGatewayVPCAttachment)

responseModifyVolumeAttribute :: ModifyVolumeAttributeResponse -> TestTree
responseModifyVolumeAttribute =
  res
    "ModifyVolumeAttributeResponse"
    "fixture/ModifyVolumeAttributeResponse.proto"
    ec2
    (Proxy :: Proxy ModifyVolumeAttribute)

responseDescribePrefixLists :: DescribePrefixListsResponse -> TestTree
responseDescribePrefixLists =
  res
    "DescribePrefixListsResponse"
    "fixture/DescribePrefixListsResponse.proto"
    ec2
    (Proxy :: Proxy DescribePrefixLists)

responseDetachNetworkInterface :: DetachNetworkInterfaceResponse -> TestTree
responseDetachNetworkInterface =
  res
    "DetachNetworkInterfaceResponse"
    "fixture/DetachNetworkInterfaceResponse.proto"
    ec2
    (Proxy :: Proxy DetachNetworkInterface)

responseDeleteVPCEndpoints :: DeleteVPCEndpointsResponse -> TestTree
responseDeleteVPCEndpoints =
  res
    "DeleteVPCEndpointsResponse"
    "fixture/DeleteVPCEndpointsResponse.proto"
    ec2
    (Proxy :: Proxy DeleteVPCEndpoints)

responseDescribeVPCClassicLink :: DescribeVPCClassicLinkResponse -> TestTree
responseDescribeVPCClassicLink =
  res
    "DescribeVPCClassicLinkResponse"
    "fixture/DescribeVPCClassicLinkResponse.proto"
    ec2
    (Proxy :: Proxy DescribeVPCClassicLink)

responseUpdateSecurityGroupRuleDescriptionsIngress :: UpdateSecurityGroupRuleDescriptionsIngressResponse -> TestTree
responseUpdateSecurityGroupRuleDescriptionsIngress =
  res
    "UpdateSecurityGroupRuleDescriptionsIngressResponse"
    "fixture/UpdateSecurityGroupRuleDescriptionsIngressResponse.proto"
    ec2
    (Proxy :: Proxy UpdateSecurityGroupRuleDescriptionsIngress)

responseDescribeClientVPNEndpoints :: DescribeClientVPNEndpointsResponse -> TestTree
responseDescribeClientVPNEndpoints =
  res
    "DescribeClientVPNEndpointsResponse"
    "fixture/DescribeClientVPNEndpointsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeClientVPNEndpoints)

responseDisassociateAddress :: DisassociateAddressResponse -> TestTree
responseDisassociateAddress =
  res
    "DisassociateAddressResponse"
    "fixture/DisassociateAddressResponse.proto"
    ec2
    (Proxy :: Proxy DisassociateAddress)

responseDescribeScheduledInstanceAvailability :: DescribeScheduledInstanceAvailabilityResponse -> TestTree
responseDescribeScheduledInstanceAvailability =
  res
    "DescribeScheduledInstanceAvailabilityResponse"
    "fixture/DescribeScheduledInstanceAvailabilityResponse.proto"
    ec2
    (Proxy :: Proxy DescribeScheduledInstanceAvailability)

responseRejectVPCEndpointConnections :: RejectVPCEndpointConnectionsResponse -> TestTree
responseRejectVPCEndpointConnections =
  res
    "RejectVPCEndpointConnectionsResponse"
    "fixture/RejectVPCEndpointConnectionsResponse.proto"
    ec2
    (Proxy :: Proxy RejectVPCEndpointConnections)

responseCreateTransitGatewayRouteTable :: CreateTransitGatewayRouteTableResponse -> TestTree
responseCreateTransitGatewayRouteTable =
  res
    "CreateTransitGatewayRouteTableResponse"
    "fixture/CreateTransitGatewayRouteTableResponse.proto"
    ec2
    (Proxy :: Proxy CreateTransitGatewayRouteTable)

responseDescribeTags :: DescribeTagsResponse -> TestTree
responseDescribeTags =
  res
    "DescribeTagsResponse"
    "fixture/DescribeTagsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeTags)

responseAssociateTransitGatewayRouteTable :: AssociateTransitGatewayRouteTableResponse -> TestTree
responseAssociateTransitGatewayRouteTable =
  res
    "AssociateTransitGatewayRouteTableResponse"
    "fixture/AssociateTransitGatewayRouteTableResponse.proto"
    ec2
    (Proxy :: Proxy AssociateTransitGatewayRouteTable)

responseDeleteFlowLogs :: DeleteFlowLogsResponse -> TestTree
responseDeleteFlowLogs =
  res
    "DeleteFlowLogsResponse"
    "fixture/DeleteFlowLogsResponse.proto"
    ec2
    (Proxy :: Proxy DeleteFlowLogs)

responseCreateDefaultSubnet :: CreateDefaultSubnetResponse -> TestTree
responseCreateDefaultSubnet =
  res
    "CreateDefaultSubnetResponse"
    "fixture/CreateDefaultSubnetResponse.proto"
    ec2
    (Proxy :: Proxy CreateDefaultSubnet)

responseDeleteTrafficMirrorTarget :: DeleteTrafficMirrorTargetResponse -> TestTree
responseDeleteTrafficMirrorTarget =
  res
    "DeleteTrafficMirrorTargetResponse"
    "fixture/DeleteTrafficMirrorTargetResponse.proto"
    ec2
    (Proxy :: Proxy DeleteTrafficMirrorTarget)

responseAcceptTransitGatewayMulticastDomainAssociations :: AcceptTransitGatewayMulticastDomainAssociationsResponse -> TestTree
responseAcceptTransitGatewayMulticastDomainAssociations =
  res
    "AcceptTransitGatewayMulticastDomainAssociationsResponse"
    "fixture/AcceptTransitGatewayMulticastDomainAssociationsResponse.proto"
    ec2
    (Proxy :: Proxy AcceptTransitGatewayMulticastDomainAssociations)

responseDescribeLaunchTemplateVersions :: DescribeLaunchTemplateVersionsResponse -> TestTree
responseDescribeLaunchTemplateVersions =
  res
    "DescribeLaunchTemplateVersionsResponse"
    "fixture/DescribeLaunchTemplateVersionsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeLaunchTemplateVersions)

responseDescribeAvailabilityZones :: DescribeAvailabilityZonesResponse -> TestTree
responseDescribeAvailabilityZones =
  res
    "DescribeAvailabilityZonesResponse"
    "fixture/DescribeAvailabilityZonesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeAvailabilityZones)

responseGetReservedInstancesExchangeQuote :: GetReservedInstancesExchangeQuoteResponse -> TestTree
responseGetReservedInstancesExchangeQuote =
  res
    "GetReservedInstancesExchangeQuoteResponse"
    "fixture/GetReservedInstancesExchangeQuoteResponse.proto"
    ec2
    (Proxy :: Proxy GetReservedInstancesExchangeQuote)

responseDeleteVPNGateway :: DeleteVPNGatewayResponse -> TestTree
responseDeleteVPNGateway =
  res
    "DeleteVPNGatewayResponse"
    "fixture/DeleteVPNGatewayResponse.proto"
    ec2
    (Proxy :: Proxy DeleteVPNGateway)

responseCreateKeyPair :: CreateKeyPairResponse -> TestTree
responseCreateKeyPair =
  res
    "CreateKeyPairResponse"
    "fixture/CreateKeyPairResponse.proto"
    ec2
    (Proxy :: Proxy CreateKeyPair)

responseExportTransitGatewayRoutes :: ExportTransitGatewayRoutesResponse -> TestTree
responseExportTransitGatewayRoutes =
  res
    "ExportTransitGatewayRoutesResponse"
    "fixture/ExportTransitGatewayRoutesResponse.proto"
    ec2
    (Proxy :: Proxy ExportTransitGatewayRoutes)

responseCopySnapshot :: CopySnapshotResponse -> TestTree
responseCopySnapshot =
  res
    "CopySnapshotResponse"
    "fixture/CopySnapshotResponse.proto"
    ec2
    (Proxy :: Proxy CopySnapshot)

responseDescribeElasticGpus :: DescribeElasticGpusResponse -> TestTree
responseDescribeElasticGpus =
  res
    "DescribeElasticGpusResponse"
    "fixture/DescribeElasticGpusResponse.proto"
    ec2
    (Proxy :: Proxy DescribeElasticGpus)

responseStartNetworkInsightsAnalysis :: StartNetworkInsightsAnalysisResponse -> TestTree
responseStartNetworkInsightsAnalysis =
  res
    "StartNetworkInsightsAnalysisResponse"
    "fixture/StartNetworkInsightsAnalysisResponse.proto"
    ec2
    (Proxy :: Proxy StartNetworkInsightsAnalysis)

responseDescribeFpgaImages :: DescribeFpgaImagesResponse -> TestTree
responseDescribeFpgaImages =
  res
    "DescribeFpgaImagesResponse"
    "fixture/DescribeFpgaImagesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeFpgaImages)

responseCreateFlowLogs :: CreateFlowLogsResponse -> TestTree
responseCreateFlowLogs =
  res
    "CreateFlowLogsResponse"
    "fixture/CreateFlowLogsResponse.proto"
    ec2
    (Proxy :: Proxy CreateFlowLogs)

responseCreateLaunchTemplate :: CreateLaunchTemplateResponse -> TestTree
responseCreateLaunchTemplate =
  res
    "CreateLaunchTemplateResponse"
    "fixture/CreateLaunchTemplateResponse.proto"
    ec2
    (Proxy :: Proxy CreateLaunchTemplate)

responseDescribeImportImageTasks :: DescribeImportImageTasksResponse -> TestTree
responseDescribeImportImageTasks =
  res
    "DescribeImportImageTasksResponse"
    "fixture/DescribeImportImageTasksResponse.proto"
    ec2
    (Proxy :: Proxy DescribeImportImageTasks)

responseDeleteTransitGatewayRouteTable :: DeleteTransitGatewayRouteTableResponse -> TestTree
responseDeleteTransitGatewayRouteTable =
  res
    "DeleteTransitGatewayRouteTableResponse"
    "fixture/DeleteTransitGatewayRouteTableResponse.proto"
    ec2
    (Proxy :: Proxy DeleteTransitGatewayRouteTable)

responseDeleteNetworkACL :: DeleteNetworkACLResponse -> TestTree
responseDeleteNetworkACL =
  res
    "DeleteNetworkACLResponse"
    "fixture/DeleteNetworkACLResponse.proto"
    ec2
    (Proxy :: Proxy DeleteNetworkACL)

responseMoveAddressToVPC :: MoveAddressToVPCResponse -> TestTree
responseMoveAddressToVPC =
  res
    "MoveAddressToVPCResponse"
    "fixture/MoveAddressToVPCResponse.proto"
    ec2
    (Proxy :: Proxy MoveAddressToVPC)

responseDescribeFleetInstances :: DescribeFleetInstancesResponse -> TestTree
responseDescribeFleetInstances =
  res
    "DescribeFleetInstancesResponse"
    "fixture/DescribeFleetInstancesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeFleetInstances)

responseRestoreAddressToClassic :: RestoreAddressToClassicResponse -> TestTree
responseRestoreAddressToClassic =
  res
    "RestoreAddressToClassicResponse"
    "fixture/RestoreAddressToClassicResponse.proto"
    ec2
    (Proxy :: Proxy RestoreAddressToClassic)

responseDeleteNetworkInterfacePermission :: DeleteNetworkInterfacePermissionResponse -> TestTree
responseDeleteNetworkInterfacePermission =
  res
    "DeleteNetworkInterfacePermissionResponse"
    "fixture/DeleteNetworkInterfacePermissionResponse.proto"
    ec2
    (Proxy :: Proxy DeleteNetworkInterfacePermission)

responseDescribeRouteTables :: DescribeRouteTablesResponse -> TestTree
responseDescribeRouteTables =
  res
    "DescribeRouteTablesResponse"
    "fixture/DescribeRouteTablesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeRouteTables)

responseUpdateSecurityGroupRuleDescriptionsEgress :: UpdateSecurityGroupRuleDescriptionsEgressResponse -> TestTree
responseUpdateSecurityGroupRuleDescriptionsEgress =
  res
    "UpdateSecurityGroupRuleDescriptionsEgressResponse"
    "fixture/UpdateSecurityGroupRuleDescriptionsEgressResponse.proto"
    ec2
    (Proxy :: Proxy UpdateSecurityGroupRuleDescriptionsEgress)

responseResetFpgaImageAttribute :: ResetFpgaImageAttributeResponse -> TestTree
responseResetFpgaImageAttribute =
  res
    "ResetFpgaImageAttributeResponse"
    "fixture/ResetFpgaImageAttributeResponse.proto"
    ec2
    (Proxy :: Proxy ResetFpgaImageAttribute)

responseStartVPCEndpointServicePrivateDNSVerification :: StartVPCEndpointServicePrivateDNSVerificationResponse -> TestTree
responseStartVPCEndpointServicePrivateDNSVerification =
  res
    "StartVPCEndpointServicePrivateDNSVerificationResponse"
    "fixture/StartVPCEndpointServicePrivateDNSVerificationResponse.proto"
    ec2
    (Proxy :: Proxy StartVPCEndpointServicePrivateDNSVerification)

responseDescribeVolumes :: DescribeVolumesResponse -> TestTree
responseDescribeVolumes =
  res
    "DescribeVolumesResponse"
    "fixture/DescribeVolumesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeVolumes)

responseCreateClientVPNEndpoint :: CreateClientVPNEndpointResponse -> TestTree
responseCreateClientVPNEndpoint =
  res
    "CreateClientVPNEndpointResponse"
    "fixture/CreateClientVPNEndpointResponse.proto"
    ec2
    (Proxy :: Proxy CreateClientVPNEndpoint)

responseRevokeClientVPNIngress :: RevokeClientVPNIngressResponse -> TestTree
responseRevokeClientVPNIngress =
  res
    "RevokeClientVPNIngressResponse"
    "fixture/RevokeClientVPNIngressResponse.proto"
    ec2
    (Proxy :: Proxy RevokeClientVPNIngress)

responseDeleteFpgaImage :: DeleteFpgaImageResponse -> TestTree
responseDeleteFpgaImage =
  res
    "DeleteFpgaImageResponse"
    "fixture/DeleteFpgaImageResponse.proto"
    ec2
    (Proxy :: Proxy DeleteFpgaImage)

responseModifyVPCEndpoint :: ModifyVPCEndpointResponse -> TestTree
responseModifyVPCEndpoint =
  res
    "ModifyVPCEndpointResponse"
    "fixture/ModifyVPCEndpointResponse.proto"
    ec2
    (Proxy :: Proxy ModifyVPCEndpoint)

responseDescribeReservedInstancesModifications :: DescribeReservedInstancesModificationsResponse -> TestTree
responseDescribeReservedInstancesModifications =
  res
    "DescribeReservedInstancesModificationsResponse"
    "fixture/DescribeReservedInstancesModificationsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeReservedInstancesModifications)

responseDescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations :: DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResponse -> TestTree
responseDescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations =
  res
    "DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResponse"
    "fixture/DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations)

responseEnableFastSnapshotRestores :: EnableFastSnapshotRestoresResponse -> TestTree
responseEnableFastSnapshotRestores =
  res
    "EnableFastSnapshotRestoresResponse"
    "fixture/EnableFastSnapshotRestoresResponse.proto"
    ec2
    (Proxy :: Proxy EnableFastSnapshotRestores)

responseDescribeClientVPNRoutes :: DescribeClientVPNRoutesResponse -> TestTree
responseDescribeClientVPNRoutes =
  res
    "DescribeClientVPNRoutesResponse"
    "fixture/DescribeClientVPNRoutesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeClientVPNRoutes)

responseGetEBSDefaultKMSKeyId :: GetEBSDefaultKMSKeyIdResponse -> TestTree
responseGetEBSDefaultKMSKeyId =
  res
    "GetEBSDefaultKMSKeyIdResponse"
    "fixture/GetEBSDefaultKMSKeyIdResponse.proto"
    ec2
    (Proxy :: Proxy GetEBSDefaultKMSKeyId)

responseModifyIdFormat :: ModifyIdFormatResponse -> TestTree
responseModifyIdFormat =
  res
    "ModifyIdFormatResponse"
    "fixture/ModifyIdFormatResponse.proto"
    ec2
    (Proxy :: Proxy ModifyIdFormat)

responseDetachClassicLinkVPC :: DetachClassicLinkVPCResponse -> TestTree
responseDetachClassicLinkVPC =
  res
    "DetachClassicLinkVPCResponse"
    "fixture/DetachClassicLinkVPCResponse.proto"
    ec2
    (Proxy :: Proxy DetachClassicLinkVPC)

responseUnassignPrivateIPAddresses :: UnassignPrivateIPAddressesResponse -> TestTree
responseUnassignPrivateIPAddresses =
  res
    "UnassignPrivateIPAddressesResponse"
    "fixture/UnassignPrivateIPAddressesResponse.proto"
    ec2
    (Proxy :: Proxy UnassignPrivateIPAddresses)

responseAllocateHosts :: AllocateHostsResponse -> TestTree
responseAllocateHosts =
  res
    "AllocateHostsResponse"
    "fixture/AllocateHostsResponse.proto"
    ec2
    (Proxy :: Proxy AllocateHosts)

responseGetConsoleOutput :: GetConsoleOutputResponse -> TestTree
responseGetConsoleOutput =
  res
    "GetConsoleOutputResponse"
    "fixture/GetConsoleOutputResponse.proto"
    ec2
    (Proxy :: Proxy GetConsoleOutput)

responseModifyVPNConnectionOptions :: ModifyVPNConnectionOptionsResponse -> TestTree
responseModifyVPNConnectionOptions =
  res
    "ModifyVPNConnectionOptionsResponse"
    "fixture/ModifyVPNConnectionOptionsResponse.proto"
    ec2
    (Proxy :: Proxy ModifyVPNConnectionOptions)

responseCancelImportTask :: CancelImportTaskResponse -> TestTree
responseCancelImportTask =
  res
    "CancelImportTaskResponse"
    "fixture/CancelImportTaskResponse.proto"
    ec2
    (Proxy :: Proxy CancelImportTask)

responseRegisterImage :: RegisterImageResponse -> TestTree
responseRegisterImage =
  res
    "RegisterImageResponse"
    "fixture/RegisterImageResponse.proto"
    ec2
    (Proxy :: Proxy RegisterImage)

responseModifyFleet :: ModifyFleetResponse -> TestTree
responseModifyFleet =
  res
    "ModifyFleetResponse"
    "fixture/ModifyFleetResponse.proto"
    ec2
    (Proxy :: Proxy ModifyFleet)

responseDeleteRouteTable :: DeleteRouteTableResponse -> TestTree
responseDeleteRouteTable =
  res
    "DeleteRouteTableResponse"
    "fixture/DeleteRouteTableResponse.proto"
    ec2
    (Proxy :: Proxy DeleteRouteTable)

responseModifyReservedInstances :: ModifyReservedInstancesResponse -> TestTree
responseModifyReservedInstances =
  res
    "ModifyReservedInstancesResponse"
    "fixture/ModifyReservedInstancesResponse.proto"
    ec2
    (Proxy :: Proxy ModifyReservedInstances)

responseDescribeImageAttribute :: DescribeImageAttributeResponse -> TestTree
responseDescribeImageAttribute =
  res
    "DescribeImageAttributeResponse"
    "fixture/DescribeImageAttributeResponse.proto"
    ec2
    (Proxy :: Proxy DescribeImageAttribute)

responseCreateTrafficMirrorFilterRule :: CreateTrafficMirrorFilterRuleResponse -> TestTree
responseCreateTrafficMirrorFilterRule =
  res
    "CreateTrafficMirrorFilterRuleResponse"
    "fixture/CreateTrafficMirrorFilterRuleResponse.proto"
    ec2
    (Proxy :: Proxy CreateTrafficMirrorFilterRule)

responseMonitorInstances :: MonitorInstancesResponse -> TestTree
responseMonitorInstances =
  res
    "MonitorInstancesResponse"
    "fixture/MonitorInstancesResponse.proto"
    ec2
    (Proxy :: Proxy MonitorInstances)

responseModifyVPNConnection :: ModifyVPNConnectionResponse -> TestTree
responseModifyVPNConnection =
  res
    "ModifyVPNConnectionResponse"
    "fixture/ModifyVPNConnectionResponse.proto"
    ec2
    (Proxy :: Proxy ModifyVPNConnection)

responseDescribeSpotInstanceRequests :: DescribeSpotInstanceRequestsResponse -> TestTree
responseDescribeSpotInstanceRequests =
  res
    "DescribeSpotInstanceRequestsResponse"
    "fixture/DescribeSpotInstanceRequestsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeSpotInstanceRequests)

responseCancelConversionTask :: CancelConversionTaskResponse -> TestTree
responseCancelConversionTask =
  res
    "CancelConversionTaskResponse"
    "fixture/CancelConversionTaskResponse.proto"
    ec2
    (Proxy :: Proxy CancelConversionTask)

responseModifyVPCEndpointServiceConfiguration :: ModifyVPCEndpointServiceConfigurationResponse -> TestTree
responseModifyVPCEndpointServiceConfiguration =
  res
    "ModifyVPCEndpointServiceConfigurationResponse"
    "fixture/ModifyVPCEndpointServiceConfigurationResponse.proto"
    ec2
    (Proxy :: Proxy ModifyVPCEndpointServiceConfiguration)

responseModifyTransitGatewayVPCAttachment :: ModifyTransitGatewayVPCAttachmentResponse -> TestTree
responseModifyTransitGatewayVPCAttachment =
  res
    "ModifyTransitGatewayVPCAttachmentResponse"
    "fixture/ModifyTransitGatewayVPCAttachmentResponse.proto"
    ec2
    (Proxy :: Proxy ModifyTransitGatewayVPCAttachment)

responseAssociateRouteTable :: AssociateRouteTableResponse -> TestTree
responseAssociateRouteTable =
  res
    "AssociateRouteTableResponse"
    "fixture/AssociateRouteTableResponse.proto"
    ec2
    (Proxy :: Proxy AssociateRouteTable)

responseDescribeAccountAttributes :: DescribeAccountAttributesResponse -> TestTree
responseDescribeAccountAttributes =
  res
    "DescribeAccountAttributesResponse"
    "fixture/DescribeAccountAttributesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeAccountAttributes)

responseDescribeLaunchTemplates :: DescribeLaunchTemplatesResponse -> TestTree
responseDescribeLaunchTemplates =
  res
    "DescribeLaunchTemplatesResponse"
    "fixture/DescribeLaunchTemplatesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeLaunchTemplates)

responseDescribeIPv6Pools :: DescribeIPv6PoolsResponse -> TestTree
responseDescribeIPv6Pools =
  res
    "DescribeIPv6PoolsResponse"
    "fixture/DescribeIPv6PoolsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeIPv6Pools)

responseDescribeLocalGateways :: DescribeLocalGatewaysResponse -> TestTree
responseDescribeLocalGateways =
  res
    "DescribeLocalGatewaysResponse"
    "fixture/DescribeLocalGatewaysResponse.proto"
    ec2
    (Proxy :: Proxy DescribeLocalGateways)

responsePurchaseHostReservation :: PurchaseHostReservationResponse -> TestTree
responsePurchaseHostReservation =
  res
    "PurchaseHostReservationResponse"
    "fixture/PurchaseHostReservationResponse.proto"
    ec2
    (Proxy :: Proxy PurchaseHostReservation)

responseReportInstanceStatus :: ReportInstanceStatusResponse -> TestTree
responseReportInstanceStatus =
  res
    "ReportInstanceStatusResponse"
    "fixture/ReportInstanceStatusResponse.proto"
    ec2
    (Proxy :: Proxy ReportInstanceStatus)

responseModifyVPCEndpointServicePermissions :: ModifyVPCEndpointServicePermissionsResponse -> TestTree
responseModifyVPCEndpointServicePermissions =
  res
    "ModifyVPCEndpointServicePermissionsResponse"
    "fixture/ModifyVPCEndpointServicePermissionsResponse.proto"
    ec2
    (Proxy :: Proxy ModifyVPCEndpointServicePermissions)

responseModifyHosts :: ModifyHostsResponse -> TestTree
responseModifyHosts =
  res
    "ModifyHostsResponse"
    "fixture/ModifyHostsResponse.proto"
    ec2
    (Proxy :: Proxy ModifyHosts)

responseUnassignIPv6Addresses :: UnassignIPv6AddressesResponse -> TestTree
responseUnassignIPv6Addresses =
  res
    "UnassignIPv6AddressesResponse"
    "fixture/UnassignIPv6AddressesResponse.proto"
    ec2
    (Proxy :: Proxy UnassignIPv6Addresses)

responseGetManagedPrefixListAssociations :: GetManagedPrefixListAssociationsResponse -> TestTree
responseGetManagedPrefixListAssociations =
  res
    "GetManagedPrefixListAssociationsResponse"
    "fixture/GetManagedPrefixListAssociationsResponse.proto"
    ec2
    (Proxy :: Proxy GetManagedPrefixListAssociations)

responseDisableFastSnapshotRestores :: DisableFastSnapshotRestoresResponse -> TestTree
responseDisableFastSnapshotRestores =
  res
    "DisableFastSnapshotRestoresResponse"
    "fixture/DisableFastSnapshotRestoresResponse.proto"
    ec2
    (Proxy :: Proxy DisableFastSnapshotRestores)

responseDeleteEgressOnlyInternetGateway :: DeleteEgressOnlyInternetGatewayResponse -> TestTree
responseDeleteEgressOnlyInternetGateway =
  res
    "DeleteEgressOnlyInternetGatewayResponse"
    "fixture/DeleteEgressOnlyInternetGatewayResponse.proto"
    ec2
    (Proxy :: Proxy DeleteEgressOnlyInternetGateway)

responseRequestSpotInstances :: RequestSpotInstancesResponse -> TestTree
responseRequestSpotInstances =
  res
    "RequestSpotInstancesResponse"
    "fixture/RequestSpotInstancesResponse.proto"
    ec2
    (Proxy :: Proxy RequestSpotInstances)

responseRunInstances :: Reservation -> TestTree
responseRunInstances =
  res
    "RunInstancesResponse"
    "fixture/RunInstancesResponse.proto"
    ec2
    (Proxy :: Proxy RunInstances)

responseGetTransitGatewayRouteTablePropagations :: GetTransitGatewayRouteTablePropagationsResponse -> TestTree
responseGetTransitGatewayRouteTablePropagations =
  res
    "GetTransitGatewayRouteTablePropagationsResponse"
    "fixture/GetTransitGatewayRouteTablePropagationsResponse.proto"
    ec2
    (Proxy :: Proxy GetTransitGatewayRouteTablePropagations)

responseAttachVolume :: VolumeAttachment -> TestTree
responseAttachVolume =
  res
    "AttachVolumeResponse"
    "fixture/AttachVolumeResponse.proto"
    ec2
    (Proxy :: Proxy AttachVolume)

responseAcceptVPCEndpointConnections :: AcceptVPCEndpointConnectionsResponse -> TestTree
responseAcceptVPCEndpointConnections =
  res
    "AcceptVPCEndpointConnectionsResponse"
    "fixture/AcceptVPCEndpointConnectionsResponse.proto"
    ec2
    (Proxy :: Proxy AcceptVPCEndpointConnections)

responseCreateDHCPOptions :: CreateDHCPOptionsResponse -> TestTree
responseCreateDHCPOptions =
  res
    "CreateDHCPOptionsResponse"
    "fixture/CreateDHCPOptionsResponse.proto"
    ec2
    (Proxy :: Proxy CreateDHCPOptions)

responseRebootInstances :: RebootInstancesResponse -> TestTree
responseRebootInstances =
  res
    "RebootInstancesResponse"
    "fixture/RebootInstancesResponse.proto"
    ec2
    (Proxy :: Proxy RebootInstances)

responseModifyImageAttribute :: ModifyImageAttributeResponse -> TestTree
responseModifyImageAttribute =
  res
    "ModifyImageAttributeResponse"
    "fixture/ModifyImageAttributeResponse.proto"
    ec2
    (Proxy :: Proxy ModifyImageAttribute)

responseCreateManagedPrefixList :: CreateManagedPrefixListResponse -> TestTree
responseCreateManagedPrefixList =
  res
    "CreateManagedPrefixListResponse"
    "fixture/CreateManagedPrefixListResponse.proto"
    ec2
    (Proxy :: Proxy CreateManagedPrefixList)

responseSearchTransitGatewayRoutes :: SearchTransitGatewayRoutesResponse -> TestTree
responseSearchTransitGatewayRoutes =
  res
    "SearchTransitGatewayRoutesResponse"
    "fixture/SearchTransitGatewayRoutesResponse.proto"
    ec2
    (Proxy :: Proxy SearchTransitGatewayRoutes)

responseDescribeIdFormat :: DescribeIdFormatResponse -> TestTree
responseDescribeIdFormat =
  res
    "DescribeIdFormatResponse"
    "fixture/DescribeIdFormatResponse.proto"
    ec2
    (Proxy :: Proxy DescribeIdFormat)

responseRegisterTransitGatewayMulticastGroupSources :: RegisterTransitGatewayMulticastGroupSourcesResponse -> TestTree
responseRegisterTransitGatewayMulticastGroupSources =
  res
    "RegisterTransitGatewayMulticastGroupSourcesResponse"
    "fixture/RegisterTransitGatewayMulticastGroupSourcesResponse.proto"
    ec2
    (Proxy :: Proxy RegisterTransitGatewayMulticastGroupSources)

responseDescribeVPCEndpointConnectionNotifications :: DescribeVPCEndpointConnectionNotificationsResponse -> TestTree
responseDescribeVPCEndpointConnectionNotifications =
  res
    "DescribeVPCEndpointConnectionNotificationsResponse"
    "fixture/DescribeVPCEndpointConnectionNotificationsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeVPCEndpointConnectionNotifications)

responseDescribeVPCs :: DescribeVPCsResponse -> TestTree
responseDescribeVPCs =
  res
    "DescribeVPCsResponse"
    "fixture/DescribeVPCsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeVPCs)

responseGetTransitGatewayPrefixListReferences :: GetTransitGatewayPrefixListReferencesResponse -> TestTree
responseGetTransitGatewayPrefixListReferences =
  res
    "GetTransitGatewayPrefixListReferencesResponse"
    "fixture/GetTransitGatewayPrefixListReferencesResponse.proto"
    ec2
    (Proxy :: Proxy GetTransitGatewayPrefixListReferences)

responseCreateRouteTable :: CreateRouteTableResponse -> TestTree
responseCreateRouteTable =
  res
    "CreateRouteTableResponse"
    "fixture/CreateRouteTableResponse.proto"
    ec2
    (Proxy :: Proxy CreateRouteTable)

responseDescribeVolumesModifications :: DescribeVolumesModificationsResponse -> TestTree
responseDescribeVolumesModifications =
  res
    "DescribeVolumesModificationsResponse"
    "fixture/DescribeVolumesModificationsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeVolumesModifications)

responseAssociateIAMInstanceProfile :: AssociateIAMInstanceProfileResponse -> TestTree
responseAssociateIAMInstanceProfile =
  res
    "AssociateIAMInstanceProfileResponse"
    "fixture/AssociateIAMInstanceProfileResponse.proto"
    ec2
    (Proxy :: Proxy AssociateIAMInstanceProfile)

responseCreateImage :: CreateImageResponse -> TestTree
responseCreateImage =
  res
    "CreateImageResponse"
    "fixture/CreateImageResponse.proto"
    ec2
    (Proxy :: Proxy CreateImage)

responseDescribeTrafficMirrorTargets :: DescribeTrafficMirrorTargetsResponse -> TestTree
responseDescribeTrafficMirrorTargets =
  res
    "DescribeTrafficMirrorTargetsResponse"
    "fixture/DescribeTrafficMirrorTargetsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeTrafficMirrorTargets)

responseAssociateDHCPOptions :: AssociateDHCPOptionsResponse -> TestTree
responseAssociateDHCPOptions =
  res
    "AssociateDHCPOptionsResponse"
    "fixture/AssociateDHCPOptionsResponse.proto"
    ec2
    (Proxy :: Proxy AssociateDHCPOptions)

responseDescribeSpotFleetRequestHistory :: DescribeSpotFleetRequestHistoryResponse -> TestTree
responseDescribeSpotFleetRequestHistory =
  res
    "DescribeSpotFleetRequestHistoryResponse"
    "fixture/DescribeSpotFleetRequestHistoryResponse.proto"
    ec2
    (Proxy :: Proxy DescribeSpotFleetRequestHistory)

responseModifyInstanceEventStartTime :: ModifyInstanceEventStartTimeResponse -> TestTree
responseModifyInstanceEventStartTime =
  res
    "ModifyInstanceEventStartTimeResponse"
    "fixture/ModifyInstanceEventStartTimeResponse.proto"
    ec2
    (Proxy :: Proxy ModifyInstanceEventStartTime)

responseDisassociateEnclaveCertificateIAMRole :: DisassociateEnclaveCertificateIAMRoleResponse -> TestTree
responseDisassociateEnclaveCertificateIAMRole =
  res
    "DisassociateEnclaveCertificateIAMRoleResponse"
    "fixture/DisassociateEnclaveCertificateIAMRoleResponse.proto"
    ec2
    (Proxy :: Proxy DisassociateEnclaveCertificateIAMRole)

responseDeleteVPCPeeringConnection :: DeleteVPCPeeringConnectionResponse -> TestTree
responseDeleteVPCPeeringConnection =
  res
    "DeleteVPCPeeringConnectionResponse"
    "fixture/DeleteVPCPeeringConnectionResponse.proto"
    ec2
    (Proxy :: Proxy DeleteVPCPeeringConnection)

responseResetInstanceAttribute :: ResetInstanceAttributeResponse -> TestTree
responseResetInstanceAttribute =
  res
    "ResetInstanceAttributeResponse"
    "fixture/ResetInstanceAttributeResponse.proto"
    ec2
    (Proxy :: Proxy ResetInstanceAttribute)

responseDescribeInstanceStatus :: DescribeInstanceStatusResponse -> TestTree
responseDescribeInstanceStatus =
  res
    "DescribeInstanceStatusResponse"
    "fixture/DescribeInstanceStatusResponse.proto"
    ec2
    (Proxy :: Proxy DescribeInstanceStatus)

responseAttachNetworkInterface :: AttachNetworkInterfaceResponse -> TestTree
responseAttachNetworkInterface =
  res
    "AttachNetworkInterfaceResponse"
    "fixture/AttachNetworkInterfaceResponse.proto"
    ec2
    (Proxy :: Proxy AttachNetworkInterface)

responseAssignIPv6Addresses :: AssignIPv6AddressesResponse -> TestTree
responseAssignIPv6Addresses =
  res
    "AssignIPv6AddressesResponse"
    "fixture/AssignIPv6AddressesResponse.proto"
    ec2
    (Proxy :: Proxy AssignIPv6Addresses)

responseCreateLocalGatewayRoute :: CreateLocalGatewayRouteResponse -> TestTree
responseCreateLocalGatewayRoute =
  res
    "CreateLocalGatewayRouteResponse"
    "fixture/CreateLocalGatewayRouteResponse.proto"
    ec2
    (Proxy :: Proxy CreateLocalGatewayRoute)

responseEnableVGWRoutePropagation :: EnableVGWRoutePropagationResponse -> TestTree
responseEnableVGWRoutePropagation =
  res
    "EnableVGWRoutePropagationResponse"
    "fixture/EnableVGWRoutePropagationResponse.proto"
    ec2
    (Proxy :: Proxy EnableVGWRoutePropagation)

responseDescribeVPCEndpoints :: DescribeVPCEndpointsResponse -> TestTree
responseDescribeVPCEndpoints =
  res
    "DescribeVPCEndpointsResponse"
    "fixture/DescribeVPCEndpointsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeVPCEndpoints)

responseCreateNetworkACLEntry :: CreateNetworkACLEntryResponse -> TestTree
responseCreateNetworkACLEntry =
  res
    "CreateNetworkACLEntryResponse"
    "fixture/CreateNetworkACLEntryResponse.proto"
    ec2
    (Proxy :: Proxy CreateNetworkACLEntry)

responseDescribeStaleSecurityGroups :: DescribeStaleSecurityGroupsResponse -> TestTree
responseDescribeStaleSecurityGroups =
  res
    "DescribeStaleSecurityGroupsResponse"
    "fixture/DescribeStaleSecurityGroupsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeStaleSecurityGroups)

responseDescribeFlowLogs :: DescribeFlowLogsResponse -> TestTree
responseDescribeFlowLogs =
  res
    "DescribeFlowLogsResponse"
    "fixture/DescribeFlowLogsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeFlowLogs)

responseDescribePlacementGroups :: DescribePlacementGroupsResponse -> TestTree
responseDescribePlacementGroups =
  res
    "DescribePlacementGroupsResponse"
    "fixture/DescribePlacementGroupsResponse.proto"
    ec2
    (Proxy :: Proxy DescribePlacementGroups)

responseDescribeFleets :: DescribeFleetsResponse -> TestTree
responseDescribeFleets =
  res
    "DescribeFleetsResponse"
    "fixture/DescribeFleetsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeFleets)

responseModifyIdentityIdFormat :: ModifyIdentityIdFormatResponse -> TestTree
responseModifyIdentityIdFormat =
  res
    "ModifyIdentityIdFormatResponse"
    "fixture/ModifyIdentityIdFormatResponse.proto"
    ec2
    (Proxy :: Proxy ModifyIdentityIdFormat)

responseDescribeLocalGatewayVirtualInterfaceGroups :: DescribeLocalGatewayVirtualInterfaceGroupsResponse -> TestTree
responseDescribeLocalGatewayVirtualInterfaceGroups =
  res
    "DescribeLocalGatewayVirtualInterfaceGroupsResponse"
    "fixture/DescribeLocalGatewayVirtualInterfaceGroupsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeLocalGatewayVirtualInterfaceGroups)

responseReplaceNetworkACLEntry :: ReplaceNetworkACLEntryResponse -> TestTree
responseReplaceNetworkACLEntry =
  res
    "ReplaceNetworkACLEntryResponse"
    "fixture/ReplaceNetworkACLEntryResponse.proto"
    ec2
    (Proxy :: Proxy ReplaceNetworkACLEntry)

responseDeleteTags :: DeleteTagsResponse -> TestTree
responseDeleteTags =
  res
    "DeleteTagsResponse"
    "fixture/DeleteTagsResponse.proto"
    ec2
    (Proxy :: Proxy DeleteTags)

responseDescribeTransitGatewayAttachments :: DescribeTransitGatewayAttachmentsResponse -> TestTree
responseDescribeTransitGatewayAttachments =
  res
    "DescribeTransitGatewayAttachmentsResponse"
    "fixture/DescribeTransitGatewayAttachmentsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeTransitGatewayAttachments)

responseDescribeReservedInstancesOfferings :: DescribeReservedInstancesOfferingsResponse -> TestTree
responseDescribeReservedInstancesOfferings =
  res
    "DescribeReservedInstancesOfferingsResponse"
    "fixture/DescribeReservedInstancesOfferingsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeReservedInstancesOfferings)

responseModifySnapshotAttribute :: ModifySnapshotAttributeResponse -> TestTree
responseModifySnapshotAttribute =
  res
    "ModifySnapshotAttributeResponse"
    "fixture/ModifySnapshotAttributeResponse.proto"
    ec2
    (Proxy :: Proxy ModifySnapshotAttribute)

responseConfirmProductInstance :: ConfirmProductInstanceResponse -> TestTree
responseConfirmProductInstance =
  res
    "ConfirmProductInstanceResponse"
    "fixture/ConfirmProductInstanceResponse.proto"
    ec2
    (Proxy :: Proxy ConfirmProductInstance)

responseDescribeVPNConnections :: DescribeVPNConnectionsResponse -> TestTree
responseDescribeVPNConnections =
  res
    "DescribeVPNConnectionsResponse"
    "fixture/DescribeVPNConnectionsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeVPNConnections)

responseModifyAvailabilityZoneGroup :: ModifyAvailabilityZoneGroupResponse -> TestTree
responseModifyAvailabilityZoneGroup =
  res
    "ModifyAvailabilityZoneGroupResponse"
    "fixture/ModifyAvailabilityZoneGroupResponse.proto"
    ec2
    (Proxy :: Proxy ModifyAvailabilityZoneGroup)

responseDisassociateIAMInstanceProfile :: DisassociateIAMInstanceProfileResponse -> TestTree
responseDisassociateIAMInstanceProfile =
  res
    "DisassociateIAMInstanceProfileResponse"
    "fixture/DisassociateIAMInstanceProfileResponse.proto"
    ec2
    (Proxy :: Proxy DisassociateIAMInstanceProfile)

responseDisableVPCClassicLink :: DisableVPCClassicLinkResponse -> TestTree
responseDisableVPCClassicLink =
  res
    "DisableVPCClassicLinkResponse"
    "fixture/DisableVPCClassicLinkResponse.proto"
    ec2
    (Proxy :: Proxy DisableVPCClassicLink)

responseGetGroupsForCapacityReservation :: GetGroupsForCapacityReservationResponse -> TestTree
responseGetGroupsForCapacityReservation =
  res
    "GetGroupsForCapacityReservationResponse"
    "fixture/GetGroupsForCapacityReservationResponse.proto"
    ec2
    (Proxy :: Proxy GetGroupsForCapacityReservation)

responseImportVolume :: ImportVolumeResponse -> TestTree
responseImportVolume =
  res
    "ImportVolumeResponse"
    "fixture/ImportVolumeResponse.proto"
    ec2
    (Proxy :: Proxy ImportVolume)

responseDescribeAddresses :: DescribeAddressesResponse -> TestTree
responseDescribeAddresses =
  res
    "DescribeAddressesResponse"
    "fixture/DescribeAddressesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeAddresses)

responseDeleteLocalGatewayRoute :: DeleteLocalGatewayRouteResponse -> TestTree
responseDeleteLocalGatewayRoute =
  res
    "DeleteLocalGatewayRouteResponse"
    "fixture/DeleteLocalGatewayRouteResponse.proto"
    ec2
    (Proxy :: Proxy DeleteLocalGatewayRoute)

responseDescribeVPCEndpointServiceConfigurations :: DescribeVPCEndpointServiceConfigurationsResponse -> TestTree
responseDescribeVPCEndpointServiceConfigurations =
  res
    "DescribeVPCEndpointServiceConfigurationsResponse"
    "fixture/DescribeVPCEndpointServiceConfigurationsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeVPCEndpointServiceConfigurations)

responseDescribeNetworkInterfaces :: DescribeNetworkInterfacesResponse -> TestTree
responseDescribeNetworkInterfaces =
  res
    "DescribeNetworkInterfacesResponse"
    "fixture/DescribeNetworkInterfacesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeNetworkInterfaces)

responseDescribeVPCEndpointServices :: DescribeVPCEndpointServicesResponse -> TestTree
responseDescribeVPCEndpointServices =
  res
    "DescribeVPCEndpointServicesResponse"
    "fixture/DescribeVPCEndpointServicesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeVPCEndpointServices)

responseDeleteNetworkACLEntry :: DeleteNetworkACLEntryResponse -> TestTree
responseDeleteNetworkACLEntry =
  res
    "DeleteNetworkACLEntryResponse"
    "fixture/DeleteNetworkACLEntryResponse.proto"
    ec2
    (Proxy :: Proxy DeleteNetworkACLEntry)

responseGetTransitGatewayAttachmentPropagations :: GetTransitGatewayAttachmentPropagationsResponse -> TestTree
responseGetTransitGatewayAttachmentPropagations =
  res
    "GetTransitGatewayAttachmentPropagationsResponse"
    "fixture/GetTransitGatewayAttachmentPropagationsResponse.proto"
    ec2
    (Proxy :: Proxy GetTransitGatewayAttachmentPropagations)

responseAssignPrivateIPAddresses :: AssignPrivateIPAddressesResponse -> TestTree
responseAssignPrivateIPAddresses =
  res
    "AssignPrivateIPAddressesResponse"
    "fixture/AssignPrivateIPAddressesResponse.proto"
    ec2
    (Proxy :: Proxy AssignPrivateIPAddresses)

responseDescribeNatGateways :: DescribeNatGatewaysResponse -> TestTree
responseDescribeNatGateways =
  res
    "DescribeNatGatewaysResponse"
    "fixture/DescribeNatGatewaysResponse.proto"
    ec2
    (Proxy :: Proxy DescribeNatGateways)

responseDescribeSnapshotAttribute :: DescribeSnapshotAttributeResponse -> TestTree
responseDescribeSnapshotAttribute =
  res
    "DescribeSnapshotAttributeResponse"
    "fixture/DescribeSnapshotAttributeResponse.proto"
    ec2
    (Proxy :: Proxy DescribeSnapshotAttribute)

responseDeleteSnapshot :: DeleteSnapshotResponse -> TestTree
responseDeleteSnapshot =
  res
    "DeleteSnapshotResponse"
    "fixture/DeleteSnapshotResponse.proto"
    ec2
    (Proxy :: Proxy DeleteSnapshot)

responseDeleteCarrierGateway :: DeleteCarrierGatewayResponse -> TestTree
responseDeleteCarrierGateway =
  res
    "DeleteCarrierGatewayResponse"
    "fixture/DeleteCarrierGatewayResponse.proto"
    ec2
    (Proxy :: Proxy DeleteCarrierGateway)

responseDescribeTransitGatewayVPCAttachments :: DescribeTransitGatewayVPCAttachmentsResponse -> TestTree
responseDescribeTransitGatewayVPCAttachments =
  res
    "DescribeTransitGatewayVPCAttachmentsResponse"
    "fixture/DescribeTransitGatewayVPCAttachmentsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeTransitGatewayVPCAttachments)

responseModifyVPCEndpointConnectionNotification :: ModifyVPCEndpointConnectionNotificationResponse -> TestTree
responseModifyVPCEndpointConnectionNotification =
  res
    "ModifyVPCEndpointConnectionNotificationResponse"
    "fixture/ModifyVPCEndpointConnectionNotificationResponse.proto"
    ec2
    (Proxy :: Proxy ModifyVPCEndpointConnectionNotification)

responsePurchaseReservedInstancesOffering :: PurchaseReservedInstancesOfferingResponse -> TestTree
responsePurchaseReservedInstancesOffering =
  res
    "PurchaseReservedInstancesOfferingResponse"
    "fixture/PurchaseReservedInstancesOfferingResponse.proto"
    ec2
    (Proxy :: Proxy PurchaseReservedInstancesOffering)

responseAuthorizeSecurityGroupIngress :: AuthorizeSecurityGroupIngressResponse -> TestTree
responseAuthorizeSecurityGroupIngress =
  res
    "AuthorizeSecurityGroupIngressResponse"
    "fixture/AuthorizeSecurityGroupIngressResponse.proto"
    ec2
    (Proxy :: Proxy AuthorizeSecurityGroupIngress)

responseGetConsoleScreenshot :: GetConsoleScreenshotResponse -> TestTree
responseGetConsoleScreenshot =
  res
    "GetConsoleScreenshotResponse"
    "fixture/GetConsoleScreenshotResponse.proto"
    ec2
    (Proxy :: Proxy GetConsoleScreenshot)

responseDisableVGWRoutePropagation :: DisableVGWRoutePropagationResponse -> TestTree
responseDisableVGWRoutePropagation =
  res
    "DisableVGWRoutePropagationResponse"
    "fixture/DisableVGWRoutePropagationResponse.proto"
    ec2
    (Proxy :: Proxy DisableVGWRoutePropagation)

responseDescribeTransitGatewayMulticastDomains :: DescribeTransitGatewayMulticastDomainsResponse -> TestTree
responseDescribeTransitGatewayMulticastDomains =
  res
    "DescribeTransitGatewayMulticastDomainsResponse"
    "fixture/DescribeTransitGatewayMulticastDomainsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeTransitGatewayMulticastDomains)

responseDescribeSubnets :: DescribeSubnetsResponse -> TestTree
responseDescribeSubnets =
  res
    "DescribeSubnetsResponse"
    "fixture/DescribeSubnetsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeSubnets)

responseUnmonitorInstances :: UnmonitorInstancesResponse -> TestTree
responseUnmonitorInstances =
  res
    "UnmonitorInstancesResponse"
    "fixture/UnmonitorInstancesResponse.proto"
    ec2
    (Proxy :: Proxy UnmonitorInstances)

responseCancelSpotInstanceRequests :: CancelSpotInstanceRequestsResponse -> TestTree
responseCancelSpotInstanceRequests =
  res
    "CancelSpotInstanceRequestsResponse"
    "fixture/CancelSpotInstanceRequestsResponse.proto"
    ec2
    (Proxy :: Proxy CancelSpotInstanceRequests)

responseCreateSpotDatafeedSubscription :: CreateSpotDatafeedSubscriptionResponse -> TestTree
responseCreateSpotDatafeedSubscription =
  res
    "CreateSpotDatafeedSubscriptionResponse"
    "fixture/CreateSpotDatafeedSubscriptionResponse.proto"
    ec2
    (Proxy :: Proxy CreateSpotDatafeedSubscription)

responseDisassociateRouteTable :: DisassociateRouteTableResponse -> TestTree
responseDisassociateRouteTable =
  res
    "DisassociateRouteTableResponse"
    "fixture/DisassociateRouteTableResponse.proto"
    ec2
    (Proxy :: Proxy DisassociateRouteTable)

responseDescribeTransitGatewayConnectPeers :: DescribeTransitGatewayConnectPeersResponse -> TestTree
responseDescribeTransitGatewayConnectPeers =
  res
    "DescribeTransitGatewayConnectPeersResponse"
    "fixture/DescribeTransitGatewayConnectPeersResponse.proto"
    ec2
    (Proxy :: Proxy DescribeTransitGatewayConnectPeers)

responseModifyVPNTunnelCertificate :: ModifyVPNTunnelCertificateResponse -> TestTree
responseModifyVPNTunnelCertificate =
  res
    "ModifyVPNTunnelCertificateResponse"
    "fixture/ModifyVPNTunnelCertificateResponse.proto"
    ec2
    (Proxy :: Proxy ModifyVPNTunnelCertificate)

responseRestoreManagedPrefixListVersion :: RestoreManagedPrefixListVersionResponse -> TestTree
responseRestoreManagedPrefixListVersion =
  res
    "RestoreManagedPrefixListVersionResponse"
    "fixture/RestoreManagedPrefixListVersionResponse.proto"
    ec2
    (Proxy :: Proxy RestoreManagedPrefixListVersion)

responseModifyAddressAttribute :: ModifyAddressAttributeResponse -> TestTree
responseModifyAddressAttribute =
  res
    "ModifyAddressAttributeResponse"
    "fixture/ModifyAddressAttributeResponse.proto"
    ec2
    (Proxy :: Proxy ModifyAddressAttribute)

responseCreateVPNConnection :: CreateVPNConnectionResponse -> TestTree
responseCreateVPNConnection =
  res
    "CreateVPNConnectionResponse"
    "fixture/CreateVPNConnectionResponse.proto"
    ec2
    (Proxy :: Proxy CreateVPNConnection)

responseAssociateSubnetCidrBlock :: AssociateSubnetCidrBlockResponse -> TestTree
responseAssociateSubnetCidrBlock =
  res
    "AssociateSubnetCidrBlockResponse"
    "fixture/AssociateSubnetCidrBlockResponse.proto"
    ec2
    (Proxy :: Proxy AssociateSubnetCidrBlock)

responseAttachClassicLinkVPC :: AttachClassicLinkVPCResponse -> TestTree
responseAttachClassicLinkVPC =
  res
    "AttachClassicLinkVPCResponse"
    "fixture/AttachClassicLinkVPCResponse.proto"
    ec2
    (Proxy :: Proxy AttachClassicLinkVPC)

responseDescribeSpotPriceHistory :: DescribeSpotPriceHistoryResponse -> TestTree
responseDescribeSpotPriceHistory =
  res
    "DescribeSpotPriceHistoryResponse"
    "fixture/DescribeSpotPriceHistoryResponse.proto"
    ec2
    (Proxy :: Proxy DescribeSpotPriceHistory)

responseDeleteQueuedReservedInstances :: DeleteQueuedReservedInstancesResponse -> TestTree
responseDeleteQueuedReservedInstances =
  res
    "DeleteQueuedReservedInstancesResponse"
    "fixture/DeleteQueuedReservedInstancesResponse.proto"
    ec2
    (Proxy :: Proxy DeleteQueuedReservedInstances)

responseDescribeAggregateIdFormat :: DescribeAggregateIdFormatResponse -> TestTree
responseDescribeAggregateIdFormat =
  res
    "DescribeAggregateIdFormatResponse"
    "fixture/DescribeAggregateIdFormatResponse.proto"
    ec2
    (Proxy :: Proxy DescribeAggregateIdFormat)

responseDescribeReservedInstancesListings :: DescribeReservedInstancesListingsResponse -> TestTree
responseDescribeReservedInstancesListings =
  res
    "DescribeReservedInstancesListingsResponse"
    "fixture/DescribeReservedInstancesListingsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeReservedInstancesListings)

responseCopyImage :: CopyImageResponse -> TestTree
responseCopyImage =
  res
    "CopyImageResponse"
    "fixture/CopyImageResponse.proto"
    ec2
    (Proxy :: Proxy CopyImage)

responseCreateLocalGatewayRouteTableVPCAssociation :: CreateLocalGatewayRouteTableVPCAssociationResponse -> TestTree
responseCreateLocalGatewayRouteTableVPCAssociation =
  res
    "CreateLocalGatewayRouteTableVPCAssociationResponse"
    "fixture/CreateLocalGatewayRouteTableVPCAssociationResponse.proto"
    ec2
    (Proxy :: Proxy CreateLocalGatewayRouteTableVPCAssociation)

responseDescribeCarrierGateways :: DescribeCarrierGatewaysResponse -> TestTree
responseDescribeCarrierGateways =
  res
    "DescribeCarrierGatewaysResponse"
    "fixture/DescribeCarrierGatewaysResponse.proto"
    ec2
    (Proxy :: Proxy DescribeCarrierGateways)

responseDeleteInternetGateway :: DeleteInternetGatewayResponse -> TestTree
responseDeleteInternetGateway =
  res
    "DeleteInternetGatewayResponse"
    "fixture/DeleteInternetGatewayResponse.proto"
    ec2
    (Proxy :: Proxy DeleteInternetGateway)

responseCreateFleet :: CreateFleetResponse -> TestTree
responseCreateFleet =
  res
    "CreateFleetResponse"
    "fixture/CreateFleetResponse.proto"
    ec2
    (Proxy :: Proxy CreateFleet)

responseModifyClientVPNEndpoint :: ModifyClientVPNEndpointResponse -> TestTree
responseModifyClientVPNEndpoint =
  res
    "ModifyClientVPNEndpointResponse"
    "fixture/ModifyClientVPNEndpointResponse.proto"
    ec2
    (Proxy :: Proxy ModifyClientVPNEndpoint)

responseModifyInstanceCapacityReservationAttributes :: ModifyInstanceCapacityReservationAttributesResponse -> TestTree
responseModifyInstanceCapacityReservationAttributes =
  res
    "ModifyInstanceCapacityReservationAttributesResponse"
    "fixture/ModifyInstanceCapacityReservationAttributesResponse.proto"
    ec2
    (Proxy :: Proxy ModifyInstanceCapacityReservationAttributes)

responseImportClientVPNClientCertificateRevocationList :: ImportClientVPNClientCertificateRevocationListResponse -> TestTree
responseImportClientVPNClientCertificateRevocationList =
  res
    "ImportClientVPNClientCertificateRevocationListResponse"
    "fixture/ImportClientVPNClientCertificateRevocationListResponse.proto"
    ec2
    (Proxy :: Proxy ImportClientVPNClientCertificateRevocationList)

responseAssociateClientVPNTargetNetwork :: AssociateClientVPNTargetNetworkResponse -> TestTree
responseAssociateClientVPNTargetNetwork =
  res
    "AssociateClientVPNTargetNetworkResponse"
    "fixture/AssociateClientVPNTargetNetworkResponse.proto"
    ec2
    (Proxy :: Proxy AssociateClientVPNTargetNetwork)

responseCancelCapacityReservation :: CancelCapacityReservationResponse -> TestTree
responseCancelCapacityReservation =
  res
    "CancelCapacityReservationResponse"
    "fixture/CancelCapacityReservationResponse.proto"
    ec2
    (Proxy :: Proxy CancelCapacityReservation)

responseCancelReservedInstancesListing :: CancelReservedInstancesListingResponse -> TestTree
responseCancelReservedInstancesListing =
  res
    "CancelReservedInstancesListingResponse"
    "fixture/CancelReservedInstancesListingResponse.proto"
    ec2
    (Proxy :: Proxy CancelReservedInstancesListing)

responseDisableTransitGatewayRouteTablePropagation :: DisableTransitGatewayRouteTablePropagationResponse -> TestTree
responseDisableTransitGatewayRouteTablePropagation =
  res
    "DisableTransitGatewayRouteTablePropagationResponse"
    "fixture/DisableTransitGatewayRouteTablePropagationResponse.proto"
    ec2
    (Proxy :: Proxy DisableTransitGatewayRouteTablePropagation)

responseDescribeVPCClassicLinkDNSSupport :: DescribeVPCClassicLinkDNSSupportResponse -> TestTree
responseDescribeVPCClassicLinkDNSSupport =
  res
    "DescribeVPCClassicLinkDNSSupportResponse"
    "fixture/DescribeVPCClassicLinkDNSSupportResponse.proto"
    ec2
    (Proxy :: Proxy DescribeVPCClassicLinkDNSSupport)

responseCreateVPCEndpoint :: CreateVPCEndpointResponse -> TestTree
responseCreateVPCEndpoint =
  res
    "CreateVPCEndpointResponse"
    "fixture/CreateVPCEndpointResponse.proto"
    ec2
    (Proxy :: Proxy CreateVPCEndpoint)

responseDescribeSnapshots :: DescribeSnapshotsResponse -> TestTree
responseDescribeSnapshots =
  res
    "DescribeSnapshotsResponse"
    "fixture/DescribeSnapshotsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeSnapshots)

responseDescribeImportSnapshotTasks :: DescribeImportSnapshotTasksResponse -> TestTree
responseDescribeImportSnapshotTasks =
  res
    "DescribeImportSnapshotTasksResponse"
    "fixture/DescribeImportSnapshotTasksResponse.proto"
    ec2
    (Proxy :: Proxy DescribeImportSnapshotTasks)

responseDescribeNetworkInterfaceAttribute :: DescribeNetworkInterfaceAttributeResponse -> TestTree
responseDescribeNetworkInterfaceAttribute =
  res
    "DescribeNetworkInterfaceAttributeResponse"
    "fixture/DescribeNetworkInterfaceAttributeResponse.proto"
    ec2
    (Proxy :: Proxy DescribeNetworkInterfaceAttribute)

responseDescribeInstanceEventNotificationAttributes :: DescribeInstanceEventNotificationAttributesResponse -> TestTree
responseDescribeInstanceEventNotificationAttributes =
  res
    "DescribeInstanceEventNotificationAttributesResponse"
    "fixture/DescribeInstanceEventNotificationAttributesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeInstanceEventNotificationAttributes)

responseEnableEBSEncryptionByDefault :: EnableEBSEncryptionByDefaultResponse -> TestTree
responseEnableEBSEncryptionByDefault =
  res
    "EnableEBSEncryptionByDefaultResponse"
    "fixture/EnableEBSEncryptionByDefaultResponse.proto"
    ec2
    (Proxy :: Proxy EnableEBSEncryptionByDefault)

responseModifyTrafficMirrorFilterRule :: ModifyTrafficMirrorFilterRuleResponse -> TestTree
responseModifyTrafficMirrorFilterRule =
  res
    "ModifyTrafficMirrorFilterRuleResponse"
    "fixture/ModifyTrafficMirrorFilterRuleResponse.proto"
    ec2
    (Proxy :: Proxy ModifyTrafficMirrorFilterRule)

responseDescribeCoipPools :: DescribeCoipPoolsResponse -> TestTree
responseDescribeCoipPools =
  res
    "DescribeCoipPoolsResponse"
    "fixture/DescribeCoipPoolsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeCoipPools)

responseCancelExportTask :: CancelExportTaskResponse -> TestTree
responseCancelExportTask =
  res
    "CancelExportTaskResponse"
    "fixture/CancelExportTaskResponse.proto"
    ec2
    (Proxy :: Proxy CancelExportTask)

responseEnableVolumeIO :: EnableVolumeIOResponse -> TestTree
responseEnableVolumeIO =
  res
    "EnableVolumeIOResponse"
    "fixture/EnableVolumeIOResponse.proto"
    ec2
    (Proxy :: Proxy EnableVolumeIO)

responseModifyTransitGateway :: ModifyTransitGatewayResponse -> TestTree
responseModifyTransitGateway =
  res
    "ModifyTransitGatewayResponse"
    "fixture/ModifyTransitGatewayResponse.proto"
    ec2
    (Proxy :: Proxy ModifyTransitGateway)

responseDescribeInstanceTypeOfferings :: DescribeInstanceTypeOfferingsResponse -> TestTree
responseDescribeInstanceTypeOfferings =
  res
    "DescribeInstanceTypeOfferingsResponse"
    "fixture/DescribeInstanceTypeOfferingsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeInstanceTypeOfferings)

responseCreateSubnet :: CreateSubnetResponse -> TestTree
responseCreateSubnet =
  res
    "CreateSubnetResponse"
    "fixture/CreateSubnetResponse.proto"
    ec2
    (Proxy :: Proxy CreateSubnet)

responseRequestSpotFleet :: RequestSpotFleetResponse -> TestTree
responseRequestSpotFleet =
  res
    "RequestSpotFleetResponse"
    "fixture/RequestSpotFleetResponse.proto"
    ec2
    (Proxy :: Proxy RequestSpotFleet)

responseDeleteVPNConnection :: DeleteVPNConnectionResponse -> TestTree
responseDeleteVPNConnection =
  res
    "DeleteVPNConnectionResponse"
    "fixture/DeleteVPNConnectionResponse.proto"
    ec2
    (Proxy :: Proxy DeleteVPNConnection)

responseModifySpotFleetRequest :: ModifySpotFleetRequestResponse -> TestTree
responseModifySpotFleetRequest =
  res
    "ModifySpotFleetRequestResponse"
    "fixture/ModifySpotFleetRequestResponse.proto"
    ec2
    (Proxy :: Proxy ModifySpotFleetRequest)

responseDeregisterImage :: DeregisterImageResponse -> TestTree
responseDeregisterImage =
  res
    "DeregisterImageResponse"
    "fixture/DeregisterImageResponse.proto"
    ec2
    (Proxy :: Proxy DeregisterImage)

responseDetachVPNGateway :: DetachVPNGatewayResponse -> TestTree
responseDetachVPNGateway =
  res
    "DetachVPNGatewayResponse"
    "fixture/DetachVPNGatewayResponse.proto"
    ec2
    (Proxy :: Proxy DetachVPNGateway)

responseCreateNetworkInterface :: CreateNetworkInterfaceResponse -> TestTree
responseCreateNetworkInterface =
  res
    "CreateNetworkInterfaceResponse"
    "fixture/CreateNetworkInterfaceResponse.proto"
    ec2
    (Proxy :: Proxy CreateNetworkInterface)

responseModifyNetworkInterfaceAttribute :: ModifyNetworkInterfaceAttributeResponse -> TestTree
responseModifyNetworkInterfaceAttribute =
  res
    "ModifyNetworkInterfaceAttributeResponse"
    "fixture/ModifyNetworkInterfaceAttributeResponse.proto"
    ec2
    (Proxy :: Proxy ModifyNetworkInterfaceAttribute)

responseCreateNatGateway :: CreateNatGatewayResponse -> TestTree
responseCreateNatGateway =
  res
    "CreateNatGatewayResponse"
    "fixture/CreateNatGatewayResponse.proto"
    ec2
    (Proxy :: Proxy CreateNatGateway)

responseGetAssociatedEnclaveCertificateIAMRoles :: GetAssociatedEnclaveCertificateIAMRolesResponse -> TestTree
responseGetAssociatedEnclaveCertificateIAMRoles =
  res
    "GetAssociatedEnclaveCertificateIAMRolesResponse"
    "fixture/GetAssociatedEnclaveCertificateIAMRolesResponse.proto"
    ec2
    (Proxy :: Proxy GetAssociatedEnclaveCertificateIAMRoles)

responseCreateInternetGateway :: CreateInternetGatewayResponse -> TestTree
responseCreateInternetGateway =
  res
    "CreateInternetGatewayResponse"
    "fixture/CreateInternetGatewayResponse.proto"
    ec2
    (Proxy :: Proxy CreateInternetGateway)

responseEnableTransitGatewayRouteTablePropagation :: EnableTransitGatewayRouteTablePropagationResponse -> TestTree
responseEnableTransitGatewayRouteTablePropagation =
  res
    "EnableTransitGatewayRouteTablePropagationResponse"
    "fixture/EnableTransitGatewayRouteTablePropagationResponse.proto"
    ec2
    (Proxy :: Proxy EnableTransitGatewayRouteTablePropagation)

responseResetAddressAttribute :: ResetAddressAttributeResponse -> TestTree
responseResetAddressAttribute =
  res
    "ResetAddressAttributeResponse"
    "fixture/ResetAddressAttributeResponse.proto"
    ec2
    (Proxy :: Proxy ResetAddressAttribute)

responseDescribeTransitGatewayConnects :: DescribeTransitGatewayConnectsResponse -> TestTree
responseDescribeTransitGatewayConnects =
  res
    "DescribeTransitGatewayConnectsResponse"
    "fixture/DescribeTransitGatewayConnectsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeTransitGatewayConnects)

responseDeletePlacementGroup :: DeletePlacementGroupResponse -> TestTree
responseDeletePlacementGroup =
  res
    "DeletePlacementGroupResponse"
    "fixture/DeletePlacementGroupResponse.proto"
    ec2
    (Proxy :: Proxy DeletePlacementGroup)

responseDescribeInstanceTypes :: DescribeInstanceTypesResponse -> TestTree
responseDescribeInstanceTypes =
  res
    "DescribeInstanceTypesResponse"
    "fixture/DescribeInstanceTypesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeInstanceTypes)

responseDescribeBundleTasks :: DescribeBundleTasksResponse -> TestTree
responseDescribeBundleTasks =
  res
    "DescribeBundleTasksResponse"
    "fixture/DescribeBundleTasksResponse.proto"
    ec2
    (Proxy :: Proxy DescribeBundleTasks)

responseModifySubnetAttribute :: ModifySubnetAttributeResponse -> TestTree
responseModifySubnetAttribute =
  res
    "ModifySubnetAttributeResponse"
    "fixture/ModifySubnetAttributeResponse.proto"
    ec2
    (Proxy :: Proxy ModifySubnetAttribute)

responseDescribeSecurityGroups :: DescribeSecurityGroupsResponse -> TestTree
responseDescribeSecurityGroups =
  res
    "DescribeSecurityGroupsResponse"
    "fixture/DescribeSecurityGroupsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeSecurityGroups)

responseCreateClientVPNRoute :: CreateClientVPNRouteResponse -> TestTree
responseCreateClientVPNRoute =
  res
    "CreateClientVPNRouteResponse"
    "fixture/CreateClientVPNRouteResponse.proto"
    ec2
    (Proxy :: Proxy CreateClientVPNRoute)

responseDisassociateSubnetCidrBlock :: DisassociateSubnetCidrBlockResponse -> TestTree
responseDisassociateSubnetCidrBlock =
  res
    "DisassociateSubnetCidrBlockResponse"
    "fixture/DisassociateSubnetCidrBlockResponse.proto"
    ec2
    (Proxy :: Proxy DisassociateSubnetCidrBlock)

responseDescribeSpotDatafeedSubscription :: DescribeSpotDatafeedSubscriptionResponse -> TestTree
responseDescribeSpotDatafeedSubscription =
  res
    "DescribeSpotDatafeedSubscriptionResponse"
    "fixture/DescribeSpotDatafeedSubscriptionResponse.proto"
    ec2
    (Proxy :: Proxy DescribeSpotDatafeedSubscription)

responseCreateInstanceExportTask :: CreateInstanceExportTaskResponse -> TestTree
responseCreateInstanceExportTask =
  res
    "CreateInstanceExportTaskResponse"
    "fixture/CreateInstanceExportTaskResponse.proto"
    ec2
    (Proxy :: Proxy CreateInstanceExportTask)

responseDisassociateClientVPNTargetNetwork :: DisassociateClientVPNTargetNetworkResponse -> TestTree
responseDisassociateClientVPNTargetNetwork =
  res
    "DisassociateClientVPNTargetNetworkResponse"
    "fixture/DisassociateClientVPNTargetNetworkResponse.proto"
    ec2
    (Proxy :: Proxy DisassociateClientVPNTargetNetwork)

responseSendDiagnosticInterrupt :: SendDiagnosticInterruptResponse -> TestTree
responseSendDiagnosticInterrupt =
  res
    "SendDiagnosticInterruptResponse"
    "fixture/SendDiagnosticInterruptResponse.proto"
    ec2
    (Proxy :: Proxy SendDiagnosticInterrupt)

responseDescribeVPCAttribute :: DescribeVPCAttributeResponse -> TestTree
responseDescribeVPCAttribute =
  res
    "DescribeVPCAttributeResponse"
    "fixture/DescribeVPCAttributeResponse.proto"
    ec2
    (Proxy :: Proxy DescribeVPCAttribute)

responseDescribeSecurityGroupReferences :: DescribeSecurityGroupReferencesResponse -> TestTree
responseDescribeSecurityGroupReferences =
  res
    "DescribeSecurityGroupReferencesResponse"
    "fixture/DescribeSecurityGroupReferencesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeSecurityGroupReferences)

responseModifyCapacityReservation :: ModifyCapacityReservationResponse -> TestTree
responseModifyCapacityReservation =
  res
    "ModifyCapacityReservationResponse"
    "fixture/ModifyCapacityReservationResponse.proto"
    ec2
    (Proxy :: Proxy ModifyCapacityReservation)

responseDetachInternetGateway :: DetachInternetGatewayResponse -> TestTree
responseDetachInternetGateway =
  res
    "DetachInternetGatewayResponse"
    "fixture/DetachInternetGatewayResponse.proto"
    ec2
    (Proxy :: Proxy DetachInternetGateway)

responseCreateVolume :: Volume -> TestTree
responseCreateVolume =
  res
    "CreateVolumeResponse"
    "fixture/CreateVolumeResponse.proto"
    ec2
    (Proxy :: Proxy CreateVolume)

responseExportClientVPNClientConfiguration :: ExportClientVPNClientConfigurationResponse -> TestTree
responseExportClientVPNClientConfiguration =
  res
    "ExportClientVPNClientConfigurationResponse"
    "fixture/ExportClientVPNClientConfigurationResponse.proto"
    ec2
    (Proxy :: Proxy ExportClientVPNClientConfiguration)

responseRevokeSecurityGroupEgress :: RevokeSecurityGroupEgressResponse -> TestTree
responseRevokeSecurityGroupEgress =
  res
    "RevokeSecurityGroupEgressResponse"
    "fixture/RevokeSecurityGroupEgressResponse.proto"
    ec2
    (Proxy :: Proxy RevokeSecurityGroupEgress)

responseDeleteKeyPair :: DeleteKeyPairResponse -> TestTree
responseDeleteKeyPair =
  res
    "DeleteKeyPairResponse"
    "fixture/DeleteKeyPairResponse.proto"
    ec2
    (Proxy :: Proxy DeleteKeyPair)

responseModifyInstanceMetadataOptions :: ModifyInstanceMetadataOptionsResponse -> TestTree
responseModifyInstanceMetadataOptions =
  res
    "ModifyInstanceMetadataOptionsResponse"
    "fixture/ModifyInstanceMetadataOptionsResponse.proto"
    ec2
    (Proxy :: Proxy ModifyInstanceMetadataOptions)

responseDescribeEgressOnlyInternetGateways :: DescribeEgressOnlyInternetGatewaysResponse -> TestTree
responseDescribeEgressOnlyInternetGateways =
  res
    "DescribeEgressOnlyInternetGatewaysResponse"
    "fixture/DescribeEgressOnlyInternetGatewaysResponse.proto"
    ec2
    (Proxy :: Proxy DescribeEgressOnlyInternetGateways)

responseModifyTrafficMirrorFilterNetworkServices :: ModifyTrafficMirrorFilterNetworkServicesResponse -> TestTree
responseModifyTrafficMirrorFilterNetworkServices =
  res
    "ModifyTrafficMirrorFilterNetworkServicesResponse"
    "fixture/ModifyTrafficMirrorFilterNetworkServicesResponse.proto"
    ec2
    (Proxy :: Proxy ModifyTrafficMirrorFilterNetworkServices)

responseImportSnapshot :: ImportSnapshotResponse -> TestTree
responseImportSnapshot =
  res
    "ImportSnapshotResponse"
    "fixture/ImportSnapshotResponse.proto"
    ec2
    (Proxy :: Proxy ImportSnapshot)

responseDescribeImages :: DescribeImagesResponse -> TestTree
responseDescribeImages =
  res
    "DescribeImagesResponse"
    "fixture/DescribeImagesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeImages)

responseDeprovisionByoipCidr :: DeprovisionByoipCidrResponse -> TestTree
responseDeprovisionByoipCidr =
  res
    "DeprovisionByoipCidrResponse"
    "fixture/DeprovisionByoipCidrResponse.proto"
    ec2
    (Proxy :: Proxy DeprovisionByoipCidr)

responseDescribeAddressesAttribute :: DescribeAddressesAttributeResponse -> TestTree
responseDescribeAddressesAttribute =
  res
    "DescribeAddressesAttributeResponse"
    "fixture/DescribeAddressesAttributeResponse.proto"
    ec2
    (Proxy :: Proxy DescribeAddressesAttribute)

responseAcceptVPCPeeringConnection :: AcceptVPCPeeringConnectionResponse -> TestTree
responseAcceptVPCPeeringConnection =
  res
    "AcceptVPCPeeringConnectionResponse"
    "fixture/AcceptVPCPeeringConnectionResponse.proto"
    ec2
    (Proxy :: Proxy AcceptVPCPeeringConnection)

responseDescribeMovingAddresses :: DescribeMovingAddressesResponse -> TestTree
responseDescribeMovingAddresses =
  res
    "DescribeMovingAddressesResponse"
    "fixture/DescribeMovingAddressesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeMovingAddresses)

responseCreateVPCEndpointConnectionNotification :: CreateVPCEndpointConnectionNotificationResponse -> TestTree
responseCreateVPCEndpointConnectionNotification =
  res
    "CreateVPCEndpointConnectionNotificationResponse"
    "fixture/CreateVPCEndpointConnectionNotificationResponse.proto"
    ec2
    (Proxy :: Proxy CreateVPCEndpointConnectionNotification)

responseDescribeFleetHistory :: DescribeFleetHistoryResponse -> TestTree
responseDescribeFleetHistory =
  res
    "DescribeFleetHistoryResponse"
    "fixture/DescribeFleetHistoryResponse.proto"
    ec2
    (Proxy :: Proxy DescribeFleetHistory)

responseDeleteVPCEndpointServiceConfigurations :: DeleteVPCEndpointServiceConfigurationsResponse -> TestTree
responseDeleteVPCEndpointServiceConfigurations =
  res
    "DeleteVPCEndpointServiceConfigurationsResponse"
    "fixture/DeleteVPCEndpointServiceConfigurationsResponse.proto"
    ec2
    (Proxy :: Proxy DeleteVPCEndpointServiceConfigurations)

responseCreateVPC :: CreateVPCResponse -> TestTree
responseCreateVPC =
  res
    "CreateVPCResponse"
    "fixture/CreateVPCResponse.proto"
    ec2
    (Proxy :: Proxy CreateVPC)

responseSearchLocalGatewayRoutes :: SearchLocalGatewayRoutesResponse -> TestTree
responseSearchLocalGatewayRoutes =
  res
    "SearchLocalGatewayRoutesResponse"
    "fixture/SearchLocalGatewayRoutesResponse.proto"
    ec2
    (Proxy :: Proxy SearchLocalGatewayRoutes)

responseCreateTrafficMirrorTarget :: CreateTrafficMirrorTargetResponse -> TestTree
responseCreateTrafficMirrorTarget =
  res
    "CreateTrafficMirrorTargetResponse"
    "fixture/CreateTrafficMirrorTargetResponse.proto"
    ec2
    (Proxy :: Proxy CreateTrafficMirrorTarget)

responseDescribeVolumeStatus :: DescribeVolumeStatusResponse -> TestTree
responseDescribeVolumeStatus =
  res
    "DescribeVolumeStatusResponse"
    "fixture/DescribeVolumeStatusResponse.proto"
    ec2
    (Proxy :: Proxy DescribeVolumeStatus)

responseDescribeVolumeAttribute :: DescribeVolumeAttributeResponse -> TestTree
responseDescribeVolumeAttribute =
  res
    "DescribeVolumeAttributeResponse"
    "fixture/DescribeVolumeAttributeResponse.proto"
    ec2
    (Proxy :: Proxy DescribeVolumeAttribute)

responseDeleteClientVPNRoute :: DeleteClientVPNRouteResponse -> TestTree
responseDeleteClientVPNRoute =
  res
    "DeleteClientVPNRouteResponse"
    "fixture/DeleteClientVPNRouteResponse.proto"
    ec2
    (Proxy :: Proxy DeleteClientVPNRoute)

responseModifyVPCPeeringConnectionOptions :: ModifyVPCPeeringConnectionOptionsResponse -> TestTree
responseModifyVPCPeeringConnectionOptions =
  res
    "ModifyVPCPeeringConnectionOptionsResponse"
    "fixture/ModifyVPCPeeringConnectionOptionsResponse.proto"
    ec2
    (Proxy :: Proxy ModifyVPCPeeringConnectionOptions)

responseDescribeSpotFleetInstances :: DescribeSpotFleetInstancesResponse -> TestTree
responseDescribeSpotFleetInstances =
  res
    "DescribeSpotFleetInstancesResponse"
    "fixture/DescribeSpotFleetInstancesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeSpotFleetInstances)

responseDescribePrincipalIdFormat :: DescribePrincipalIdFormatResponse -> TestTree
responseDescribePrincipalIdFormat =
  res
    "DescribePrincipalIdFormatResponse"
    "fixture/DescribePrincipalIdFormatResponse.proto"
    ec2
    (Proxy :: Proxy DescribePrincipalIdFormat)

responseModifyInstanceCreditSpecification :: ModifyInstanceCreditSpecificationResponse -> TestTree
responseModifyInstanceCreditSpecification =
  res
    "ModifyInstanceCreditSpecificationResponse"
    "fixture/ModifyInstanceCreditSpecificationResponse.proto"
    ec2
    (Proxy :: Proxy ModifyInstanceCreditSpecification)

responseDisassociateTransitGatewayMulticastDomain :: DisassociateTransitGatewayMulticastDomainResponse -> TestTree
responseDisassociateTransitGatewayMulticastDomain =
  res
    "DisassociateTransitGatewayMulticastDomainResponse"
    "fixture/DisassociateTransitGatewayMulticastDomainResponse.proto"
    ec2
    (Proxy :: Proxy DisassociateTransitGatewayMulticastDomain)

responseDescribeManagedPrefixLists :: DescribeManagedPrefixListsResponse -> TestTree
responseDescribeManagedPrefixLists =
  res
    "DescribeManagedPrefixListsResponse"
    "fixture/DescribeManagedPrefixListsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeManagedPrefixLists)

responseGetPasswordData :: GetPasswordDataResponse -> TestTree
responseGetPasswordData =
  res
    "GetPasswordDataResponse"
    "fixture/GetPasswordDataResponse.proto"
    ec2
    (Proxy :: Proxy GetPasswordData)

responseDeleteVolume :: DeleteVolumeResponse -> TestTree
responseDeleteVolume =
  res
    "DeleteVolumeResponse"
    "fixture/DeleteVolumeResponse.proto"
    ec2
    (Proxy :: Proxy DeleteVolume)

responseDescribeTransitGateways :: DescribeTransitGatewaysResponse -> TestTree
responseDescribeTransitGateways =
  res
    "DescribeTransitGatewaysResponse"
    "fixture/DescribeTransitGatewaysResponse.proto"
    ec2
    (Proxy :: Proxy DescribeTransitGateways)

responseDescribeSpotFleetRequests :: DescribeSpotFleetRequestsResponse -> TestTree
responseDescribeSpotFleetRequests =
  res
    "DescribeSpotFleetRequestsResponse"
    "fixture/DescribeSpotFleetRequestsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeSpotFleetRequests)

responseDescribeClientVPNConnections :: DescribeClientVPNConnectionsResponse -> TestTree
responseDescribeClientVPNConnections =
  res
    "DescribeClientVPNConnectionsResponse"
    "fixture/DescribeClientVPNConnectionsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeClientVPNConnections)

responseSearchTransitGatewayMulticastGroups :: SearchTransitGatewayMulticastGroupsResponse -> TestTree
responseSearchTransitGatewayMulticastGroups =
  res
    "SearchTransitGatewayMulticastGroupsResponse"
    "fixture/SearchTransitGatewayMulticastGroupsResponse.proto"
    ec2
    (Proxy :: Proxy SearchTransitGatewayMulticastGroups)

responseModifyVPCAttribute :: ModifyVPCAttributeResponse -> TestTree
responseModifyVPCAttribute =
  res
    "ModifyVPCAttributeResponse"
    "fixture/ModifyVPCAttributeResponse.proto"
    ec2
    (Proxy :: Proxy ModifyVPCAttribute)

responseRevokeSecurityGroupIngress :: RevokeSecurityGroupIngressResponse -> TestTree
responseRevokeSecurityGroupIngress =
  res
    "RevokeSecurityGroupIngressResponse"
    "fixture/RevokeSecurityGroupIngressResponse.proto"
    ec2
    (Proxy :: Proxy RevokeSecurityGroupIngress)

responseDescribeHostReservationOfferings :: DescribeHostReservationOfferingsResponse -> TestTree
responseDescribeHostReservationOfferings =
  res
    "DescribeHostReservationOfferingsResponse"
    "fixture/DescribeHostReservationOfferingsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeHostReservationOfferings)

responseDescribeTransitGatewayRouteTables :: DescribeTransitGatewayRouteTablesResponse -> TestTree
responseDescribeTransitGatewayRouteTables =
  res
    "DescribeTransitGatewayRouteTablesResponse"
    "fixture/DescribeTransitGatewayRouteTablesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeTransitGatewayRouteTables)

responseDescribeNetworkACLs :: DescribeNetworkACLsResponse -> TestTree
responseDescribeNetworkACLs =
  res
    "DescribeNetworkACLsResponse"
    "fixture/DescribeNetworkACLsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeNetworkACLs)

responseRegisterTransitGatewayMulticastGroupMembers :: RegisterTransitGatewayMulticastGroupMembersResponse -> TestTree
responseRegisterTransitGatewayMulticastGroupMembers =
  res
    "RegisterTransitGatewayMulticastGroupMembersResponse"
    "fixture/RegisterTransitGatewayMulticastGroupMembersResponse.proto"
    ec2
    (Proxy :: Proxy RegisterTransitGatewayMulticastGroupMembers)

responseDescribeHosts :: DescribeHostsResponse -> TestTree
responseDescribeHosts =
  res
    "DescribeHostsResponse"
    "fixture/DescribeHostsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeHosts)

responseDescribeVPNGateways :: DescribeVPNGatewaysResponse -> TestTree
responseDescribeVPNGateways =
  res
    "DescribeVPNGatewaysResponse"
    "fixture/DescribeVPNGatewaysResponse.proto"
    ec2
    (Proxy :: Proxy DescribeVPNGateways)

responseDescribeHostReservations :: DescribeHostReservationsResponse -> TestTree
responseDescribeHostReservations =
  res
    "DescribeHostReservationsResponse"
    "fixture/DescribeHostReservationsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeHostReservations)

responseDeleteManagedPrefixList :: DeleteManagedPrefixListResponse -> TestTree
responseDeleteManagedPrefixList =
  res
    "DeleteManagedPrefixListResponse"
    "fixture/DeleteManagedPrefixListResponse.proto"
    ec2
    (Proxy :: Proxy DeleteManagedPrefixList)

responseRejectVPCPeeringConnection :: RejectVPCPeeringConnectionResponse -> TestTree
responseRejectVPCPeeringConnection =
  res
    "RejectVPCPeeringConnectionResponse"
    "fixture/RejectVPCPeeringConnectionResponse.proto"
    ec2
    (Proxy :: Proxy RejectVPCPeeringConnection)

responseResetImageAttribute :: ResetImageAttributeResponse -> TestTree
responseResetImageAttribute =
  res
    "ResetImageAttributeResponse"
    "fixture/ResetImageAttributeResponse.proto"
    ec2
    (Proxy :: Proxy ResetImageAttribute)

responseDescribeScheduledInstances :: DescribeScheduledInstancesResponse -> TestTree
responseDescribeScheduledInstances =
  res
    "DescribeScheduledInstancesResponse"
    "fixture/DescribeScheduledInstancesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeScheduledInstances)

responseAssociateEnclaveCertificateIAMRole :: AssociateEnclaveCertificateIAMRoleResponse -> TestTree
responseAssociateEnclaveCertificateIAMRole =
  res
    "AssociateEnclaveCertificateIAMRoleResponse"
    "fixture/AssociateEnclaveCertificateIAMRoleResponse.proto"
    ec2
    (Proxy :: Proxy AssociateEnclaveCertificateIAMRole)

responseModifyTransitGatewayPrefixListReference :: ModifyTransitGatewayPrefixListReferenceResponse -> TestTree
responseModifyTransitGatewayPrefixListReference =
  res
    "ModifyTransitGatewayPrefixListReferenceResponse"
    "fixture/ModifyTransitGatewayPrefixListReferenceResponse.proto"
    ec2
    (Proxy :: Proxy ModifyTransitGatewayPrefixListReference)

responseDescribeFpgaImageAttribute :: DescribeFpgaImageAttributeResponse -> TestTree
responseDescribeFpgaImageAttribute =
  res
    "DescribeFpgaImageAttributeResponse"
    "fixture/DescribeFpgaImageAttributeResponse.proto"
    ec2
    (Proxy :: Proxy DescribeFpgaImageAttribute)

responseAdvertiseByoipCidr :: AdvertiseByoipCidrResponse -> TestTree
responseAdvertiseByoipCidr =
  res
    "AdvertiseByoipCidrResponse"
    "fixture/AdvertiseByoipCidrResponse.proto"
    ec2
    (Proxy :: Proxy AdvertiseByoipCidr)

responseDeleteVPNConnectionRoute :: DeleteVPNConnectionRouteResponse -> TestTree
responseDeleteVPNConnectionRoute =
  res
    "DeleteVPNConnectionRouteResponse"
    "fixture/DeleteVPNConnectionRouteResponse.proto"
    ec2
    (Proxy :: Proxy DeleteVPNConnectionRoute)

responseDescribeVPCEndpointServicePermissions :: DescribeVPCEndpointServicePermissionsResponse -> TestTree
responseDescribeVPCEndpointServicePermissions =
  res
    "DescribeVPCEndpointServicePermissionsResponse"
    "fixture/DescribeVPCEndpointServicePermissionsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeVPCEndpointServicePermissions)

responseDescribeVPCEndpointConnections :: DescribeVPCEndpointConnectionsResponse -> TestTree
responseDescribeVPCEndpointConnections =
  res
    "DescribeVPCEndpointConnectionsResponse"
    "fixture/DescribeVPCEndpointConnectionsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeVPCEndpointConnections)

responseDescribeNetworkInterfacePermissions :: DescribeNetworkInterfacePermissionsResponse -> TestTree
responseDescribeNetworkInterfacePermissions =
  res
    "DescribeNetworkInterfacePermissionsResponse"
    "fixture/DescribeNetworkInterfacePermissionsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeNetworkInterfacePermissions)

responseCreateTrafficMirrorSession :: CreateTrafficMirrorSessionResponse -> TestTree
responseCreateTrafficMirrorSession =
  res
    "CreateTrafficMirrorSessionResponse"
    "fixture/CreateTrafficMirrorSessionResponse.proto"
    ec2
    (Proxy :: Proxy CreateTrafficMirrorSession)

responseRegisterInstanceEventNotificationAttributes :: RegisterInstanceEventNotificationAttributesResponse -> TestTree
responseRegisterInstanceEventNotificationAttributes =
  res
    "RegisterInstanceEventNotificationAttributesResponse"
    "fixture/RegisterInstanceEventNotificationAttributesResponse.proto"
    ec2
    (Proxy :: Proxy RegisterInstanceEventNotificationAttributes)

responseRejectTransitGatewayMulticastDomainAssociations :: RejectTransitGatewayMulticastDomainAssociationsResponse -> TestTree
responseRejectTransitGatewayMulticastDomainAssociations =
  res
    "RejectTransitGatewayMulticastDomainAssociationsResponse"
    "fixture/RejectTransitGatewayMulticastDomainAssociationsResponse.proto"
    ec2
    (Proxy :: Proxy RejectTransitGatewayMulticastDomainAssociations)

responseDeleteDHCPOptions :: DeleteDHCPOptionsResponse -> TestTree
responseDeleteDHCPOptions =
  res
    "DeleteDHCPOptionsResponse"
    "fixture/DeleteDHCPOptionsResponse.proto"
    ec2
    (Proxy :: Proxy DeleteDHCPOptions)

responseDeleteTransitGateway :: DeleteTransitGatewayResponse -> TestTree
responseDeleteTransitGateway =
  res
    "DeleteTransitGatewayResponse"
    "fixture/DeleteTransitGatewayResponse.proto"
    ec2
    (Proxy :: Proxy DeleteTransitGateway)

responseEnableVPCClassicLinkDNSSupport :: EnableVPCClassicLinkDNSSupportResponse -> TestTree
responseEnableVPCClassicLinkDNSSupport =
  res
    "EnableVPCClassicLinkDNSSupportResponse"
    "fixture/EnableVPCClassicLinkDNSSupportResponse.proto"
    ec2
    (Proxy :: Proxy EnableVPCClassicLinkDNSSupport)

responseDescribeRegions :: DescribeRegionsResponse -> TestTree
responseDescribeRegions =
  res
    "DescribeRegionsResponse"
    "fixture/DescribeRegionsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeRegions)

responseCreateEgressOnlyInternetGateway :: CreateEgressOnlyInternetGatewayResponse -> TestTree
responseCreateEgressOnlyInternetGateway =
  res
    "CreateEgressOnlyInternetGatewayResponse"
    "fixture/CreateEgressOnlyInternetGatewayResponse.proto"
    ec2
    (Proxy :: Proxy CreateEgressOnlyInternetGateway)

responseCreateTransitGateway :: CreateTransitGatewayResponse -> TestTree
responseCreateTransitGateway =
  res
    "CreateTransitGatewayResponse"
    "fixture/CreateTransitGatewayResponse.proto"
    ec2
    (Proxy :: Proxy CreateTransitGateway)

responseDeleteClientVPNEndpoint :: DeleteClientVPNEndpointResponse -> TestTree
responseDeleteClientVPNEndpoint =
  res
    "DeleteClientVPNEndpointResponse"
    "fixture/DeleteClientVPNEndpointResponse.proto"
    ec2
    (Proxy :: Proxy DeleteClientVPNEndpoint)

responseExportClientVPNClientCertificateRevocationList :: ExportClientVPNClientCertificateRevocationListResponse -> TestTree
responseExportClientVPNClientCertificateRevocationList =
  res
    "ExportClientVPNClientCertificateRevocationListResponse"
    "fixture/ExportClientVPNClientCertificateRevocationListResponse.proto"
    ec2
    (Proxy :: Proxy ExportClientVPNClientCertificateRevocationList)

responseCreateLaunchTemplateVersion :: CreateLaunchTemplateVersionResponse -> TestTree
responseCreateLaunchTemplateVersion =
  res
    "CreateLaunchTemplateVersionResponse"
    "fixture/CreateLaunchTemplateVersionResponse.proto"
    ec2
    (Proxy :: Proxy CreateLaunchTemplateVersion)

responseCreateSnapshots :: CreateSnapshotsResponse -> TestTree
responseCreateSnapshots =
  res
    "CreateSnapshotsResponse"
    "fixture/CreateSnapshotsResponse.proto"
    ec2
    (Proxy :: Proxy CreateSnapshots)

responseModifyDefaultCreditSpecification :: ModifyDefaultCreditSpecificationResponse -> TestTree
responseModifyDefaultCreditSpecification =
  res
    "ModifyDefaultCreditSpecificationResponse"
    "fixture/ModifyDefaultCreditSpecificationResponse.proto"
    ec2
    (Proxy :: Proxy ModifyDefaultCreditSpecification)

responseApplySecurityGroupsToClientVPNTargetNetwork :: ApplySecurityGroupsToClientVPNTargetNetworkResponse -> TestTree
responseApplySecurityGroupsToClientVPNTargetNetwork =
  res
    "ApplySecurityGroupsToClientVPNTargetNetworkResponse"
    "fixture/ApplySecurityGroupsToClientVPNTargetNetworkResponse.proto"
    ec2
    (Proxy :: Proxy ApplySecurityGroupsToClientVPNTargetNetwork)

responseAttachVPNGateway :: AttachVPNGatewayResponse -> TestTree
responseAttachVPNGateway =
  res
    "AttachVPNGatewayResponse"
    "fixture/AttachVPNGatewayResponse.proto"
    ec2
    (Proxy :: Proxy AttachVPNGateway)

responseCreateVPNConnectionRoute :: CreateVPNConnectionRouteResponse -> TestTree
responseCreateVPNConnectionRoute =
  res
    "CreateVPNConnectionRouteResponse"
    "fixture/CreateVPNConnectionRouteResponse.proto"
    ec2
    (Proxy :: Proxy CreateVPNConnectionRoute)

responseDescribeKeyPairs :: DescribeKeyPairsResponse -> TestTree
responseDescribeKeyPairs =
  res
    "DescribeKeyPairsResponse"
    "fixture/DescribeKeyPairsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeKeyPairs)

responseAllocateAddress :: AllocateAddressResponse -> TestTree
responseAllocateAddress =
  res
    "AllocateAddressResponse"
    "fixture/AllocateAddressResponse.proto"
    ec2
    (Proxy :: Proxy AllocateAddress)

responseDeleteTrafficMirrorSession :: DeleteTrafficMirrorSessionResponse -> TestTree
responseDeleteTrafficMirrorSession =
  res
    "DeleteTrafficMirrorSessionResponse"
    "fixture/DeleteTrafficMirrorSessionResponse.proto"
    ec2
    (Proxy :: Proxy DeleteTrafficMirrorSession)

responseGetManagedPrefixListEntries :: GetManagedPrefixListEntriesResponse -> TestTree
responseGetManagedPrefixListEntries =
  res
    "GetManagedPrefixListEntriesResponse"
    "fixture/GetManagedPrefixListEntriesResponse.proto"
    ec2
    (Proxy :: Proxy GetManagedPrefixListEntries)

responseCreateFpgaImage :: CreateFpgaImageResponse -> TestTree
responseCreateFpgaImage =
  res
    "CreateFpgaImageResponse"
    "fixture/CreateFpgaImageResponse.proto"
    ec2
    (Proxy :: Proxy CreateFpgaImage)

responseExportImage :: ExportImageResponse -> TestTree
responseExportImage =
  res
    "ExportImageResponse"
    "fixture/ExportImageResponse.proto"
    ec2
    (Proxy :: Proxy ExportImage)

responseRejectTransitGatewayPeeringAttachment :: RejectTransitGatewayPeeringAttachmentResponse -> TestTree
responseRejectTransitGatewayPeeringAttachment =
  res
    "RejectTransitGatewayPeeringAttachmentResponse"
    "fixture/RejectTransitGatewayPeeringAttachmentResponse.proto"
    ec2
    (Proxy :: Proxy RejectTransitGatewayPeeringAttachment)

responseDescribeConversionTasks :: DescribeConversionTasksResponse -> TestTree
responseDescribeConversionTasks =
  res
    "DescribeConversionTasksResponse"
    "fixture/DescribeConversionTasksResponse.proto"
    ec2
    (Proxy :: Proxy DescribeConversionTasks)

responseWithdrawByoipCidr :: WithdrawByoipCidrResponse -> TestTree
responseWithdrawByoipCidr =
  res
    "WithdrawByoipCidrResponse"
    "fixture/WithdrawByoipCidrResponse.proto"
    ec2
    (Proxy :: Proxy WithdrawByoipCidr)

responseDeleteTrafficMirrorFilterRule :: DeleteTrafficMirrorFilterRuleResponse -> TestTree
responseDeleteTrafficMirrorFilterRule =
  res
    "DeleteTrafficMirrorFilterRuleResponse"
    "fixture/DeleteTrafficMirrorFilterRuleResponse.proto"
    ec2
    (Proxy :: Proxy DeleteTrafficMirrorFilterRule)

responseDescribeClassicLinkInstances :: DescribeClassicLinkInstancesResponse -> TestTree
responseDescribeClassicLinkInstances =
  res
    "DescribeClassicLinkInstancesResponse"
    "fixture/DescribeClassicLinkInstancesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeClassicLinkInstances)

responseTerminateInstances :: TerminateInstancesResponse -> TestTree
responseTerminateInstances =
  res
    "TerminateInstancesResponse"
    "fixture/TerminateInstancesResponse.proto"
    ec2
    (Proxy :: Proxy TerminateInstances)

responseAcceptTransitGatewayVPCAttachment :: AcceptTransitGatewayVPCAttachmentResponse -> TestTree
responseAcceptTransitGatewayVPCAttachment =
  res
    "AcceptTransitGatewayVPCAttachmentResponse"
    "fixture/AcceptTransitGatewayVPCAttachmentResponse.proto"
    ec2
    (Proxy :: Proxy AcceptTransitGatewayVPCAttachment)

responseDisableVPCClassicLinkDNSSupport :: DisableVPCClassicLinkDNSSupportResponse -> TestTree
responseDisableVPCClassicLinkDNSSupport =
  res
    "DisableVPCClassicLinkDNSSupportResponse"
    "fixture/DisableVPCClassicLinkDNSSupportResponse.proto"
    ec2
    (Proxy :: Proxy DisableVPCClassicLinkDNSSupport)

responseGetLaunchTemplateData :: GetLaunchTemplateDataResponse -> TestTree
responseGetLaunchTemplateData =
  res
    "GetLaunchTemplateDataResponse"
    "fixture/GetLaunchTemplateDataResponse.proto"
    ec2
    (Proxy :: Proxy GetLaunchTemplateData)

responseDescribeReservedInstances :: DescribeReservedInstancesResponse -> TestTree
responseDescribeReservedInstances =
  res
    "DescribeReservedInstancesResponse"
    "fixture/DescribeReservedInstancesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeReservedInstances)

responseModifyFpgaImageAttribute :: ModifyFpgaImageAttributeResponse -> TestTree
responseModifyFpgaImageAttribute =
  res
    "ModifyFpgaImageAttributeResponse"
    "fixture/ModifyFpgaImageAttributeResponse.proto"
    ec2
    (Proxy :: Proxy ModifyFpgaImageAttribute)

responseEnableVPCClassicLink :: EnableVPCClassicLinkResponse -> TestTree
responseEnableVPCClassicLink =
  res
    "EnableVPCClassicLinkResponse"
    "fixture/EnableVPCClassicLinkResponse.proto"
    ec2
    (Proxy :: Proxy EnableVPCClassicLink)

responseAttachInternetGateway :: AttachInternetGatewayResponse -> TestTree
responseAttachInternetGateway =
  res
    "AttachInternetGatewayResponse"
    "fixture/AttachInternetGatewayResponse.proto"
    ec2
    (Proxy :: Proxy AttachInternetGateway)

responseDescribePublicIPv4Pools :: DescribePublicIPv4PoolsResponse -> TestTree
responseDescribePublicIPv4Pools =
  res
    "DescribePublicIPv4PoolsResponse"
    "fixture/DescribePublicIPv4PoolsResponse.proto"
    ec2
    (Proxy :: Proxy DescribePublicIPv4Pools)

responseCreateCustomerGateway :: CreateCustomerGatewayResponse -> TestTree
responseCreateCustomerGateway =
  res
    "CreateCustomerGatewayResponse"
    "fixture/CreateCustomerGatewayResponse.proto"
    ec2
    (Proxy :: Proxy CreateCustomerGateway)

responseDescribeIAMInstanceProfileAssociations :: DescribeIAMInstanceProfileAssociationsResponse -> TestTree
responseDescribeIAMInstanceProfileAssociations =
  res
    "DescribeIAMInstanceProfileAssociationsResponse"
    "fixture/DescribeIAMInstanceProfileAssociationsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeIAMInstanceProfileAssociations)

responseDescribeExportImageTasks :: DescribeExportImageTasksResponse -> TestTree
responseDescribeExportImageTasks =
  res
    "DescribeExportImageTasksResponse"
    "fixture/DescribeExportImageTasksResponse.proto"
    ec2
    (Proxy :: Proxy DescribeExportImageTasks)

responseProvisionByoipCidr :: ProvisionByoipCidrResponse -> TestTree
responseProvisionByoipCidr =
  res
    "ProvisionByoipCidrResponse"
    "fixture/ProvisionByoipCidrResponse.proto"
    ec2
    (Proxy :: Proxy ProvisionByoipCidr)

responseCreateReservedInstancesListing :: CreateReservedInstancesListingResponse -> TestTree
responseCreateReservedInstancesListing =
  res
    "CreateReservedInstancesListingResponse"
    "fixture/CreateReservedInstancesListingResponse.proto"
    ec2
    (Proxy :: Proxy CreateReservedInstancesListing)

responseDescribeClientVPNTargetNetworks :: DescribeClientVPNTargetNetworksResponse -> TestTree
responseDescribeClientVPNTargetNetworks =
  res
    "DescribeClientVPNTargetNetworksResponse"
    "fixture/DescribeClientVPNTargetNetworksResponse.proto"
    ec2
    (Proxy :: Proxy DescribeClientVPNTargetNetworks)

responseModifyVPNTunnelOptions :: ModifyVPNTunnelOptionsResponse -> TestTree
responseModifyVPNTunnelOptions =
  res
    "ModifyVPNTunnelOptionsResponse"
    "fixture/ModifyVPNTunnelOptionsResponse.proto"
    ec2
    (Proxy :: Proxy ModifyVPNTunnelOptions)

responseModifyInstancePlacement :: ModifyInstancePlacementResponse -> TestTree
responseModifyInstancePlacement =
  res
    "ModifyInstancePlacementResponse"
    "fixture/ModifyInstancePlacementResponse.proto"
    ec2
    (Proxy :: Proxy ModifyInstancePlacement)

responseImportKeyPair :: ImportKeyPairResponse -> TestTree
responseImportKeyPair =
  res
    "ImportKeyPairResponse"
    "fixture/ImportKeyPairResponse.proto"
    ec2
    (Proxy :: Proxy ImportKeyPair)

responseDescribeNetworkInsightsAnalyses :: DescribeNetworkInsightsAnalysesResponse -> TestTree
responseDescribeNetworkInsightsAnalyses =
  res
    "DescribeNetworkInsightsAnalysesResponse"
    "fixture/DescribeNetworkInsightsAnalysesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeNetworkInsightsAnalyses)

responseDeleteSecurityGroup :: DeleteSecurityGroupResponse -> TestTree
responseDeleteSecurityGroup =
  res
    "DeleteSecurityGroupResponse"
    "fixture/DeleteSecurityGroupResponse.proto"
    ec2
    (Proxy :: Proxy DeleteSecurityGroup)

responseCreateCarrierGateway :: CreateCarrierGatewayResponse -> TestTree
responseCreateCarrierGateway =
  res
    "CreateCarrierGatewayResponse"
    "fixture/CreateCarrierGatewayResponse.proto"
    ec2
    (Proxy :: Proxy CreateCarrierGateway)

responseCreateSnapshot :: Snapshot -> TestTree
responseCreateSnapshot =
  res
    "CreateSnapshotResponse"
    "fixture/CreateSnapshotResponse.proto"
    ec2
    (Proxy :: Proxy CreateSnapshot)

responseModifyVolume :: ModifyVolumeResponse -> TestTree
responseModifyVolume =
  res
    "ModifyVolumeResponse"
    "fixture/ModifyVolumeResponse.proto"
    ec2
    (Proxy :: Proxy ModifyVolume)

responseDeleteNetworkInsightsAnalysis :: DeleteNetworkInsightsAnalysisResponse -> TestTree
responseDeleteNetworkInsightsAnalysis =
  res
    "DeleteNetworkInsightsAnalysisResponse"
    "fixture/DeleteNetworkInsightsAnalysisResponse.proto"
    ec2
    (Proxy :: Proxy DeleteNetworkInsightsAnalysis)

responseDescribeLocalGatewayRouteTableVPCAssociations :: DescribeLocalGatewayRouteTableVPCAssociationsResponse -> TestTree
responseDescribeLocalGatewayRouteTableVPCAssociations =
  res
    "DescribeLocalGatewayRouteTableVPCAssociationsResponse"
    "fixture/DescribeLocalGatewayRouteTableVPCAssociationsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeLocalGatewayRouteTableVPCAssociations)

responseCreateTrafficMirrorFilter :: CreateTrafficMirrorFilterResponse -> TestTree
responseCreateTrafficMirrorFilter =
  res
    "CreateTrafficMirrorFilterResponse"
    "fixture/CreateTrafficMirrorFilterResponse.proto"
    ec2
    (Proxy :: Proxy CreateTrafficMirrorFilter)

responseDeleteSpotDatafeedSubscription :: DeleteSpotDatafeedSubscriptionResponse -> TestTree
responseDeleteSpotDatafeedSubscription =
  res
    "DeleteSpotDatafeedSubscriptionResponse"
    "fixture/DeleteSpotDatafeedSubscriptionResponse.proto"
    ec2
    (Proxy :: Proxy DeleteSpotDatafeedSubscription)

responseDescribeInstanceAttribute :: DescribeInstanceAttributeResponse -> TestTree
responseDescribeInstanceAttribute =
  res
    "DescribeInstanceAttributeResponse"
    "fixture/DescribeInstanceAttributeResponse.proto"
    ec2
    (Proxy :: Proxy DescribeInstanceAttribute)

responseCreateCapacityReservation :: CreateCapacityReservationResponse -> TestTree
responseCreateCapacityReservation =
  res
    "CreateCapacityReservationResponse"
    "fixture/CreateCapacityReservationResponse.proto"
    ec2
    (Proxy :: Proxy CreateCapacityReservation)

responseDeleteTransitGatewayConnect :: DeleteTransitGatewayConnectResponse -> TestTree
responseDeleteTransitGatewayConnect =
  res
    "DeleteTransitGatewayConnectResponse"
    "fixture/DeleteTransitGatewayConnectResponse.proto"
    ec2
    (Proxy :: Proxy DeleteTransitGatewayConnect)

responseModifyEBSDefaultKMSKeyId :: ModifyEBSDefaultKMSKeyIdResponse -> TestTree
responseModifyEBSDefaultKMSKeyId =
  res
    "ModifyEBSDefaultKMSKeyIdResponse"
    "fixture/ModifyEBSDefaultKMSKeyIdResponse.proto"
    ec2
    (Proxy :: Proxy ModifyEBSDefaultKMSKeyId)

responseDeleteRoute :: DeleteRouteResponse -> TestTree
responseDeleteRoute =
  res
    "DeleteRouteResponse"
    "fixture/DeleteRouteResponse.proto"
    ec2
    (Proxy :: Proxy DeleteRoute)

responseDescribeNetworkInsightsPaths :: DescribeNetworkInsightsPathsResponse -> TestTree
responseDescribeNetworkInsightsPaths =
  res
    "DescribeNetworkInsightsPathsResponse"
    "fixture/DescribeNetworkInsightsPathsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeNetworkInsightsPaths)

responsePurchaseScheduledInstances :: PurchaseScheduledInstancesResponse -> TestTree
responsePurchaseScheduledInstances =
  res
    "PurchaseScheduledInstancesResponse"
    "fixture/PurchaseScheduledInstancesResponse.proto"
    ec2
    (Proxy :: Proxy PurchaseScheduledInstances)

responseCreateTransitGatewayPeeringAttachment :: CreateTransitGatewayPeeringAttachmentResponse -> TestTree
responseCreateTransitGatewayPeeringAttachment =
  res
    "CreateTransitGatewayPeeringAttachmentResponse"
    "fixture/CreateTransitGatewayPeeringAttachmentResponse.proto"
    ec2
    (Proxy :: Proxy CreateTransitGatewayPeeringAttachment)

responseGetDefaultCreditSpecification :: GetDefaultCreditSpecificationResponse -> TestTree
responseGetDefaultCreditSpecification =
  res
    "GetDefaultCreditSpecificationResponse"
    "fixture/GetDefaultCreditSpecificationResponse.proto"
    ec2
    (Proxy :: Proxy GetDefaultCreditSpecification)

responseDescribeInternetGateways :: DescribeInternetGatewaysResponse -> TestTree
responseDescribeInternetGateways =
  res
    "DescribeInternetGatewaysResponse"
    "fixture/DescribeInternetGatewaysResponse.proto"
    ec2
    (Proxy :: Proxy DescribeInternetGateways)

responseModifyInstanceAttribute :: ModifyInstanceAttributeResponse -> TestTree
responseModifyInstanceAttribute =
  res
    "ModifyInstanceAttributeResponse"
    "fixture/ModifyInstanceAttributeResponse.proto"
    ec2
    (Proxy :: Proxy ModifyInstanceAttribute)

responseCreateSecurityGroup :: CreateSecurityGroupResponse -> TestTree
responseCreateSecurityGroup =
  res
    "CreateSecurityGroupResponse"
    "fixture/CreateSecurityGroupResponse.proto"
    ec2
    (Proxy :: Proxy CreateSecurityGroup)

responseCreateTransitGatewayConnect :: CreateTransitGatewayConnectResponse -> TestTree
responseCreateTransitGatewayConnect =
  res
    "CreateTransitGatewayConnectResponse"
    "fixture/CreateTransitGatewayConnectResponse.proto"
    ec2
    (Proxy :: Proxy CreateTransitGatewayConnect)

responseReplaceNetworkACLAssociation :: ReplaceNetworkACLAssociationResponse -> TestTree
responseReplaceNetworkACLAssociation =
  res
    "ReplaceNetworkACLAssociationResponse"
    "fixture/ReplaceNetworkACLAssociationResponse.proto"
    ec2
    (Proxy :: Proxy ReplaceNetworkACLAssociation)

responseCreateRoute :: CreateRouteResponse -> TestTree
responseCreateRoute =
  res
    "CreateRouteResponse"
    "fixture/CreateRouteResponse.proto"
    ec2
    (Proxy :: Proxy CreateRoute)

responseDeleteLaunchTemplateVersions :: DeleteLaunchTemplateVersionsResponse -> TestTree
responseDeleteLaunchTemplateVersions =
  res
    "DeleteLaunchTemplateVersionsResponse"
    "fixture/DeleteLaunchTemplateVersionsResponse.proto"
    ec2
    (Proxy :: Proxy DeleteLaunchTemplateVersions)

responseDescribeIdentityIdFormat :: DescribeIdentityIdFormatResponse -> TestTree
responseDescribeIdentityIdFormat =
  res
    "DescribeIdentityIdFormatResponse"
    "fixture/DescribeIdentityIdFormatResponse.proto"
    ec2
    (Proxy :: Proxy DescribeIdentityIdFormat)

responseDeleteTrafficMirrorFilter :: DeleteTrafficMirrorFilterResponse -> TestTree
responseDeleteTrafficMirrorFilter =
  res
    "DeleteTrafficMirrorFilterResponse"
    "fixture/DeleteTrafficMirrorFilterResponse.proto"
    ec2
    (Proxy :: Proxy DeleteTrafficMirrorFilter)

responseReplaceRoute :: ReplaceRouteResponse -> TestTree
responseReplaceRoute =
  res
    "ReplaceRouteResponse"
    "fixture/ReplaceRouteResponse.proto"
    ec2
    (Proxy :: Proxy ReplaceRoute)

responseResetSnapshotAttribute :: ResetSnapshotAttributeResponse -> TestTree
responseResetSnapshotAttribute =
  res
    "ResetSnapshotAttributeResponse"
    "fixture/ResetSnapshotAttributeResponse.proto"
    ec2
    (Proxy :: Proxy ResetSnapshotAttribute)

responseResetEBSDefaultKMSKeyId :: ResetEBSDefaultKMSKeyIdResponse -> TestTree
responseResetEBSDefaultKMSKeyId =
  res
    "ResetEBSDefaultKMSKeyIdResponse"
    "fixture/ResetEBSDefaultKMSKeyIdResponse.proto"
    ec2
    (Proxy :: Proxy ResetEBSDefaultKMSKeyId)

responseCreateTags :: CreateTagsResponse -> TestTree
responseCreateTags =
  res
    "CreateTagsResponse"
    "fixture/CreateTagsResponse.proto"
    ec2
    (Proxy :: Proxy CreateTags)

responseBundleInstance :: BundleInstanceResponse -> TestTree
responseBundleInstance =
  res
    "BundleInstanceResponse"
    "fixture/BundleInstanceResponse.proto"
    ec2
    (Proxy :: Proxy BundleInstance)

responseDeleteTransitGatewayPeeringAttachment :: DeleteTransitGatewayPeeringAttachmentResponse -> TestTree
responseDeleteTransitGatewayPeeringAttachment =
  res
    "DeleteTransitGatewayPeeringAttachmentResponse"
    "fixture/DeleteTransitGatewayPeeringAttachmentResponse.proto"
    ec2
    (Proxy :: Proxy DeleteTransitGatewayPeeringAttachment)

responseAuthorizeClientVPNIngress :: AuthorizeClientVPNIngressResponse -> TestTree
responseAuthorizeClientVPNIngress =
  res
    "AuthorizeClientVPNIngressResponse"
    "fixture/AuthorizeClientVPNIngressResponse.proto"
    ec2
    (Proxy :: Proxy AuthorizeClientVPNIngress)

responseModifyLaunchTemplate :: ModifyLaunchTemplateResponse -> TestTree
responseModifyLaunchTemplate =
  res
    "ModifyLaunchTemplateResponse"
    "fixture/ModifyLaunchTemplateResponse.proto"
    ec2
    (Proxy :: Proxy ModifyLaunchTemplate)

responseDeleteCustomerGateway :: DeleteCustomerGatewayResponse -> TestTree
responseDeleteCustomerGateway =
  res
    "DeleteCustomerGatewayResponse"
    "fixture/DeleteCustomerGatewayResponse.proto"
    ec2
    (Proxy :: Proxy DeleteCustomerGateway)

responseTerminateClientVPNConnections :: TerminateClientVPNConnectionsResponse -> TestTree
responseTerminateClientVPNConnections =
  res
    "TerminateClientVPNConnectionsResponse"
    "fixture/TerminateClientVPNConnectionsResponse.proto"
    ec2
    (Proxy :: Proxy TerminateClientVPNConnections)

responseGetEBSEncryptionByDefault :: GetEBSEncryptionByDefaultResponse -> TestTree
responseGetEBSEncryptionByDefault =
  res
    "GetEBSEncryptionByDefaultResponse"
    "fixture/GetEBSEncryptionByDefaultResponse.proto"
    ec2
    (Proxy :: Proxy GetEBSEncryptionByDefault)

responseCreateVPCPeeringConnection :: CreateVPCPeeringConnectionResponse -> TestTree
responseCreateVPCPeeringConnection =
  res
    "CreateVPCPeeringConnectionResponse"
    "fixture/CreateVPCPeeringConnectionResponse.proto"
    ec2
    (Proxy :: Proxy CreateVPCPeeringConnection)

responseDeleteTransitGatewayVPCAttachment :: DeleteTransitGatewayVPCAttachmentResponse -> TestTree
responseDeleteTransitGatewayVPCAttachment =
  res
    "DeleteTransitGatewayVPCAttachmentResponse"
    "fixture/DeleteTransitGatewayVPCAttachmentResponse.proto"
    ec2
    (Proxy :: Proxy DeleteTransitGatewayVPCAttachment)

responseReplaceIAMInstanceProfileAssociation :: ReplaceIAMInstanceProfileAssociationResponse -> TestTree
responseReplaceIAMInstanceProfileAssociation =
  res
    "ReplaceIAMInstanceProfileAssociationResponse"
    "fixture/ReplaceIAMInstanceProfileAssociationResponse.proto"
    ec2
    (Proxy :: Proxy ReplaceIAMInstanceProfileAssociation)

responseDeleteTransitGatewayConnectPeer :: DeleteTransitGatewayConnectPeerResponse -> TestTree
responseDeleteTransitGatewayConnectPeer =
  res
    "DeleteTransitGatewayConnectPeerResponse"
    "fixture/DeleteTransitGatewayConnectPeerResponse.proto"
    ec2
    (Proxy :: Proxy DeleteTransitGatewayConnectPeer)

responseAssociateAddress :: AssociateAddressResponse -> TestTree
responseAssociateAddress =
  res
    "AssociateAddressResponse"
    "fixture/AssociateAddressResponse.proto"
    ec2
    (Proxy :: Proxy AssociateAddress)

responseCancelSpotFleetRequests :: CancelSpotFleetRequestsResponse -> TestTree
responseCancelSpotFleetRequests =
  res
    "CancelSpotFleetRequestsResponse"
    "fixture/CancelSpotFleetRequestsResponse.proto"
    ec2
    (Proxy :: Proxy CancelSpotFleetRequests)

responseResetNetworkInterfaceAttribute :: ResetNetworkInterfaceAttributeResponse -> TestTree
responseResetNetworkInterfaceAttribute =
  res
    "ResetNetworkInterfaceAttributeResponse"
    "fixture/ResetNetworkInterfaceAttributeResponse.proto"
    ec2
    (Proxy :: Proxy ResetNetworkInterfaceAttribute)

responseStartInstances :: StartInstancesResponse -> TestTree
responseStartInstances =
  res
    "StartInstancesResponse"
    "fixture/StartInstancesResponse.proto"
    ec2
    (Proxy :: Proxy StartInstances)

responseDisassociateTransitGatewayRouteTable :: DisassociateTransitGatewayRouteTableResponse -> TestTree
responseDisassociateTransitGatewayRouteTable =
  res
    "DisassociateTransitGatewayRouteTableResponse"
    "fixture/DisassociateTransitGatewayRouteTableResponse.proto"
    ec2
    (Proxy :: Proxy DisassociateTransitGatewayRouteTable)

responseCopyFpgaImage :: CopyFpgaImageResponse -> TestTree
responseCopyFpgaImage =
  res
    "CopyFpgaImageResponse"
    "fixture/CopyFpgaImageResponse.proto"
    ec2
    (Proxy :: Proxy CopyFpgaImage)

responseReleaseHosts :: ReleaseHostsResponse -> TestTree
responseReleaseHosts =
  res
    "ReleaseHostsResponse"
    "fixture/ReleaseHostsResponse.proto"
    ec2
    (Proxy :: Proxy ReleaseHosts)

responseDescribeFastSnapshotRestores :: DescribeFastSnapshotRestoresResponse -> TestTree
responseDescribeFastSnapshotRestores =
  res
    "DescribeFastSnapshotRestoresResponse"
    "fixture/DescribeFastSnapshotRestoresResponse.proto"
    ec2
    (Proxy :: Proxy DescribeFastSnapshotRestores)

responseDescribeTrafficMirrorFilters :: DescribeTrafficMirrorFiltersResponse -> TestTree
responseDescribeTrafficMirrorFilters =
  res
    "DescribeTrafficMirrorFiltersResponse"
    "fixture/DescribeTrafficMirrorFiltersResponse.proto"
    ec2
    (Proxy :: Proxy DescribeTrafficMirrorFilters)

responseCreateTransitGatewayPrefixListReference :: CreateTransitGatewayPrefixListReferenceResponse -> TestTree
responseCreateTransitGatewayPrefixListReference =
  res
    "CreateTransitGatewayPrefixListReferenceResponse"
    "fixture/CreateTransitGatewayPrefixListReferenceResponse.proto"
    ec2
    (Proxy :: Proxy CreateTransitGatewayPrefixListReference)

responseDeleteNetworkInterface :: DeleteNetworkInterfaceResponse -> TestTree
responseDeleteNetworkInterface =
  res
    "DeleteNetworkInterfaceResponse"
    "fixture/DeleteNetworkInterfaceResponse.proto"
    ec2
    (Proxy :: Proxy DeleteNetworkInterface)

responseCreateTransitGatewayRoute :: CreateTransitGatewayRouteResponse -> TestTree
responseCreateTransitGatewayRoute =
  res
    "CreateTransitGatewayRouteResponse"
    "fixture/CreateTransitGatewayRouteResponse.proto"
    ec2
    (Proxy :: Proxy CreateTransitGatewayRoute)

responseDeregisterTransitGatewayMulticastGroupSources :: DeregisterTransitGatewayMulticastGroupSourcesResponse -> TestTree
responseDeregisterTransitGatewayMulticastGroupSources =
  res
    "DeregisterTransitGatewayMulticastGroupSourcesResponse"
    "fixture/DeregisterTransitGatewayMulticastGroupSourcesResponse.proto"
    ec2
    (Proxy :: Proxy DeregisterTransitGatewayMulticastGroupSources)

responseDisassociateVPCCidrBlock :: DisassociateVPCCidrBlockResponse -> TestTree
responseDisassociateVPCCidrBlock =
  res
    "DisassociateVPCCidrBlockResponse"
    "fixture/DisassociateVPCCidrBlockResponse.proto"
    ec2
    (Proxy :: Proxy DisassociateVPCCidrBlock)

responseDescribeTransitGatewayPeeringAttachments :: DescribeTransitGatewayPeeringAttachmentsResponse -> TestTree
responseDescribeTransitGatewayPeeringAttachments =
  res
    "DescribeTransitGatewayPeeringAttachmentsResponse"
    "fixture/DescribeTransitGatewayPeeringAttachmentsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeTransitGatewayPeeringAttachments)

responseGetCoipPoolUsage :: GetCoipPoolUsageResponse -> TestTree
responseGetCoipPoolUsage =
  res
    "GetCoipPoolUsageResponse"
    "fixture/GetCoipPoolUsageResponse.proto"
    ec2
    (Proxy :: Proxy GetCoipPoolUsage)

responseImportImage :: ImportImageResponse -> TestTree
responseImportImage =
  res
    "ImportImageResponse"
    "fixture/ImportImageResponse.proto"
    ec2
    (Proxy :: Proxy ImportImage)

responseReplaceTransitGatewayRoute :: ReplaceTransitGatewayRouteResponse -> TestTree
responseReplaceTransitGatewayRoute =
  res
    "ReplaceTransitGatewayRouteResponse"
    "fixture/ReplaceTransitGatewayRouteResponse.proto"
    ec2
    (Proxy :: Proxy ReplaceTransitGatewayRoute)

responseCreatePlacementGroup :: CreatePlacementGroupResponse -> TestTree
responseCreatePlacementGroup =
  res
    "CreatePlacementGroupResponse"
    "fixture/CreatePlacementGroupResponse.proto"
    ec2
    (Proxy :: Proxy CreatePlacementGroup)

responseCreateDefaultVPC :: CreateDefaultVPCResponse -> TestTree
responseCreateDefaultVPC =
  res
    "CreateDefaultVPCResponse"
    "fixture/CreateDefaultVPCResponse.proto"
    ec2
    (Proxy :: Proxy CreateDefaultVPC)

responseCreateNetworkInsightsPath :: CreateNetworkInsightsPathResponse -> TestTree
responseCreateNetworkInsightsPath =
  res
    "CreateNetworkInsightsPathResponse"
    "fixture/CreateNetworkInsightsPathResponse.proto"
    ec2
    (Proxy :: Proxy CreateNetworkInsightsPath)

responseModifyTrafficMirrorSession :: ModifyTrafficMirrorSessionResponse -> TestTree
responseModifyTrafficMirrorSession =
  res
    "ModifyTrafficMirrorSessionResponse"
    "fixture/ModifyTrafficMirrorSessionResponse.proto"
    ec2
    (Proxy :: Proxy ModifyTrafficMirrorSession)

responseRunScheduledInstances :: RunScheduledInstancesResponse -> TestTree
responseRunScheduledInstances =
  res
    "RunScheduledInstancesResponse"
    "fixture/RunScheduledInstancesResponse.proto"
    ec2
    (Proxy :: Proxy RunScheduledInstances)

responseDescribeDHCPOptions :: DescribeDHCPOptionsResponse -> TestTree
responseDescribeDHCPOptions =
  res
    "DescribeDHCPOptionsResponse"
    "fixture/DescribeDHCPOptionsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeDHCPOptions)

responseDescribeCapacityReservations :: DescribeCapacityReservationsResponse -> TestTree
responseDescribeCapacityReservations =
  res
    "DescribeCapacityReservationsResponse"
    "fixture/DescribeCapacityReservationsResponse.proto"
    ec2
    (Proxy :: Proxy DescribeCapacityReservations)

responseDescribeCustomerGateways :: DescribeCustomerGatewaysResponse -> TestTree
responseDescribeCustomerGateways =
  res
    "DescribeCustomerGatewaysResponse"
    "fixture/DescribeCustomerGatewaysResponse.proto"
    ec2
    (Proxy :: Proxy DescribeCustomerGateways)

responseDeleteNatGateway :: DeleteNatGatewayResponse -> TestTree
responseDeleteNatGateway =
  res
    "DeleteNatGatewayResponse"
    "fixture/DeleteNatGatewayResponse.proto"
    ec2
    (Proxy :: Proxy DeleteNatGateway)

responseDescribeClientVPNAuthorizationRules :: DescribeClientVPNAuthorizationRulesResponse -> TestTree
responseDescribeClientVPNAuthorizationRules =
  res
    "DescribeClientVPNAuthorizationRulesResponse"
    "fixture/DescribeClientVPNAuthorizationRulesResponse.proto"
    ec2
    (Proxy :: Proxy DescribeClientVPNAuthorizationRules)

responseStopInstances :: StopInstancesResponse -> TestTree
responseStopInstances =
  res
    "StopInstancesResponse"
    "fixture/StopInstancesResponse.proto"
    ec2
    (Proxy :: Proxy StopInstances)

responseReplaceRouteTableAssociation :: ReplaceRouteTableAssociationResponse -> TestTree
responseReplaceRouteTableAssociation =
  res
    "ReplaceRouteTableAssociationResponse"
    "fixture/ReplaceRouteTableAssociationResponse.proto"
    ec2
    (Proxy :: Proxy ReplaceRouteTableAssociation)

responseDeleteTransitGatewayMulticastDomain :: DeleteTransitGatewayMulticastDomainResponse -> TestTree
responseDeleteTransitGatewayMulticastDomain =
  res
    "DeleteTransitGatewayMulticastDomainResponse"
    "fixture/DeleteTransitGatewayMulticastDomainResponse.proto"
    ec2
    (Proxy :: Proxy DeleteTransitGatewayMulticastDomain)

responseDeleteSubnet :: DeleteSubnetResponse -> TestTree
responseDeleteSubnet =
  res
    "DeleteSubnetResponse"
    "fixture/DeleteSubnetResponse.proto"
    ec2
    (Proxy :: Proxy DeleteSubnet)
