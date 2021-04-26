{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors

    -- * Re-exported Types
    module Network.AWS.EC2.Internal,

    -- * AccountAttributeName
    AccountAttributeName (..),

    -- * ActivityStatus
    ActivityStatus (..),

    -- * AddressAttributeName
    AddressAttributeName (..),

    -- * AddressStatus
    AddressStatus (..),

    -- * Affinity
    Affinity (..),

    -- * AllocationState
    AllocationState (..),

    -- * AllocationStrategy
    AllocationStrategy (..),

    -- * AllowsMultipleInstanceTypes
    AllowsMultipleInstanceTypes (..),

    -- * AnalysisStatus
    AnalysisStatus (..),

    -- * ApplianceModeSupportValue
    ApplianceModeSupportValue (..),

    -- * ArchitectureType
    ArchitectureType (..),

    -- * ArchitectureValues
    ArchitectureValues (..),

    -- * AssociatedNetworkType
    AssociatedNetworkType (..),

    -- * AssociationStatusCode
    AssociationStatusCode (..),

    -- * AttachmentStatus
    AttachmentStatus (..),

    -- * AutoAcceptSharedAssociationsValue
    AutoAcceptSharedAssociationsValue (..),

    -- * AutoAcceptSharedAttachmentsValue
    AutoAcceptSharedAttachmentsValue (..),

    -- * AutoPlacement
    AutoPlacement (..),

    -- * AvailabilityZoneOptInStatus
    AvailabilityZoneOptInStatus (..),

    -- * AvailabilityZoneState
    AvailabilityZoneState (..),

    -- * BatchState
    BatchState (..),

    -- * BgpStatus
    BgpStatus (..),

    -- * BundleTaskState
    BundleTaskState (..),

    -- * ByoipCidrState
    ByoipCidrState (..),

    -- * CancelBatchErrorCode
    CancelBatchErrorCode (..),

    -- * CancelSpotInstanceRequestState
    CancelSpotInstanceRequestState (..),

    -- * CapacityReservationInstancePlatform
    CapacityReservationInstancePlatform (..),

    -- * CapacityReservationPreference
    CapacityReservationPreference (..),

    -- * CapacityReservationState
    CapacityReservationState (..),

    -- * CapacityReservationTenancy
    CapacityReservationTenancy (..),

    -- * CarrierGatewayState
    CarrierGatewayState (..),

    -- * ClientCertificateRevocationListStatusCode
    ClientCertificateRevocationListStatusCode (..),

    -- * ClientVpnAuthenticationType
    ClientVpnAuthenticationType (..),

    -- * ClientVpnAuthorizationRuleStatusCode
    ClientVpnAuthorizationRuleStatusCode (..),

    -- * ClientVpnConnectionStatusCode
    ClientVpnConnectionStatusCode (..),

    -- * ClientVpnEndpointAttributeStatusCode
    ClientVpnEndpointAttributeStatusCode (..),

    -- * ClientVpnEndpointStatusCode
    ClientVpnEndpointStatusCode (..),

    -- * ClientVpnRouteStatusCode
    ClientVpnRouteStatusCode (..),

    -- * ConnectionNotificationState
    ConnectionNotificationState (..),

    -- * ConnectionNotificationType
    ConnectionNotificationType (..),

    -- * ContainerFormat
    ContainerFormat (..),

    -- * ConversionTaskState
    ConversionTaskState (..),

    -- * CopyTagsFromSource
    CopyTagsFromSource (..),

    -- * CurrencyCodeValues
    CurrencyCodeValues (..),

    -- * DatafeedSubscriptionState
    DatafeedSubscriptionState (..),

    -- * DefaultRouteTableAssociationValue
    DefaultRouteTableAssociationValue (..),

    -- * DefaultRouteTablePropagationValue
    DefaultRouteTablePropagationValue (..),

    -- * DefaultTargetCapacityType
    DefaultTargetCapacityType (..),

    -- * DeleteFleetErrorCode
    DeleteFleetErrorCode (..),

    -- * DeleteQueuedReservedInstancesErrorCode
    DeleteQueuedReservedInstancesErrorCode (..),

    -- * DeviceType
    DeviceType (..),

    -- * DiskImageFormat
    DiskImageFormat (..),

    -- * DiskType
    DiskType (..),

    -- * DnsNameState
    DnsNameState (..),

    -- * DnsSupportValue
    DnsSupportValue (..),

    -- * DomainType
    DomainType (..),

    -- * EbsEncryptionSupport
    EbsEncryptionSupport (..),

    -- * EbsNvmeSupport
    EbsNvmeSupport (..),

    -- * EbsOptimizedSupport
    EbsOptimizedSupport (..),

    -- * ElasticGpuState
    ElasticGpuState (..),

    -- * ElasticGpuStatus
    ElasticGpuStatus (..),

    -- * EnaSupport
    EnaSupport (..),

    -- * EndDateType
    EndDateType (..),

    -- * EphemeralNvmeSupport
    EphemeralNvmeSupport (..),

    -- * EventCode
    EventCode (..),

    -- * EventType
    EventType (..),

    -- * ExcessCapacityTerminationPolicy
    ExcessCapacityTerminationPolicy (..),

    -- * ExportEnvironment
    ExportEnvironment (..),

    -- * ExportTaskState
    ExportTaskState (..),

    -- * FastSnapshotRestoreStateCode
    FastSnapshotRestoreStateCode (..),

    -- * FleetActivityStatus
    FleetActivityStatus (..),

    -- * FleetCapacityReservationUsageStrategy
    FleetCapacityReservationUsageStrategy (..),

    -- * FleetEventType
    FleetEventType (..),

    -- * FleetExcessCapacityTerminationPolicy
    FleetExcessCapacityTerminationPolicy (..),

    -- * FleetOnDemandAllocationStrategy
    FleetOnDemandAllocationStrategy (..),

    -- * FleetReplacementStrategy
    FleetReplacementStrategy (..),

    -- * FleetStateCode
    FleetStateCode (..),

    -- * FleetType
    FleetType (..),

    -- * FlowLogsResourceType
    FlowLogsResourceType (..),

    -- * FpgaImageAttributeName
    FpgaImageAttributeName (..),

    -- * FpgaImageStateCode
    FpgaImageStateCode (..),

    -- * GatewayType
    GatewayType (..),

    -- * HostRecovery
    HostRecovery (..),

    -- * HostTenancy
    HostTenancy (..),

    -- * HttpTokensState
    HttpTokensState (..),

    -- * HypervisorType
    HypervisorType (..),

    -- * IamInstanceProfileAssociationState
    IamInstanceProfileAssociationState (..),

    -- * Igmpv2SupportValue
    Igmpv2SupportValue (..),

    -- * ImageAttributeName
    ImageAttributeName (..),

    -- * ImageState
    ImageState (..),

    -- * ImageTypeValues
    ImageTypeValues (..),

    -- * InstanceAttributeName
    InstanceAttributeName (..),

    -- * InstanceHealthStatus
    InstanceHealthStatus (..),

    -- * InstanceInterruptionBehavior
    InstanceInterruptionBehavior (..),

    -- * InstanceLifecycle
    InstanceLifecycle (..),

    -- * InstanceLifecycleType
    InstanceLifecycleType (..),

    -- * InstanceMatchCriteria
    InstanceMatchCriteria (..),

    -- * InstanceMetadataEndpointState
    InstanceMetadataEndpointState (..),

    -- * InstanceMetadataOptionsState
    InstanceMetadataOptionsState (..),

    -- * InstanceStateName
    InstanceStateName (..),

    -- * InstanceType
    InstanceType (..),

    -- * InstanceTypeHypervisor
    InstanceTypeHypervisor (..),

    -- * InterfacePermissionType
    InterfacePermissionType (..),

    -- * Ipv6SupportValue
    Ipv6SupportValue (..),

    -- * LaunchTemplateErrorCode
    LaunchTemplateErrorCode (..),

    -- * LaunchTemplateHttpTokensState
    LaunchTemplateHttpTokensState (..),

    -- * LaunchTemplateInstanceMetadataEndpointState
    LaunchTemplateInstanceMetadataEndpointState (..),

    -- * LaunchTemplateInstanceMetadataOptionsState
    LaunchTemplateInstanceMetadataOptionsState (..),

    -- * ListingState
    ListingState (..),

    -- * ListingStatus
    ListingStatus (..),

    -- * LocalGatewayRouteState
    LocalGatewayRouteState (..),

    -- * LocalGatewayRouteType
    LocalGatewayRouteType (..),

    -- * LocationType
    LocationType (..),

    -- * LogDestinationType
    LogDestinationType (..),

    -- * MarketType
    MarketType (..),

    -- * MembershipType
    MembershipType (..),

    -- * ModifyAvailabilityZoneOptInStatus
    ModifyAvailabilityZoneOptInStatus (..),

    -- * MonitoringState
    MonitoringState (..),

    -- * MoveStatus
    MoveStatus (..),

    -- * MulticastSupportValue
    MulticastSupportValue (..),

    -- * NatGatewayState
    NatGatewayState (..),

    -- * NetworkInterfaceAttribute
    NetworkInterfaceAttribute (..),

    -- * NetworkInterfaceCreationType
    NetworkInterfaceCreationType (..),

    -- * NetworkInterfacePermissionStateCode
    NetworkInterfacePermissionStateCode (..),

    -- * NetworkInterfaceStatus
    NetworkInterfaceStatus (..),

    -- * NetworkInterfaceType
    NetworkInterfaceType (..),

    -- * OfferingClassType
    OfferingClassType (..),

    -- * OfferingTypeValues
    OfferingTypeValues (..),

    -- * OnDemandAllocationStrategy
    OnDemandAllocationStrategy (..),

    -- * OperationType
    OperationType (..),

    -- * PaymentOption
    PaymentOption (..),

    -- * PermissionGroup
    PermissionGroup (..),

    -- * PlacementGroupState
    PlacementGroupState (..),

    -- * PlacementGroupStrategy
    PlacementGroupStrategy (..),

    -- * PlacementStrategy
    PlacementStrategy (..),

    -- * PlatformValues
    PlatformValues (..),

    -- * PrefixListState
    PrefixListState (..),

    -- * PrincipalType
    PrincipalType (..),

    -- * ProductCodeValues
    ProductCodeValues (..),

    -- * Protocol
    Protocol (..),

    -- * ProtocolValue
    ProtocolValue (..),

    -- * RIProductDescription
    RIProductDescription (..),

    -- * RecurringChargeFrequency
    RecurringChargeFrequency (..),

    -- * ReplacementStrategy
    ReplacementStrategy (..),

    -- * ReportInstanceReasonCodes
    ReportInstanceReasonCodes (..),

    -- * ReportStatusType
    ReportStatusType (..),

    -- * ReservationState
    ReservationState (..),

    -- * ReservedInstanceState
    ReservedInstanceState (..),

    -- * ResetFpgaImageAttributeName
    ResetFpgaImageAttributeName (..),

    -- * ResetImageAttributeName
    ResetImageAttributeName (..),

    -- * ResourceType
    ResourceType (..),

    -- * RootDeviceType
    RootDeviceType (..),

    -- * RouteOrigin
    RouteOrigin (..),

    -- * RouteState
    RouteState (..),

    -- * RouteTableAssociationStateCode
    RouteTableAssociationStateCode (..),

    -- * RuleAction
    RuleAction (..),

    -- * Scope
    Scope (..),

    -- * SelfServicePortal
    SelfServicePortal (..),

    -- * ServiceState
    ServiceState (..),

    -- * ServiceType
    ServiceType (..),

    -- * ShutdownBehavior
    ShutdownBehavior (..),

    -- * SnapshotAttributeName
    SnapshotAttributeName (..),

    -- * SnapshotState
    SnapshotState (..),

    -- * SpotAllocationStrategy
    SpotAllocationStrategy (..),

    -- * SpotInstanceInterruptionBehavior
    SpotInstanceInterruptionBehavior (..),

    -- * SpotInstanceState
    SpotInstanceState (..),

    -- * SpotInstanceType
    SpotInstanceType (..),

    -- * State
    State (..),

    -- * StaticSourcesSupportValue
    StaticSourcesSupportValue (..),

    -- * StatusName
    StatusName (..),

    -- * StatusType
    StatusType (..),

    -- * SubnetCidrBlockStateCode
    SubnetCidrBlockStateCode (..),

    -- * SubnetState
    SubnetState (..),

    -- * SummaryStatus
    SummaryStatus (..),

    -- * TelemetryStatus
    TelemetryStatus (..),

    -- * Tenancy
    Tenancy (..),

    -- * TrafficDirection
    TrafficDirection (..),

    -- * TrafficMirrorFilterRuleField
    TrafficMirrorFilterRuleField (..),

    -- * TrafficMirrorNetworkService
    TrafficMirrorNetworkService (..),

    -- * TrafficMirrorRuleAction
    TrafficMirrorRuleAction (..),

    -- * TrafficMirrorSessionField
    TrafficMirrorSessionField (..),

    -- * TrafficMirrorTargetType
    TrafficMirrorTargetType (..),

    -- * TrafficType
    TrafficType (..),

    -- * TransitGatewayAssociationState
    TransitGatewayAssociationState (..),

    -- * TransitGatewayAttachmentResourceType
    TransitGatewayAttachmentResourceType (..),

    -- * TransitGatewayAttachmentState
    TransitGatewayAttachmentState (..),

    -- * TransitGatewayConnectPeerState
    TransitGatewayConnectPeerState (..),

    -- * TransitGatewayMulitcastDomainAssociationState
    TransitGatewayMulitcastDomainAssociationState (..),

    -- * TransitGatewayMulticastDomainState
    TransitGatewayMulticastDomainState (..),

    -- * TransitGatewayPrefixListReferenceState
    TransitGatewayPrefixListReferenceState (..),

    -- * TransitGatewayPropagationState
    TransitGatewayPropagationState (..),

    -- * TransitGatewayRouteState
    TransitGatewayRouteState (..),

    -- * TransitGatewayRouteTableState
    TransitGatewayRouteTableState (..),

    -- * TransitGatewayRouteType
    TransitGatewayRouteType (..),

    -- * TransitGatewayState
    TransitGatewayState (..),

    -- * TransportProtocol
    TransportProtocol (..),

    -- * TunnelInsideIpVersion
    TunnelInsideIpVersion (..),

    -- * UnlimitedSupportedInstanceFamily
    UnlimitedSupportedInstanceFamily (..),

    -- * UnsuccessfulInstanceCreditSpecificationErrorCode
    UnsuccessfulInstanceCreditSpecificationErrorCode (..),

    -- * UsageClassType
    UsageClassType (..),

    -- * VirtualizationType
    VirtualizationType (..),

    -- * VolumeAttachmentState
    VolumeAttachmentState (..),

    -- * VolumeAttributeName
    VolumeAttributeName (..),

    -- * VolumeModificationState
    VolumeModificationState (..),

    -- * VolumeState
    VolumeState (..),

    -- * VolumeStatusInfoStatus
    VolumeStatusInfoStatus (..),

    -- * VolumeStatusName
    VolumeStatusName (..),

    -- * VolumeType
    VolumeType (..),

    -- * VpcAttributeName
    VpcAttributeName (..),

    -- * VpcCidrBlockStateCode
    VpcCidrBlockStateCode (..),

    -- * VpcEndpointType
    VpcEndpointType (..),

    -- * VpcPeeringConnectionStateReasonCode
    VpcPeeringConnectionStateReasonCode (..),

    -- * VpcState
    VpcState (..),

    -- * VpcTenancy
    VpcTenancy (..),

    -- * VpnEcmpSupportValue
    VpnEcmpSupportValue (..),

    -- * VpnProtocol
    VpnProtocol (..),

    -- * VpnState
    VpnState (..),

    -- * VpnStaticRouteSource
    VpnStaticRouteSource (..),

    -- * AccountAttribute
    AccountAttribute (..),
    newAccountAttribute,

    -- * AccountAttributeValue
    AccountAttributeValue (..),
    newAccountAttributeValue,

    -- * ActiveInstance
    ActiveInstance (..),
    newActiveInstance,

    -- * AddPrefixListEntry
    AddPrefixListEntry (..),
    newAddPrefixListEntry,

    -- * Address
    Address (..),
    newAddress,

    -- * AddressAttribute
    AddressAttribute (..),
    newAddressAttribute,

    -- * AllowedPrincipal
    AllowedPrincipal (..),
    newAllowedPrincipal,

    -- * AlternatePathHint
    AlternatePathHint (..),
    newAlternatePathHint,

    -- * AnalysisAclRule
    AnalysisAclRule (..),
    newAnalysisAclRule,

    -- * AnalysisComponent
    AnalysisComponent (..),
    newAnalysisComponent,

    -- * AnalysisLoadBalancerListener
    AnalysisLoadBalancerListener (..),
    newAnalysisLoadBalancerListener,

    -- * AnalysisLoadBalancerTarget
    AnalysisLoadBalancerTarget (..),
    newAnalysisLoadBalancerTarget,

    -- * AnalysisPacketHeader
    AnalysisPacketHeader (..),
    newAnalysisPacketHeader,

    -- * AnalysisRouteTableRoute
    AnalysisRouteTableRoute (..),
    newAnalysisRouteTableRoute,

    -- * AnalysisSecurityGroupRule
    AnalysisSecurityGroupRule (..),
    newAnalysisSecurityGroupRule,

    -- * AssignedPrivateIpAddress
    AssignedPrivateIpAddress (..),
    newAssignedPrivateIpAddress,

    -- * AssociatedRole
    AssociatedRole (..),
    newAssociatedRole,

    -- * AssociatedTargetNetwork
    AssociatedTargetNetwork (..),
    newAssociatedTargetNetwork,

    -- * AssociationStatus
    AssociationStatus (..),
    newAssociationStatus,

    -- * AttributeBooleanValue
    AttributeBooleanValue (..),
    newAttributeBooleanValue,

    -- * AttributeValue
    AttributeValue (..),
    newAttributeValue,

    -- * AuthorizationRule
    AuthorizationRule (..),
    newAuthorizationRule,

    -- * AvailabilityZone
    AvailabilityZone (..),
    newAvailabilityZone,

    -- * AvailabilityZoneMessage
    AvailabilityZoneMessage (..),
    newAvailabilityZoneMessage,

    -- * AvailableCapacity
    AvailableCapacity (..),
    newAvailableCapacity,

    -- * BlobAttributeValue
    BlobAttributeValue (..),
    newBlobAttributeValue,

    -- * BlockDeviceMapping
    BlockDeviceMapping (..),
    newBlockDeviceMapping,

    -- * BundleTask
    BundleTask (..),
    newBundleTask,

    -- * BundleTaskError
    BundleTaskError (..),
    newBundleTaskError,

    -- * ByoipCidr
    ByoipCidr (..),
    newByoipCidr,

    -- * CancelSpotFleetRequestsError
    CancelSpotFleetRequestsError (..),
    newCancelSpotFleetRequestsError,

    -- * CancelSpotFleetRequestsErrorItem
    CancelSpotFleetRequestsErrorItem (..),
    newCancelSpotFleetRequestsErrorItem,

    -- * CancelSpotFleetRequestsSuccessItem
    CancelSpotFleetRequestsSuccessItem (..),
    newCancelSpotFleetRequestsSuccessItem,

    -- * CancelledSpotInstanceRequest
    CancelledSpotInstanceRequest (..),
    newCancelledSpotInstanceRequest,

    -- * CapacityReservation
    CapacityReservation (..),
    newCapacityReservation,

    -- * CapacityReservationGroup
    CapacityReservationGroup (..),
    newCapacityReservationGroup,

    -- * CapacityReservationOptions
    CapacityReservationOptions (..),
    newCapacityReservationOptions,

    -- * CapacityReservationOptionsRequest
    CapacityReservationOptionsRequest (..),
    newCapacityReservationOptionsRequest,

    -- * CapacityReservationSpecification
    CapacityReservationSpecification (..),
    newCapacityReservationSpecification,

    -- * CapacityReservationSpecificationResponse
    CapacityReservationSpecificationResponse (..),
    newCapacityReservationSpecificationResponse,

    -- * CapacityReservationTarget
    CapacityReservationTarget (..),
    newCapacityReservationTarget,

    -- * CapacityReservationTargetResponse
    CapacityReservationTargetResponse (..),
    newCapacityReservationTargetResponse,

    -- * CarrierGateway
    CarrierGateway (..),
    newCarrierGateway,

    -- * CertificateAuthentication
    CertificateAuthentication (..),
    newCertificateAuthentication,

    -- * CertificateAuthenticationRequest
    CertificateAuthenticationRequest (..),
    newCertificateAuthenticationRequest,

    -- * CidrAuthorizationContext
    CidrAuthorizationContext (..),
    newCidrAuthorizationContext,

    -- * CidrBlock
    CidrBlock (..),
    newCidrBlock,

    -- * ClassicLinkDnsSupport
    ClassicLinkDnsSupport (..),
    newClassicLinkDnsSupport,

    -- * ClassicLinkInstance
    ClassicLinkInstance (..),
    newClassicLinkInstance,

    -- * ClassicLoadBalancer
    ClassicLoadBalancer (..),
    newClassicLoadBalancer,

    -- * ClassicLoadBalancersConfig
    ClassicLoadBalancersConfig (..),
    newClassicLoadBalancersConfig,

    -- * ClientCertificateRevocationListStatus
    ClientCertificateRevocationListStatus (..),
    newClientCertificateRevocationListStatus,

    -- * ClientConnectOptions
    ClientConnectOptions (..),
    newClientConnectOptions,

    -- * ClientConnectResponseOptions
    ClientConnectResponseOptions (..),
    newClientConnectResponseOptions,

    -- * ClientData
    ClientData (..),
    newClientData,

    -- * ClientVpnAuthentication
    ClientVpnAuthentication (..),
    newClientVpnAuthentication,

    -- * ClientVpnAuthenticationRequest
    ClientVpnAuthenticationRequest (..),
    newClientVpnAuthenticationRequest,

    -- * ClientVpnAuthorizationRuleStatus
    ClientVpnAuthorizationRuleStatus (..),
    newClientVpnAuthorizationRuleStatus,

    -- * ClientVpnConnection
    ClientVpnConnection (..),
    newClientVpnConnection,

    -- * ClientVpnConnectionStatus
    ClientVpnConnectionStatus (..),
    newClientVpnConnectionStatus,

    -- * ClientVpnEndpoint
    ClientVpnEndpoint (..),
    newClientVpnEndpoint,

    -- * ClientVpnEndpointAttributeStatus
    ClientVpnEndpointAttributeStatus (..),
    newClientVpnEndpointAttributeStatus,

    -- * ClientVpnEndpointStatus
    ClientVpnEndpointStatus (..),
    newClientVpnEndpointStatus,

    -- * ClientVpnRoute
    ClientVpnRoute (..),
    newClientVpnRoute,

    -- * ClientVpnRouteStatus
    ClientVpnRouteStatus (..),
    newClientVpnRouteStatus,

    -- * CoipAddressUsage
    CoipAddressUsage (..),
    newCoipAddressUsage,

    -- * CoipPool
    CoipPool (..),
    newCoipPool,

    -- * ConnectionLogOptions
    ConnectionLogOptions (..),
    newConnectionLogOptions,

    -- * ConnectionLogResponseOptions
    ConnectionLogResponseOptions (..),
    newConnectionLogResponseOptions,

    -- * ConnectionNotification
    ConnectionNotification (..),
    newConnectionNotification,

    -- * ConversionTask
    ConversionTask (..),
    newConversionTask,

    -- * CpuOptions
    CpuOptions (..),
    newCpuOptions,

    -- * CpuOptionsRequest
    CpuOptionsRequest (..),
    newCpuOptionsRequest,

    -- * CreateFleetError
    CreateFleetError (..),
    newCreateFleetError,

    -- * CreateFleetInstance
    CreateFleetInstance (..),
    newCreateFleetInstance,

    -- * CreateTransitGatewayConnectRequestOptions
    CreateTransitGatewayConnectRequestOptions (..),
    newCreateTransitGatewayConnectRequestOptions,

    -- * CreateTransitGatewayMulticastDomainRequestOptions
    CreateTransitGatewayMulticastDomainRequestOptions (..),
    newCreateTransitGatewayMulticastDomainRequestOptions,

    -- * CreateTransitGatewayVpcAttachmentRequestOptions
    CreateTransitGatewayVpcAttachmentRequestOptions (..),
    newCreateTransitGatewayVpcAttachmentRequestOptions,

    -- * CreateVolumePermission
    CreateVolumePermission (..),
    newCreateVolumePermission,

    -- * CreateVolumePermissionModifications
    CreateVolumePermissionModifications (..),
    newCreateVolumePermissionModifications,

    -- * CreditSpecification
    CreditSpecification (..),
    newCreditSpecification,

    -- * CreditSpecificationRequest
    CreditSpecificationRequest (..),
    newCreditSpecificationRequest,

    -- * CustomerGateway
    CustomerGateway (..),
    newCustomerGateway,

    -- * DeleteFleetError
    DeleteFleetError (..),
    newDeleteFleetError,

    -- * DeleteFleetErrorItem
    DeleteFleetErrorItem (..),
    newDeleteFleetErrorItem,

    -- * DeleteFleetSuccessItem
    DeleteFleetSuccessItem (..),
    newDeleteFleetSuccessItem,

    -- * DeleteLaunchTemplateVersionsResponseErrorItem
    DeleteLaunchTemplateVersionsResponseErrorItem (..),
    newDeleteLaunchTemplateVersionsResponseErrorItem,

    -- * DeleteLaunchTemplateVersionsResponseSuccessItem
    DeleteLaunchTemplateVersionsResponseSuccessItem (..),
    newDeleteLaunchTemplateVersionsResponseSuccessItem,

    -- * DeleteQueuedReservedInstancesError
    DeleteQueuedReservedInstancesError (..),
    newDeleteQueuedReservedInstancesError,

    -- * DeregisterInstanceTagAttributeRequest
    DeregisterInstanceTagAttributeRequest (..),
    newDeregisterInstanceTagAttributeRequest,

    -- * DescribeFastSnapshotRestoreSuccessItem
    DescribeFastSnapshotRestoreSuccessItem (..),
    newDescribeFastSnapshotRestoreSuccessItem,

    -- * DescribeFleetError
    DescribeFleetError (..),
    newDescribeFleetError,

    -- * DescribeFleetsInstances
    DescribeFleetsInstances (..),
    newDescribeFleetsInstances,

    -- * DhcpConfiguration
    DhcpConfiguration (..),
    newDhcpConfiguration,

    -- * DhcpOptions
    DhcpOptions (..),
    newDhcpOptions,

    -- * DirectoryServiceAuthentication
    DirectoryServiceAuthentication (..),
    newDirectoryServiceAuthentication,

    -- * DirectoryServiceAuthenticationRequest
    DirectoryServiceAuthenticationRequest (..),
    newDirectoryServiceAuthenticationRequest,

    -- * DisableFastSnapshotRestoreErrorItem
    DisableFastSnapshotRestoreErrorItem (..),
    newDisableFastSnapshotRestoreErrorItem,

    -- * DisableFastSnapshotRestoreStateError
    DisableFastSnapshotRestoreStateError (..),
    newDisableFastSnapshotRestoreStateError,

    -- * DisableFastSnapshotRestoreStateErrorItem
    DisableFastSnapshotRestoreStateErrorItem (..),
    newDisableFastSnapshotRestoreStateErrorItem,

    -- * DisableFastSnapshotRestoreSuccessItem
    DisableFastSnapshotRestoreSuccessItem (..),
    newDisableFastSnapshotRestoreSuccessItem,

    -- * DiskImage
    DiskImage (..),
    newDiskImage,

    -- * DiskImageDescription
    DiskImageDescription (..),
    newDiskImageDescription,

    -- * DiskImageDetail
    DiskImageDetail (..),
    newDiskImageDetail,

    -- * DiskImageVolumeDescription
    DiskImageVolumeDescription (..),
    newDiskImageVolumeDescription,

    -- * DiskInfo
    DiskInfo (..),
    newDiskInfo,

    -- * DnsEntry
    DnsEntry (..),
    newDnsEntry,

    -- * DnsServersOptionsModifyStructure
    DnsServersOptionsModifyStructure (..),
    newDnsServersOptionsModifyStructure,

    -- * EbsBlockDevice
    EbsBlockDevice (..),
    newEbsBlockDevice,

    -- * EbsInfo
    EbsInfo (..),
    newEbsInfo,

    -- * EbsInstanceBlockDevice
    EbsInstanceBlockDevice (..),
    newEbsInstanceBlockDevice,

    -- * EbsInstanceBlockDeviceSpecification
    EbsInstanceBlockDeviceSpecification (..),
    newEbsInstanceBlockDeviceSpecification,

    -- * EbsOptimizedInfo
    EbsOptimizedInfo (..),
    newEbsOptimizedInfo,

    -- * EgressOnlyInternetGateway
    EgressOnlyInternetGateway (..),
    newEgressOnlyInternetGateway,

    -- * ElasticGpuAssociation
    ElasticGpuAssociation (..),
    newElasticGpuAssociation,

    -- * ElasticGpuHealth
    ElasticGpuHealth (..),
    newElasticGpuHealth,

    -- * ElasticGpuSpecification
    ElasticGpuSpecification (..),
    newElasticGpuSpecification,

    -- * ElasticGpuSpecificationResponse
    ElasticGpuSpecificationResponse (..),
    newElasticGpuSpecificationResponse,

    -- * ElasticGpus
    ElasticGpus (..),
    newElasticGpus,

    -- * ElasticInferenceAccelerator
    ElasticInferenceAccelerator (..),
    newElasticInferenceAccelerator,

    -- * ElasticInferenceAcceleratorAssociation
    ElasticInferenceAcceleratorAssociation (..),
    newElasticInferenceAcceleratorAssociation,

    -- * EnableFastSnapshotRestoreErrorItem
    EnableFastSnapshotRestoreErrorItem (..),
    newEnableFastSnapshotRestoreErrorItem,

    -- * EnableFastSnapshotRestoreStateError
    EnableFastSnapshotRestoreStateError (..),
    newEnableFastSnapshotRestoreStateError,

    -- * EnableFastSnapshotRestoreStateErrorItem
    EnableFastSnapshotRestoreStateErrorItem (..),
    newEnableFastSnapshotRestoreStateErrorItem,

    -- * EnableFastSnapshotRestoreSuccessItem
    EnableFastSnapshotRestoreSuccessItem (..),
    newEnableFastSnapshotRestoreSuccessItem,

    -- * EnclaveOptions
    EnclaveOptions (..),
    newEnclaveOptions,

    -- * EnclaveOptionsRequest
    EnclaveOptionsRequest (..),
    newEnclaveOptionsRequest,

    -- * EventInformation
    EventInformation (..),
    newEventInformation,

    -- * Explanation
    Explanation (..),
    newExplanation,

    -- * ExportImageTask
    ExportImageTask (..),
    newExportImageTask,

    -- * ExportTask
    ExportTask (..),
    newExportTask,

    -- * ExportTaskS3Location
    ExportTaskS3Location (..),
    newExportTaskS3Location,

    -- * ExportTaskS3LocationRequest
    ExportTaskS3LocationRequest (..),
    newExportTaskS3LocationRequest,

    -- * ExportToS3Task
    ExportToS3Task (..),
    newExportToS3Task,

    -- * ExportToS3TaskSpecification
    ExportToS3TaskSpecification (..),
    newExportToS3TaskSpecification,

    -- * FailedQueuedPurchaseDeletion
    FailedQueuedPurchaseDeletion (..),
    newFailedQueuedPurchaseDeletion,

    -- * FederatedAuthentication
    FederatedAuthentication (..),
    newFederatedAuthentication,

    -- * FederatedAuthenticationRequest
    FederatedAuthenticationRequest (..),
    newFederatedAuthenticationRequest,

    -- * Filter
    Filter (..),
    newFilter,

    -- * FleetData
    FleetData (..),
    newFleetData,

    -- * FleetLaunchTemplateConfig
    FleetLaunchTemplateConfig (..),
    newFleetLaunchTemplateConfig,

    -- * FleetLaunchTemplateConfigRequest
    FleetLaunchTemplateConfigRequest (..),
    newFleetLaunchTemplateConfigRequest,

    -- * FleetLaunchTemplateOverrides
    FleetLaunchTemplateOverrides (..),
    newFleetLaunchTemplateOverrides,

    -- * FleetLaunchTemplateOverridesRequest
    FleetLaunchTemplateOverridesRequest (..),
    newFleetLaunchTemplateOverridesRequest,

    -- * FleetLaunchTemplateSpecification
    FleetLaunchTemplateSpecification (..),
    newFleetLaunchTemplateSpecification,

    -- * FleetLaunchTemplateSpecificationRequest
    FleetLaunchTemplateSpecificationRequest (..),
    newFleetLaunchTemplateSpecificationRequest,

    -- * FleetSpotCapacityRebalance
    FleetSpotCapacityRebalance (..),
    newFleetSpotCapacityRebalance,

    -- * FleetSpotCapacityRebalanceRequest
    FleetSpotCapacityRebalanceRequest (..),
    newFleetSpotCapacityRebalanceRequest,

    -- * FleetSpotMaintenanceStrategies
    FleetSpotMaintenanceStrategies (..),
    newFleetSpotMaintenanceStrategies,

    -- * FleetSpotMaintenanceStrategiesRequest
    FleetSpotMaintenanceStrategiesRequest (..),
    newFleetSpotMaintenanceStrategiesRequest,

    -- * FlowLog
    FlowLog (..),
    newFlowLog,

    -- * FpgaDeviceInfo
    FpgaDeviceInfo (..),
    newFpgaDeviceInfo,

    -- * FpgaDeviceMemoryInfo
    FpgaDeviceMemoryInfo (..),
    newFpgaDeviceMemoryInfo,

    -- * FpgaImage
    FpgaImage (..),
    newFpgaImage,

    -- * FpgaImageAttribute
    FpgaImageAttribute (..),
    newFpgaImageAttribute,

    -- * FpgaImageState
    FpgaImageState (..),
    newFpgaImageState,

    -- * FpgaInfo
    FpgaInfo (..),
    newFpgaInfo,

    -- * GpuDeviceInfo
    GpuDeviceInfo (..),
    newGpuDeviceInfo,

    -- * GpuDeviceMemoryInfo
    GpuDeviceMemoryInfo (..),
    newGpuDeviceMemoryInfo,

    -- * GpuInfo
    GpuInfo (..),
    newGpuInfo,

    -- * GroupIdentifier
    GroupIdentifier (..),
    newGroupIdentifier,

    -- * HibernationOptions
    HibernationOptions (..),
    newHibernationOptions,

    -- * HibernationOptionsRequest
    HibernationOptionsRequest (..),
    newHibernationOptionsRequest,

    -- * HistoryRecord
    HistoryRecord (..),
    newHistoryRecord,

    -- * HistoryRecordEntry
    HistoryRecordEntry (..),
    newHistoryRecordEntry,

    -- * Host
    Host (..),
    newHost,

    -- * HostInstance
    HostInstance (..),
    newHostInstance,

    -- * HostOffering
    HostOffering (..),
    newHostOffering,

    -- * HostProperties
    HostProperties (..),
    newHostProperties,

    -- * HostReservation
    HostReservation (..),
    newHostReservation,

    -- * IKEVersionsListValue
    IKEVersionsListValue (..),
    newIKEVersionsListValue,

    -- * IKEVersionsRequestListValue
    IKEVersionsRequestListValue (..),
    newIKEVersionsRequestListValue,

    -- * IamInstanceProfile
    IamInstanceProfile (..),
    newIamInstanceProfile,

    -- * IamInstanceProfileAssociation
    IamInstanceProfileAssociation (..),
    newIamInstanceProfileAssociation,

    -- * IamInstanceProfileSpecification
    IamInstanceProfileSpecification (..),
    newIamInstanceProfileSpecification,

    -- * IcmpTypeCode
    IcmpTypeCode (..),
    newIcmpTypeCode,

    -- * IdFormat
    IdFormat (..),
    newIdFormat,

    -- * Image
    Image (..),
    newImage,

    -- * ImageDiskContainer
    ImageDiskContainer (..),
    newImageDiskContainer,

    -- * ImportImageLicenseConfigurationRequest
    ImportImageLicenseConfigurationRequest (..),
    newImportImageLicenseConfigurationRequest,

    -- * ImportImageLicenseConfigurationResponse
    ImportImageLicenseConfigurationResponse (..),
    newImportImageLicenseConfigurationResponse,

    -- * ImportImageTask
    ImportImageTask (..),
    newImportImageTask,

    -- * ImportInstanceLaunchSpecification
    ImportInstanceLaunchSpecification (..),
    newImportInstanceLaunchSpecification,

    -- * ImportInstanceTaskDetails
    ImportInstanceTaskDetails (..),
    newImportInstanceTaskDetails,

    -- * ImportInstanceVolumeDetailItem
    ImportInstanceVolumeDetailItem (..),
    newImportInstanceVolumeDetailItem,

    -- * ImportSnapshotTask
    ImportSnapshotTask (..),
    newImportSnapshotTask,

    -- * ImportVolumeTaskDetails
    ImportVolumeTaskDetails (..),
    newImportVolumeTaskDetails,

    -- * InferenceAcceleratorInfo
    InferenceAcceleratorInfo (..),
    newInferenceAcceleratorInfo,

    -- * InferenceDeviceInfo
    InferenceDeviceInfo (..),
    newInferenceDeviceInfo,

    -- * Instance
    Instance (..),
    newInstance,

    -- * InstanceBlockDeviceMapping
    InstanceBlockDeviceMapping (..),
    newInstanceBlockDeviceMapping,

    -- * InstanceBlockDeviceMappingSpecification
    InstanceBlockDeviceMappingSpecification (..),
    newInstanceBlockDeviceMappingSpecification,

    -- * InstanceCapacity
    InstanceCapacity (..),
    newInstanceCapacity,

    -- * InstanceCount
    InstanceCount (..),
    newInstanceCount,

    -- * InstanceCreditSpecification
    InstanceCreditSpecification (..),
    newInstanceCreditSpecification,

    -- * InstanceCreditSpecificationRequest
    InstanceCreditSpecificationRequest (..),
    newInstanceCreditSpecificationRequest,

    -- * InstanceExportDetails
    InstanceExportDetails (..),
    newInstanceExportDetails,

    -- * InstanceFamilyCreditSpecification
    InstanceFamilyCreditSpecification (..),
    newInstanceFamilyCreditSpecification,

    -- * InstanceIpv6Address
    InstanceIpv6Address (..),
    newInstanceIpv6Address,

    -- * InstanceIpv6AddressRequest
    InstanceIpv6AddressRequest (..),
    newInstanceIpv6AddressRequest,

    -- * InstanceMarketOptionsRequest
    InstanceMarketOptionsRequest (..),
    newInstanceMarketOptionsRequest,

    -- * InstanceMetadataOptionsRequest
    InstanceMetadataOptionsRequest (..),
    newInstanceMetadataOptionsRequest,

    -- * InstanceMetadataOptionsResponse
    InstanceMetadataOptionsResponse (..),
    newInstanceMetadataOptionsResponse,

    -- * InstanceMonitoring
    InstanceMonitoring (..),
    newInstanceMonitoring,

    -- * InstanceNetworkInterface
    InstanceNetworkInterface (..),
    newInstanceNetworkInterface,

    -- * InstanceNetworkInterfaceAssociation
    InstanceNetworkInterfaceAssociation (..),
    newInstanceNetworkInterfaceAssociation,

    -- * InstanceNetworkInterfaceAttachment
    InstanceNetworkInterfaceAttachment (..),
    newInstanceNetworkInterfaceAttachment,

    -- * InstanceNetworkInterfaceSpecification
    InstanceNetworkInterfaceSpecification (..),
    newInstanceNetworkInterfaceSpecification,

    -- * InstancePrivateIpAddress
    InstancePrivateIpAddress (..),
    newInstancePrivateIpAddress,

    -- * InstanceSpecification
    InstanceSpecification (..),
    newInstanceSpecification,

    -- * InstanceState
    InstanceState (..),
    newInstanceState,

    -- * InstanceStateChange
    InstanceStateChange (..),
    newInstanceStateChange,

    -- * InstanceStatus
    InstanceStatus (..),
    newInstanceStatus,

    -- * InstanceStatusDetails
    InstanceStatusDetails (..),
    newInstanceStatusDetails,

    -- * InstanceStatusEvent
    InstanceStatusEvent (..),
    newInstanceStatusEvent,

    -- * InstanceStatusSummary
    InstanceStatusSummary (..),
    newInstanceStatusSummary,

    -- * InstanceStorageInfo
    InstanceStorageInfo (..),
    newInstanceStorageInfo,

    -- * InstanceTagNotificationAttribute
    InstanceTagNotificationAttribute (..),
    newInstanceTagNotificationAttribute,

    -- * InstanceTypeInfo
    InstanceTypeInfo (..),
    newInstanceTypeInfo,

    -- * InstanceTypeOffering
    InstanceTypeOffering (..),
    newInstanceTypeOffering,

    -- * InstanceUsage
    InstanceUsage (..),
    newInstanceUsage,

    -- * InternetGateway
    InternetGateway (..),
    newInternetGateway,

    -- * InternetGatewayAttachment
    InternetGatewayAttachment (..),
    newInternetGatewayAttachment,

    -- * IpPermission
    IpPermission (..),
    newIpPermission,

    -- * IpRange
    IpRange (..),
    newIpRange,

    -- * Ipv6CidrAssociation
    Ipv6CidrAssociation (..),
    newIpv6CidrAssociation,

    -- * Ipv6CidrBlock
    Ipv6CidrBlock (..),
    newIpv6CidrBlock,

    -- * Ipv6Pool
    Ipv6Pool (..),
    newIpv6Pool,

    -- * Ipv6Range
    Ipv6Range (..),
    newIpv6Range,

    -- * KeyPairInfo
    KeyPairInfo (..),
    newKeyPairInfo,

    -- * LastError
    LastError (..),
    newLastError,

    -- * LaunchPermission
    LaunchPermission (..),
    newLaunchPermission,

    -- * LaunchPermissionModifications
    LaunchPermissionModifications (..),
    newLaunchPermissionModifications,

    -- * LaunchSpecification
    LaunchSpecification (..),
    newLaunchSpecification,

    -- * LaunchTemplate
    LaunchTemplate (..),
    newLaunchTemplate,

    -- * LaunchTemplateAndOverridesResponse
    LaunchTemplateAndOverridesResponse (..),
    newLaunchTemplateAndOverridesResponse,

    -- * LaunchTemplateBlockDeviceMapping
    LaunchTemplateBlockDeviceMapping (..),
    newLaunchTemplateBlockDeviceMapping,

    -- * LaunchTemplateBlockDeviceMappingRequest
    LaunchTemplateBlockDeviceMappingRequest (..),
    newLaunchTemplateBlockDeviceMappingRequest,

    -- * LaunchTemplateCapacityReservationSpecificationRequest
    LaunchTemplateCapacityReservationSpecificationRequest (..),
    newLaunchTemplateCapacityReservationSpecificationRequest,

    -- * LaunchTemplateCapacityReservationSpecificationResponse
    LaunchTemplateCapacityReservationSpecificationResponse (..),
    newLaunchTemplateCapacityReservationSpecificationResponse,

    -- * LaunchTemplateConfig
    LaunchTemplateConfig (..),
    newLaunchTemplateConfig,

    -- * LaunchTemplateCpuOptions
    LaunchTemplateCpuOptions (..),
    newLaunchTemplateCpuOptions,

    -- * LaunchTemplateCpuOptionsRequest
    LaunchTemplateCpuOptionsRequest (..),
    newLaunchTemplateCpuOptionsRequest,

    -- * LaunchTemplateEbsBlockDevice
    LaunchTemplateEbsBlockDevice (..),
    newLaunchTemplateEbsBlockDevice,

    -- * LaunchTemplateEbsBlockDeviceRequest
    LaunchTemplateEbsBlockDeviceRequest (..),
    newLaunchTemplateEbsBlockDeviceRequest,

    -- * LaunchTemplateElasticInferenceAccelerator
    LaunchTemplateElasticInferenceAccelerator (..),
    newLaunchTemplateElasticInferenceAccelerator,

    -- * LaunchTemplateElasticInferenceAcceleratorResponse
    LaunchTemplateElasticInferenceAcceleratorResponse (..),
    newLaunchTemplateElasticInferenceAcceleratorResponse,

    -- * LaunchTemplateEnclaveOptions
    LaunchTemplateEnclaveOptions (..),
    newLaunchTemplateEnclaveOptions,

    -- * LaunchTemplateEnclaveOptionsRequest
    LaunchTemplateEnclaveOptionsRequest (..),
    newLaunchTemplateEnclaveOptionsRequest,

    -- * LaunchTemplateHibernationOptions
    LaunchTemplateHibernationOptions (..),
    newLaunchTemplateHibernationOptions,

    -- * LaunchTemplateHibernationOptionsRequest
    LaunchTemplateHibernationOptionsRequest (..),
    newLaunchTemplateHibernationOptionsRequest,

    -- * LaunchTemplateIamInstanceProfileSpecification
    LaunchTemplateIamInstanceProfileSpecification (..),
    newLaunchTemplateIamInstanceProfileSpecification,

    -- * LaunchTemplateIamInstanceProfileSpecificationRequest
    LaunchTemplateIamInstanceProfileSpecificationRequest (..),
    newLaunchTemplateIamInstanceProfileSpecificationRequest,

    -- * LaunchTemplateInstanceMarketOptions
    LaunchTemplateInstanceMarketOptions (..),
    newLaunchTemplateInstanceMarketOptions,

    -- * LaunchTemplateInstanceMarketOptionsRequest
    LaunchTemplateInstanceMarketOptionsRequest (..),
    newLaunchTemplateInstanceMarketOptionsRequest,

    -- * LaunchTemplateInstanceMetadataOptions
    LaunchTemplateInstanceMetadataOptions (..),
    newLaunchTemplateInstanceMetadataOptions,

    -- * LaunchTemplateInstanceMetadataOptionsRequest
    LaunchTemplateInstanceMetadataOptionsRequest (..),
    newLaunchTemplateInstanceMetadataOptionsRequest,

    -- * LaunchTemplateInstanceNetworkInterfaceSpecification
    LaunchTemplateInstanceNetworkInterfaceSpecification (..),
    newLaunchTemplateInstanceNetworkInterfaceSpecification,

    -- * LaunchTemplateInstanceNetworkInterfaceSpecificationRequest
    LaunchTemplateInstanceNetworkInterfaceSpecificationRequest (..),
    newLaunchTemplateInstanceNetworkInterfaceSpecificationRequest,

    -- * LaunchTemplateLicenseConfiguration
    LaunchTemplateLicenseConfiguration (..),
    newLaunchTemplateLicenseConfiguration,

    -- * LaunchTemplateLicenseConfigurationRequest
    LaunchTemplateLicenseConfigurationRequest (..),
    newLaunchTemplateLicenseConfigurationRequest,

    -- * LaunchTemplateOverrides
    LaunchTemplateOverrides (..),
    newLaunchTemplateOverrides,

    -- * LaunchTemplatePlacement
    LaunchTemplatePlacement (..),
    newLaunchTemplatePlacement,

    -- * LaunchTemplatePlacementRequest
    LaunchTemplatePlacementRequest (..),
    newLaunchTemplatePlacementRequest,

    -- * LaunchTemplateSpecification
    LaunchTemplateSpecification (..),
    newLaunchTemplateSpecification,

    -- * LaunchTemplateSpotMarketOptions
    LaunchTemplateSpotMarketOptions (..),
    newLaunchTemplateSpotMarketOptions,

    -- * LaunchTemplateSpotMarketOptionsRequest
    LaunchTemplateSpotMarketOptionsRequest (..),
    newLaunchTemplateSpotMarketOptionsRequest,

    -- * LaunchTemplateTagSpecification
    LaunchTemplateTagSpecification (..),
    newLaunchTemplateTagSpecification,

    -- * LaunchTemplateTagSpecificationRequest
    LaunchTemplateTagSpecificationRequest (..),
    newLaunchTemplateTagSpecificationRequest,

    -- * LaunchTemplateVersion
    LaunchTemplateVersion (..),
    newLaunchTemplateVersion,

    -- * LaunchTemplatesMonitoring
    LaunchTemplatesMonitoring (..),
    newLaunchTemplatesMonitoring,

    -- * LaunchTemplatesMonitoringRequest
    LaunchTemplatesMonitoringRequest (..),
    newLaunchTemplatesMonitoringRequest,

    -- * LicenseConfiguration
    LicenseConfiguration (..),
    newLicenseConfiguration,

    -- * LicenseConfigurationRequest
    LicenseConfigurationRequest (..),
    newLicenseConfigurationRequest,

    -- * LoadBalancersConfig
    LoadBalancersConfig (..),
    newLoadBalancersConfig,

    -- * LoadPermission
    LoadPermission (..),
    newLoadPermission,

    -- * LoadPermissionModifications
    LoadPermissionModifications (..),
    newLoadPermissionModifications,

    -- * LoadPermissionRequest
    LoadPermissionRequest (..),
    newLoadPermissionRequest,

    -- * LocalGateway
    LocalGateway (..),
    newLocalGateway,

    -- * LocalGatewayRoute
    LocalGatewayRoute (..),
    newLocalGatewayRoute,

    -- * LocalGatewayRouteTable
    LocalGatewayRouteTable (..),
    newLocalGatewayRouteTable,

    -- * LocalGatewayRouteTableVirtualInterfaceGroupAssociation
    LocalGatewayRouteTableVirtualInterfaceGroupAssociation (..),
    newLocalGatewayRouteTableVirtualInterfaceGroupAssociation,

    -- * LocalGatewayRouteTableVpcAssociation
    LocalGatewayRouteTableVpcAssociation (..),
    newLocalGatewayRouteTableVpcAssociation,

    -- * LocalGatewayVirtualInterface
    LocalGatewayVirtualInterface (..),
    newLocalGatewayVirtualInterface,

    -- * LocalGatewayVirtualInterfaceGroup
    LocalGatewayVirtualInterfaceGroup (..),
    newLocalGatewayVirtualInterfaceGroup,

    -- * ManagedPrefixList
    ManagedPrefixList (..),
    newManagedPrefixList,

    -- * MemoryInfo
    MemoryInfo (..),
    newMemoryInfo,

    -- * ModifyTransitGatewayOptions
    ModifyTransitGatewayOptions (..),
    newModifyTransitGatewayOptions,

    -- * ModifyTransitGatewayVpcAttachmentRequestOptions
    ModifyTransitGatewayVpcAttachmentRequestOptions (..),
    newModifyTransitGatewayVpcAttachmentRequestOptions,

    -- * ModifyVpnTunnelOptionsSpecification
    ModifyVpnTunnelOptionsSpecification (..),
    newModifyVpnTunnelOptionsSpecification,

    -- * Monitoring
    Monitoring (..),
    newMonitoring,

    -- * MovingAddressStatus
    MovingAddressStatus (..),
    newMovingAddressStatus,

    -- * NatGateway
    NatGateway (..),
    newNatGateway,

    -- * NatGatewayAddress
    NatGatewayAddress (..),
    newNatGatewayAddress,

    -- * NetworkAcl
    NetworkAcl (..),
    newNetworkAcl,

    -- * NetworkAclAssociation
    NetworkAclAssociation (..),
    newNetworkAclAssociation,

    -- * NetworkAclEntry
    NetworkAclEntry (..),
    newNetworkAclEntry,

    -- * NetworkCardInfo
    NetworkCardInfo (..),
    newNetworkCardInfo,

    -- * NetworkInfo
    NetworkInfo (..),
    newNetworkInfo,

    -- * NetworkInsightsAnalysis
    NetworkInsightsAnalysis (..),
    newNetworkInsightsAnalysis,

    -- * NetworkInsightsPath
    NetworkInsightsPath (..),
    newNetworkInsightsPath,

    -- * NetworkInterface
    NetworkInterface (..),
    newNetworkInterface,

    -- * NetworkInterfaceAssociation
    NetworkInterfaceAssociation (..),
    newNetworkInterfaceAssociation,

    -- * NetworkInterfaceAttachment
    NetworkInterfaceAttachment (..),
    newNetworkInterfaceAttachment,

    -- * NetworkInterfaceAttachmentChanges
    NetworkInterfaceAttachmentChanges (..),
    newNetworkInterfaceAttachmentChanges,

    -- * NetworkInterfaceIpv6Address
    NetworkInterfaceIpv6Address (..),
    newNetworkInterfaceIpv6Address,

    -- * NetworkInterfacePermission
    NetworkInterfacePermission (..),
    newNetworkInterfacePermission,

    -- * NetworkInterfacePermissionState
    NetworkInterfacePermissionState (..),
    newNetworkInterfacePermissionState,

    -- * NetworkInterfacePrivateIpAddress
    NetworkInterfacePrivateIpAddress (..),
    newNetworkInterfacePrivateIpAddress,

    -- * NewDhcpConfiguration
    NewDhcpConfiguration (..),
    newNewDhcpConfiguration,

    -- * OnDemandOptions
    OnDemandOptions (..),
    newOnDemandOptions,

    -- * OnDemandOptionsRequest
    OnDemandOptionsRequest (..),
    newOnDemandOptionsRequest,

    -- * PathComponent
    PathComponent (..),
    newPathComponent,

    -- * PciId
    PciId (..),
    newPciId,

    -- * PeeringAttachmentStatus
    PeeringAttachmentStatus (..),
    newPeeringAttachmentStatus,

    -- * PeeringConnectionOptions
    PeeringConnectionOptions (..),
    newPeeringConnectionOptions,

    -- * PeeringConnectionOptionsRequest
    PeeringConnectionOptionsRequest (..),
    newPeeringConnectionOptionsRequest,

    -- * PeeringTgwInfo
    PeeringTgwInfo (..),
    newPeeringTgwInfo,

    -- * Phase1DHGroupNumbersListValue
    Phase1DHGroupNumbersListValue (..),
    newPhase1DHGroupNumbersListValue,

    -- * Phase1DHGroupNumbersRequestListValue
    Phase1DHGroupNumbersRequestListValue (..),
    newPhase1DHGroupNumbersRequestListValue,

    -- * Phase1EncryptionAlgorithmsListValue
    Phase1EncryptionAlgorithmsListValue (..),
    newPhase1EncryptionAlgorithmsListValue,

    -- * Phase1EncryptionAlgorithmsRequestListValue
    Phase1EncryptionAlgorithmsRequestListValue (..),
    newPhase1EncryptionAlgorithmsRequestListValue,

    -- * Phase1IntegrityAlgorithmsListValue
    Phase1IntegrityAlgorithmsListValue (..),
    newPhase1IntegrityAlgorithmsListValue,

    -- * Phase1IntegrityAlgorithmsRequestListValue
    Phase1IntegrityAlgorithmsRequestListValue (..),
    newPhase1IntegrityAlgorithmsRequestListValue,

    -- * Phase2DHGroupNumbersListValue
    Phase2DHGroupNumbersListValue (..),
    newPhase2DHGroupNumbersListValue,

    -- * Phase2DHGroupNumbersRequestListValue
    Phase2DHGroupNumbersRequestListValue (..),
    newPhase2DHGroupNumbersRequestListValue,

    -- * Phase2EncryptionAlgorithmsListValue
    Phase2EncryptionAlgorithmsListValue (..),
    newPhase2EncryptionAlgorithmsListValue,

    -- * Phase2EncryptionAlgorithmsRequestListValue
    Phase2EncryptionAlgorithmsRequestListValue (..),
    newPhase2EncryptionAlgorithmsRequestListValue,

    -- * Phase2IntegrityAlgorithmsListValue
    Phase2IntegrityAlgorithmsListValue (..),
    newPhase2IntegrityAlgorithmsListValue,

    -- * Phase2IntegrityAlgorithmsRequestListValue
    Phase2IntegrityAlgorithmsRequestListValue (..),
    newPhase2IntegrityAlgorithmsRequestListValue,

    -- * Placement
    Placement (..),
    newPlacement,

    -- * PlacementGroup
    PlacementGroup (..),
    newPlacementGroup,

    -- * PlacementGroupInfo
    PlacementGroupInfo (..),
    newPlacementGroupInfo,

    -- * PlacementResponse
    PlacementResponse (..),
    newPlacementResponse,

    -- * PoolCidrBlock
    PoolCidrBlock (..),
    newPoolCidrBlock,

    -- * PortRange
    PortRange (..),
    newPortRange,

    -- * PrefixList
    PrefixList (..),
    newPrefixList,

    -- * PrefixListAssociation
    PrefixListAssociation (..),
    newPrefixListAssociation,

    -- * PrefixListEntry
    PrefixListEntry (..),
    newPrefixListEntry,

    -- * PrefixListId
    PrefixListId (..),
    newPrefixListId,

    -- * PriceSchedule
    PriceSchedule (..),
    newPriceSchedule,

    -- * PriceScheduleSpecification
    PriceScheduleSpecification (..),
    newPriceScheduleSpecification,

    -- * PricingDetail
    PricingDetail (..),
    newPricingDetail,

    -- * PrincipalIdFormat
    PrincipalIdFormat (..),
    newPrincipalIdFormat,

    -- * PrivateDnsDetails
    PrivateDnsDetails (..),
    newPrivateDnsDetails,

    -- * PrivateDnsNameConfiguration
    PrivateDnsNameConfiguration (..),
    newPrivateDnsNameConfiguration,

    -- * PrivateIpAddressSpecification
    PrivateIpAddressSpecification (..),
    newPrivateIpAddressSpecification,

    -- * ProcessorInfo
    ProcessorInfo (..),
    newProcessorInfo,

    -- * ProductCode
    ProductCode (..),
    newProductCode,

    -- * PropagatingVgw
    PropagatingVgw (..),
    newPropagatingVgw,

    -- * ProvisionedBandwidth
    ProvisionedBandwidth (..),
    newProvisionedBandwidth,

    -- * PtrUpdateStatus
    PtrUpdateStatus (..),
    newPtrUpdateStatus,

    -- * PublicIpv4Pool
    PublicIpv4Pool (..),
    newPublicIpv4Pool,

    -- * PublicIpv4PoolRange
    PublicIpv4PoolRange (..),
    newPublicIpv4PoolRange,

    -- * Purchase
    Purchase (..),
    newPurchase,

    -- * PurchaseRequest
    PurchaseRequest (..),
    newPurchaseRequest,

    -- * RecurringCharge
    RecurringCharge (..),
    newRecurringCharge,

    -- * RegionInfo
    RegionInfo (..),
    newRegionInfo,

    -- * RegisterInstanceTagAttributeRequest
    RegisterInstanceTagAttributeRequest (..),
    newRegisterInstanceTagAttributeRequest,

    -- * RemovePrefixListEntry
    RemovePrefixListEntry (..),
    newRemovePrefixListEntry,

    -- * RequestLaunchTemplateData
    RequestLaunchTemplateData (..),
    newRequestLaunchTemplateData,

    -- * RequestSpotLaunchSpecification
    RequestSpotLaunchSpecification (..),
    newRequestSpotLaunchSpecification,

    -- * Reservation
    Reservation (..),
    newReservation,

    -- * ReservationValue
    ReservationValue (..),
    newReservationValue,

    -- * ReservedInstanceLimitPrice
    ReservedInstanceLimitPrice (..),
    newReservedInstanceLimitPrice,

    -- * ReservedInstanceReservationValue
    ReservedInstanceReservationValue (..),
    newReservedInstanceReservationValue,

    -- * ReservedInstances
    ReservedInstances (..),
    newReservedInstances,

    -- * ReservedInstancesConfiguration
    ReservedInstancesConfiguration (..),
    newReservedInstancesConfiguration,

    -- * ReservedInstancesId
    ReservedInstancesId (..),
    newReservedInstancesId,

    -- * ReservedInstancesListing
    ReservedInstancesListing (..),
    newReservedInstancesListing,

    -- * ReservedInstancesModification
    ReservedInstancesModification (..),
    newReservedInstancesModification,

    -- * ReservedInstancesModificationResult
    ReservedInstancesModificationResult (..),
    newReservedInstancesModificationResult,

    -- * ReservedInstancesOffering
    ReservedInstancesOffering (..),
    newReservedInstancesOffering,

    -- * ResponseError
    ResponseError (..),
    newResponseError,

    -- * ResponseLaunchTemplateData
    ResponseLaunchTemplateData (..),
    newResponseLaunchTemplateData,

    -- * Route
    Route (..),
    newRoute,

    -- * RouteTable
    RouteTable (..),
    newRouteTable,

    -- * RouteTableAssociation
    RouteTableAssociation (..),
    newRouteTableAssociation,

    -- * RouteTableAssociationState
    RouteTableAssociationState (..),
    newRouteTableAssociationState,

    -- * RunInstancesMonitoringEnabled
    RunInstancesMonitoringEnabled (..),
    newRunInstancesMonitoringEnabled,

    -- * S3Storage
    S3Storage (..),
    newS3Storage,

    -- * ScheduledInstance
    ScheduledInstance (..),
    newScheduledInstance,

    -- * ScheduledInstanceAvailability
    ScheduledInstanceAvailability (..),
    newScheduledInstanceAvailability,

    -- * ScheduledInstanceRecurrence
    ScheduledInstanceRecurrence (..),
    newScheduledInstanceRecurrence,

    -- * ScheduledInstanceRecurrenceRequest
    ScheduledInstanceRecurrenceRequest (..),
    newScheduledInstanceRecurrenceRequest,

    -- * ScheduledInstancesBlockDeviceMapping
    ScheduledInstancesBlockDeviceMapping (..),
    newScheduledInstancesBlockDeviceMapping,

    -- * ScheduledInstancesEbs
    ScheduledInstancesEbs (..),
    newScheduledInstancesEbs,

    -- * ScheduledInstancesIamInstanceProfile
    ScheduledInstancesIamInstanceProfile (..),
    newScheduledInstancesIamInstanceProfile,

    -- * ScheduledInstancesIpv6Address
    ScheduledInstancesIpv6Address (..),
    newScheduledInstancesIpv6Address,

    -- * ScheduledInstancesLaunchSpecification
    ScheduledInstancesLaunchSpecification (..),
    newScheduledInstancesLaunchSpecification,

    -- * ScheduledInstancesMonitoring
    ScheduledInstancesMonitoring (..),
    newScheduledInstancesMonitoring,

    -- * ScheduledInstancesNetworkInterface
    ScheduledInstancesNetworkInterface (..),
    newScheduledInstancesNetworkInterface,

    -- * ScheduledInstancesPlacement
    ScheduledInstancesPlacement (..),
    newScheduledInstancesPlacement,

    -- * ScheduledInstancesPrivateIpAddressConfig
    ScheduledInstancesPrivateIpAddressConfig (..),
    newScheduledInstancesPrivateIpAddressConfig,

    -- * SecurityGroup
    SecurityGroup (..),
    newSecurityGroup,

    -- * SecurityGroupIdentifier
    SecurityGroupIdentifier (..),
    newSecurityGroupIdentifier,

    -- * SecurityGroupReference
    SecurityGroupReference (..),
    newSecurityGroupReference,

    -- * ServiceConfiguration
    ServiceConfiguration (..),
    newServiceConfiguration,

    -- * ServiceDetail
    ServiceDetail (..),
    newServiceDetail,

    -- * ServiceTypeDetail
    ServiceTypeDetail (..),
    newServiceTypeDetail,

    -- * SlotDateTimeRangeRequest
    SlotDateTimeRangeRequest (..),
    newSlotDateTimeRangeRequest,

    -- * SlotStartTimeRangeRequest
    SlotStartTimeRangeRequest (..),
    newSlotStartTimeRangeRequest,

    -- * Snapshot
    Snapshot (..),
    newSnapshot,

    -- * SnapshotDetail
    SnapshotDetail (..),
    newSnapshotDetail,

    -- * SnapshotDiskContainer
    SnapshotDiskContainer (..),
    newSnapshotDiskContainer,

    -- * SnapshotInfo
    SnapshotInfo (..),
    newSnapshotInfo,

    -- * SnapshotTaskDetail
    SnapshotTaskDetail (..),
    newSnapshotTaskDetail,

    -- * SpotCapacityRebalance
    SpotCapacityRebalance (..),
    newSpotCapacityRebalance,

    -- * SpotDatafeedSubscription
    SpotDatafeedSubscription (..),
    newSpotDatafeedSubscription,

    -- * SpotFleetLaunchSpecification
    SpotFleetLaunchSpecification (..),
    newSpotFleetLaunchSpecification,

    -- * SpotFleetMonitoring
    SpotFleetMonitoring (..),
    newSpotFleetMonitoring,

    -- * SpotFleetRequestConfig
    SpotFleetRequestConfig (..),
    newSpotFleetRequestConfig,

    -- * SpotFleetRequestConfigData
    SpotFleetRequestConfigData (..),
    newSpotFleetRequestConfigData,

    -- * SpotFleetTagSpecification
    SpotFleetTagSpecification (..),
    newSpotFleetTagSpecification,

    -- * SpotInstanceRequest
    SpotInstanceRequest (..),
    newSpotInstanceRequest,

    -- * SpotInstanceStateFault
    SpotInstanceStateFault (..),
    newSpotInstanceStateFault,

    -- * SpotInstanceStatus
    SpotInstanceStatus (..),
    newSpotInstanceStatus,

    -- * SpotMaintenanceStrategies
    SpotMaintenanceStrategies (..),
    newSpotMaintenanceStrategies,

    -- * SpotMarketOptions
    SpotMarketOptions (..),
    newSpotMarketOptions,

    -- * SpotOptions
    SpotOptions (..),
    newSpotOptions,

    -- * SpotOptionsRequest
    SpotOptionsRequest (..),
    newSpotOptionsRequest,

    -- * SpotPlacement
    SpotPlacement (..),
    newSpotPlacement,

    -- * SpotPrice
    SpotPrice (..),
    newSpotPrice,

    -- * StaleIpPermission
    StaleIpPermission (..),
    newStaleIpPermission,

    -- * StaleSecurityGroup
    StaleSecurityGroup (..),
    newStaleSecurityGroup,

    -- * StateReason
    StateReason (..),
    newStateReason,

    -- * Storage
    Storage (..),
    newStorage,

    -- * StorageLocation
    StorageLocation (..),
    newStorageLocation,

    -- * Subnet
    Subnet (..),
    newSubnet,

    -- * SubnetAssociation
    SubnetAssociation (..),
    newSubnetAssociation,

    -- * SubnetCidrBlockState
    SubnetCidrBlockState (..),
    newSubnetCidrBlockState,

    -- * SubnetIpv6CidrBlockAssociation
    SubnetIpv6CidrBlockAssociation (..),
    newSubnetIpv6CidrBlockAssociation,

    -- * SuccessfulInstanceCreditSpecificationItem
    SuccessfulInstanceCreditSpecificationItem (..),
    newSuccessfulInstanceCreditSpecificationItem,

    -- * SuccessfulQueuedPurchaseDeletion
    SuccessfulQueuedPurchaseDeletion (..),
    newSuccessfulQueuedPurchaseDeletion,

    -- * Tag
    Tag (..),
    newTag,

    -- * TagDescription
    TagDescription (..),
    newTagDescription,

    -- * TagSpecification
    TagSpecification (..),
    newTagSpecification,

    -- * TargetCapacitySpecification
    TargetCapacitySpecification (..),
    newTargetCapacitySpecification,

    -- * TargetCapacitySpecificationRequest
    TargetCapacitySpecificationRequest (..),
    newTargetCapacitySpecificationRequest,

    -- * TargetConfiguration
    TargetConfiguration (..),
    newTargetConfiguration,

    -- * TargetConfigurationRequest
    TargetConfigurationRequest (..),
    newTargetConfigurationRequest,

    -- * TargetGroup
    TargetGroup (..),
    newTargetGroup,

    -- * TargetGroupsConfig
    TargetGroupsConfig (..),
    newTargetGroupsConfig,

    -- * TargetNetwork
    TargetNetwork (..),
    newTargetNetwork,

    -- * TargetReservationValue
    TargetReservationValue (..),
    newTargetReservationValue,

    -- * TerminateConnectionStatus
    TerminateConnectionStatus (..),
    newTerminateConnectionStatus,

    -- * TrafficMirrorFilter
    TrafficMirrorFilter (..),
    newTrafficMirrorFilter,

    -- * TrafficMirrorFilterRule
    TrafficMirrorFilterRule (..),
    newTrafficMirrorFilterRule,

    -- * TrafficMirrorPortRange
    TrafficMirrorPortRange (..),
    newTrafficMirrorPortRange,

    -- * TrafficMirrorPortRangeRequest
    TrafficMirrorPortRangeRequest (..),
    newTrafficMirrorPortRangeRequest,

    -- * TrafficMirrorSession
    TrafficMirrorSession (..),
    newTrafficMirrorSession,

    -- * TrafficMirrorTarget
    TrafficMirrorTarget (..),
    newTrafficMirrorTarget,

    -- * TransitGateway
    TransitGateway (..),
    newTransitGateway,

    -- * TransitGatewayAssociation
    TransitGatewayAssociation (..),
    newTransitGatewayAssociation,

    -- * TransitGatewayAttachment
    TransitGatewayAttachment (..),
    newTransitGatewayAttachment,

    -- * TransitGatewayAttachmentAssociation
    TransitGatewayAttachmentAssociation (..),
    newTransitGatewayAttachmentAssociation,

    -- * TransitGatewayAttachmentBgpConfiguration
    TransitGatewayAttachmentBgpConfiguration (..),
    newTransitGatewayAttachmentBgpConfiguration,

    -- * TransitGatewayAttachmentPropagation
    TransitGatewayAttachmentPropagation (..),
    newTransitGatewayAttachmentPropagation,

    -- * TransitGatewayConnect
    TransitGatewayConnect (..),
    newTransitGatewayConnect,

    -- * TransitGatewayConnectOptions
    TransitGatewayConnectOptions (..),
    newTransitGatewayConnectOptions,

    -- * TransitGatewayConnectPeer
    TransitGatewayConnectPeer (..),
    newTransitGatewayConnectPeer,

    -- * TransitGatewayConnectPeerConfiguration
    TransitGatewayConnectPeerConfiguration (..),
    newTransitGatewayConnectPeerConfiguration,

    -- * TransitGatewayConnectRequestBgpOptions
    TransitGatewayConnectRequestBgpOptions (..),
    newTransitGatewayConnectRequestBgpOptions,

    -- * TransitGatewayMulticastDeregisteredGroupMembers
    TransitGatewayMulticastDeregisteredGroupMembers (..),
    newTransitGatewayMulticastDeregisteredGroupMembers,

    -- * TransitGatewayMulticastDeregisteredGroupSources
    TransitGatewayMulticastDeregisteredGroupSources (..),
    newTransitGatewayMulticastDeregisteredGroupSources,

    -- * TransitGatewayMulticastDomain
    TransitGatewayMulticastDomain (..),
    newTransitGatewayMulticastDomain,

    -- * TransitGatewayMulticastDomainAssociation
    TransitGatewayMulticastDomainAssociation (..),
    newTransitGatewayMulticastDomainAssociation,

    -- * TransitGatewayMulticastDomainAssociations
    TransitGatewayMulticastDomainAssociations (..),
    newTransitGatewayMulticastDomainAssociations,

    -- * TransitGatewayMulticastDomainOptions
    TransitGatewayMulticastDomainOptions (..),
    newTransitGatewayMulticastDomainOptions,

    -- * TransitGatewayMulticastGroup
    TransitGatewayMulticastGroup (..),
    newTransitGatewayMulticastGroup,

    -- * TransitGatewayMulticastRegisteredGroupMembers
    TransitGatewayMulticastRegisteredGroupMembers (..),
    newTransitGatewayMulticastRegisteredGroupMembers,

    -- * TransitGatewayMulticastRegisteredGroupSources
    TransitGatewayMulticastRegisteredGroupSources (..),
    newTransitGatewayMulticastRegisteredGroupSources,

    -- * TransitGatewayOptions
    TransitGatewayOptions (..),
    newTransitGatewayOptions,

    -- * TransitGatewayPeeringAttachment
    TransitGatewayPeeringAttachment (..),
    newTransitGatewayPeeringAttachment,

    -- * TransitGatewayPrefixListAttachment
    TransitGatewayPrefixListAttachment (..),
    newTransitGatewayPrefixListAttachment,

    -- * TransitGatewayPrefixListReference
    TransitGatewayPrefixListReference (..),
    newTransitGatewayPrefixListReference,

    -- * TransitGatewayPropagation
    TransitGatewayPropagation (..),
    newTransitGatewayPropagation,

    -- * TransitGatewayRequestOptions
    TransitGatewayRequestOptions (..),
    newTransitGatewayRequestOptions,

    -- * TransitGatewayRoute
    TransitGatewayRoute (..),
    newTransitGatewayRoute,

    -- * TransitGatewayRouteAttachment
    TransitGatewayRouteAttachment (..),
    newTransitGatewayRouteAttachment,

    -- * TransitGatewayRouteTable
    TransitGatewayRouteTable (..),
    newTransitGatewayRouteTable,

    -- * TransitGatewayRouteTableAssociation
    TransitGatewayRouteTableAssociation (..),
    newTransitGatewayRouteTableAssociation,

    -- * TransitGatewayRouteTablePropagation
    TransitGatewayRouteTablePropagation (..),
    newTransitGatewayRouteTablePropagation,

    -- * TransitGatewayVpcAttachment
    TransitGatewayVpcAttachment (..),
    newTransitGatewayVpcAttachment,

    -- * TransitGatewayVpcAttachmentOptions
    TransitGatewayVpcAttachmentOptions (..),
    newTransitGatewayVpcAttachmentOptions,

    -- * TunnelOption
    TunnelOption (..),
    newTunnelOption,

    -- * UnsuccessfulInstanceCreditSpecificationItem
    UnsuccessfulInstanceCreditSpecificationItem (..),
    newUnsuccessfulInstanceCreditSpecificationItem,

    -- * UnsuccessfulInstanceCreditSpecificationItemError
    UnsuccessfulInstanceCreditSpecificationItemError (..),
    newUnsuccessfulInstanceCreditSpecificationItemError,

    -- * UnsuccessfulItem
    UnsuccessfulItem (..),
    newUnsuccessfulItem,

    -- * UnsuccessfulItemError
    UnsuccessfulItemError (..),
    newUnsuccessfulItemError,

    -- * UserBucket
    UserBucket (..),
    newUserBucket,

    -- * UserBucketDetails
    UserBucketDetails (..),
    newUserBucketDetails,

    -- * UserData
    UserData (..),
    newUserData,

    -- * UserIdGroupPair
    UserIdGroupPair (..),
    newUserIdGroupPair,

    -- * VCpuInfo
    VCpuInfo (..),
    newVCpuInfo,

    -- * ValidationError
    ValidationError (..),
    newValidationError,

    -- * ValidationWarning
    ValidationWarning (..),
    newValidationWarning,

    -- * VgwTelemetry
    VgwTelemetry (..),
    newVgwTelemetry,

    -- * Volume
    Volume (..),
    newVolume,

    -- * VolumeAttachment
    VolumeAttachment (..),
    newVolumeAttachment,

    -- * VolumeDetail
    VolumeDetail (..),
    newVolumeDetail,

    -- * VolumeModification
    VolumeModification (..),
    newVolumeModification,

    -- * VolumeStatusAction
    VolumeStatusAction (..),
    newVolumeStatusAction,

    -- * VolumeStatusAttachmentStatus
    VolumeStatusAttachmentStatus (..),
    newVolumeStatusAttachmentStatus,

    -- * VolumeStatusDetails
    VolumeStatusDetails (..),
    newVolumeStatusDetails,

    -- * VolumeStatusEvent
    VolumeStatusEvent (..),
    newVolumeStatusEvent,

    -- * VolumeStatusInfo
    VolumeStatusInfo (..),
    newVolumeStatusInfo,

    -- * VolumeStatusItem
    VolumeStatusItem (..),
    newVolumeStatusItem,

    -- * Vpc
    Vpc (..),
    newVpc,

    -- * VpcAttachment
    VpcAttachment (..),
    newVpcAttachment,

    -- * VpcCidrBlockAssociation
    VpcCidrBlockAssociation (..),
    newVpcCidrBlockAssociation,

    -- * VpcCidrBlockState
    VpcCidrBlockState (..),
    newVpcCidrBlockState,

    -- * VpcClassicLink
    VpcClassicLink (..),
    newVpcClassicLink,

    -- * VpcEndpoint
    VpcEndpoint (..),
    newVpcEndpoint,

    -- * VpcEndpointConnection
    VpcEndpointConnection (..),
    newVpcEndpointConnection,

    -- * VpcIpv6CidrBlockAssociation
    VpcIpv6CidrBlockAssociation (..),
    newVpcIpv6CidrBlockAssociation,

    -- * VpcPeeringConnection
    VpcPeeringConnection (..),
    newVpcPeeringConnection,

    -- * VpcPeeringConnectionOptionsDescription
    VpcPeeringConnectionOptionsDescription (..),
    newVpcPeeringConnectionOptionsDescription,

    -- * VpcPeeringConnectionStateReason
    VpcPeeringConnectionStateReason (..),
    newVpcPeeringConnectionStateReason,

    -- * VpcPeeringConnectionVpcInfo
    VpcPeeringConnectionVpcInfo (..),
    newVpcPeeringConnectionVpcInfo,

    -- * VpnConnection
    VpnConnection (..),
    newVpnConnection,

    -- * VpnConnectionOptions
    VpnConnectionOptions (..),
    newVpnConnectionOptions,

    -- * VpnConnectionOptionsSpecification
    VpnConnectionOptionsSpecification (..),
    newVpnConnectionOptionsSpecification,

    -- * VpnGateway
    VpnGateway (..),
    newVpnGateway,

    -- * VpnStaticRoute
    VpnStaticRoute (..),
    newVpnStaticRoute,

    -- * VpnTunnelOptionsSpecification
    VpnTunnelOptionsSpecification (..),
    newVpnTunnelOptionsSpecification,
  )
where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.AccountAttribute
import Network.AWS.EC2.Types.AccountAttributeName
import Network.AWS.EC2.Types.AccountAttributeValue
import Network.AWS.EC2.Types.ActiveInstance
import Network.AWS.EC2.Types.ActivityStatus
import Network.AWS.EC2.Types.AddPrefixListEntry
import Network.AWS.EC2.Types.Address
import Network.AWS.EC2.Types.AddressAttribute
import Network.AWS.EC2.Types.AddressAttributeName
import Network.AWS.EC2.Types.AddressStatus
import Network.AWS.EC2.Types.Affinity
import Network.AWS.EC2.Types.AllocationState
import Network.AWS.EC2.Types.AllocationStrategy
import Network.AWS.EC2.Types.AllowedPrincipal
import Network.AWS.EC2.Types.AllowsMultipleInstanceTypes
import Network.AWS.EC2.Types.AlternatePathHint
import Network.AWS.EC2.Types.AnalysisAclRule
import Network.AWS.EC2.Types.AnalysisComponent
import Network.AWS.EC2.Types.AnalysisLoadBalancerListener
import Network.AWS.EC2.Types.AnalysisLoadBalancerTarget
import Network.AWS.EC2.Types.AnalysisPacketHeader
import Network.AWS.EC2.Types.AnalysisRouteTableRoute
import Network.AWS.EC2.Types.AnalysisSecurityGroupRule
import Network.AWS.EC2.Types.AnalysisStatus
import Network.AWS.EC2.Types.ApplianceModeSupportValue
import Network.AWS.EC2.Types.ArchitectureType
import Network.AWS.EC2.Types.ArchitectureValues
import Network.AWS.EC2.Types.AssignedPrivateIpAddress
import Network.AWS.EC2.Types.AssociatedNetworkType
import Network.AWS.EC2.Types.AssociatedRole
import Network.AWS.EC2.Types.AssociatedTargetNetwork
import Network.AWS.EC2.Types.AssociationStatus
import Network.AWS.EC2.Types.AssociationStatusCode
import Network.AWS.EC2.Types.AttachmentStatus
import Network.AWS.EC2.Types.AttributeBooleanValue
import Network.AWS.EC2.Types.AttributeValue
import Network.AWS.EC2.Types.AuthorizationRule
import Network.AWS.EC2.Types.AutoAcceptSharedAssociationsValue
import Network.AWS.EC2.Types.AutoAcceptSharedAttachmentsValue
import Network.AWS.EC2.Types.AutoPlacement
import Network.AWS.EC2.Types.AvailabilityZone
import Network.AWS.EC2.Types.AvailabilityZoneMessage
import Network.AWS.EC2.Types.AvailabilityZoneOptInStatus
import Network.AWS.EC2.Types.AvailabilityZoneState
import Network.AWS.EC2.Types.AvailableCapacity
import Network.AWS.EC2.Types.BatchState
import Network.AWS.EC2.Types.BgpStatus
import Network.AWS.EC2.Types.BlobAttributeValue
import Network.AWS.EC2.Types.BlockDeviceMapping
import Network.AWS.EC2.Types.BundleTask
import Network.AWS.EC2.Types.BundleTaskError
import Network.AWS.EC2.Types.BundleTaskState
import Network.AWS.EC2.Types.ByoipCidr
import Network.AWS.EC2.Types.ByoipCidrState
import Network.AWS.EC2.Types.CancelBatchErrorCode
import Network.AWS.EC2.Types.CancelSpotFleetRequestsError
import Network.AWS.EC2.Types.CancelSpotFleetRequestsErrorItem
import Network.AWS.EC2.Types.CancelSpotFleetRequestsSuccessItem
import Network.AWS.EC2.Types.CancelSpotInstanceRequestState
import Network.AWS.EC2.Types.CancelledSpotInstanceRequest
import Network.AWS.EC2.Types.CapacityReservation
import Network.AWS.EC2.Types.CapacityReservationGroup
import Network.AWS.EC2.Types.CapacityReservationInstancePlatform
import Network.AWS.EC2.Types.CapacityReservationOptions
import Network.AWS.EC2.Types.CapacityReservationOptionsRequest
import Network.AWS.EC2.Types.CapacityReservationPreference
import Network.AWS.EC2.Types.CapacityReservationSpecification
import Network.AWS.EC2.Types.CapacityReservationSpecificationResponse
import Network.AWS.EC2.Types.CapacityReservationState
import Network.AWS.EC2.Types.CapacityReservationTarget
import Network.AWS.EC2.Types.CapacityReservationTargetResponse
import Network.AWS.EC2.Types.CapacityReservationTenancy
import Network.AWS.EC2.Types.CarrierGateway
import Network.AWS.EC2.Types.CarrierGatewayState
import Network.AWS.EC2.Types.CertificateAuthentication
import Network.AWS.EC2.Types.CertificateAuthenticationRequest
import Network.AWS.EC2.Types.CidrAuthorizationContext
import Network.AWS.EC2.Types.CidrBlock
import Network.AWS.EC2.Types.ClassicLinkDnsSupport
import Network.AWS.EC2.Types.ClassicLinkInstance
import Network.AWS.EC2.Types.ClassicLoadBalancer
import Network.AWS.EC2.Types.ClassicLoadBalancersConfig
import Network.AWS.EC2.Types.ClientCertificateRevocationListStatus
import Network.AWS.EC2.Types.ClientCertificateRevocationListStatusCode
import Network.AWS.EC2.Types.ClientConnectOptions
import Network.AWS.EC2.Types.ClientConnectResponseOptions
import Network.AWS.EC2.Types.ClientData
import Network.AWS.EC2.Types.ClientVpnAuthentication
import Network.AWS.EC2.Types.ClientVpnAuthenticationRequest
import Network.AWS.EC2.Types.ClientVpnAuthenticationType
import Network.AWS.EC2.Types.ClientVpnAuthorizationRuleStatus
import Network.AWS.EC2.Types.ClientVpnAuthorizationRuleStatusCode
import Network.AWS.EC2.Types.ClientVpnConnection
import Network.AWS.EC2.Types.ClientVpnConnectionStatus
import Network.AWS.EC2.Types.ClientVpnConnectionStatusCode
import Network.AWS.EC2.Types.ClientVpnEndpoint
import Network.AWS.EC2.Types.ClientVpnEndpointAttributeStatus
import Network.AWS.EC2.Types.ClientVpnEndpointAttributeStatusCode
import Network.AWS.EC2.Types.ClientVpnEndpointStatus
import Network.AWS.EC2.Types.ClientVpnEndpointStatusCode
import Network.AWS.EC2.Types.ClientVpnRoute
import Network.AWS.EC2.Types.ClientVpnRouteStatus
import Network.AWS.EC2.Types.ClientVpnRouteStatusCode
import Network.AWS.EC2.Types.CoipAddressUsage
import Network.AWS.EC2.Types.CoipPool
import Network.AWS.EC2.Types.ConnectionLogOptions
import Network.AWS.EC2.Types.ConnectionLogResponseOptions
import Network.AWS.EC2.Types.ConnectionNotification
import Network.AWS.EC2.Types.ConnectionNotificationState
import Network.AWS.EC2.Types.ConnectionNotificationType
import Network.AWS.EC2.Types.ContainerFormat
import Network.AWS.EC2.Types.ConversionTask
import Network.AWS.EC2.Types.ConversionTaskState
import Network.AWS.EC2.Types.CopyTagsFromSource
import Network.AWS.EC2.Types.CpuOptions
import Network.AWS.EC2.Types.CpuOptionsRequest
import Network.AWS.EC2.Types.CreateFleetError
import Network.AWS.EC2.Types.CreateFleetInstance
import Network.AWS.EC2.Types.CreateTransitGatewayConnectRequestOptions
import Network.AWS.EC2.Types.CreateTransitGatewayMulticastDomainRequestOptions
import Network.AWS.EC2.Types.CreateTransitGatewayVpcAttachmentRequestOptions
import Network.AWS.EC2.Types.CreateVolumePermission
import Network.AWS.EC2.Types.CreateVolumePermissionModifications
import Network.AWS.EC2.Types.CreditSpecification
import Network.AWS.EC2.Types.CreditSpecificationRequest
import Network.AWS.EC2.Types.CurrencyCodeValues
import Network.AWS.EC2.Types.CustomerGateway
import Network.AWS.EC2.Types.DatafeedSubscriptionState
import Network.AWS.EC2.Types.DefaultRouteTableAssociationValue
import Network.AWS.EC2.Types.DefaultRouteTablePropagationValue
import Network.AWS.EC2.Types.DefaultTargetCapacityType
import Network.AWS.EC2.Types.DeleteFleetError
import Network.AWS.EC2.Types.DeleteFleetErrorCode
import Network.AWS.EC2.Types.DeleteFleetErrorItem
import Network.AWS.EC2.Types.DeleteFleetSuccessItem
import Network.AWS.EC2.Types.DeleteLaunchTemplateVersionsResponseErrorItem
import Network.AWS.EC2.Types.DeleteLaunchTemplateVersionsResponseSuccessItem
import Network.AWS.EC2.Types.DeleteQueuedReservedInstancesError
import Network.AWS.EC2.Types.DeleteQueuedReservedInstancesErrorCode
import Network.AWS.EC2.Types.DeregisterInstanceTagAttributeRequest
import Network.AWS.EC2.Types.DescribeFastSnapshotRestoreSuccessItem
import Network.AWS.EC2.Types.DescribeFleetError
import Network.AWS.EC2.Types.DescribeFleetsInstances
import Network.AWS.EC2.Types.DeviceType
import Network.AWS.EC2.Types.DhcpConfiguration
import Network.AWS.EC2.Types.DhcpOptions
import Network.AWS.EC2.Types.DirectoryServiceAuthentication
import Network.AWS.EC2.Types.DirectoryServiceAuthenticationRequest
import Network.AWS.EC2.Types.DisableFastSnapshotRestoreErrorItem
import Network.AWS.EC2.Types.DisableFastSnapshotRestoreStateError
import Network.AWS.EC2.Types.DisableFastSnapshotRestoreStateErrorItem
import Network.AWS.EC2.Types.DisableFastSnapshotRestoreSuccessItem
import Network.AWS.EC2.Types.DiskImage
import Network.AWS.EC2.Types.DiskImageDescription
import Network.AWS.EC2.Types.DiskImageDetail
import Network.AWS.EC2.Types.DiskImageFormat
import Network.AWS.EC2.Types.DiskImageVolumeDescription
import Network.AWS.EC2.Types.DiskInfo
import Network.AWS.EC2.Types.DiskType
import Network.AWS.EC2.Types.DnsEntry
import Network.AWS.EC2.Types.DnsNameState
import Network.AWS.EC2.Types.DnsServersOptionsModifyStructure
import Network.AWS.EC2.Types.DnsSupportValue
import Network.AWS.EC2.Types.DomainType
import Network.AWS.EC2.Types.EbsBlockDevice
import Network.AWS.EC2.Types.EbsEncryptionSupport
import Network.AWS.EC2.Types.EbsInfo
import Network.AWS.EC2.Types.EbsInstanceBlockDevice
import Network.AWS.EC2.Types.EbsInstanceBlockDeviceSpecification
import Network.AWS.EC2.Types.EbsNvmeSupport
import Network.AWS.EC2.Types.EbsOptimizedInfo
import Network.AWS.EC2.Types.EbsOptimizedSupport
import Network.AWS.EC2.Types.EgressOnlyInternetGateway
import Network.AWS.EC2.Types.ElasticGpuAssociation
import Network.AWS.EC2.Types.ElasticGpuHealth
import Network.AWS.EC2.Types.ElasticGpuSpecification
import Network.AWS.EC2.Types.ElasticGpuSpecificationResponse
import Network.AWS.EC2.Types.ElasticGpuState
import Network.AWS.EC2.Types.ElasticGpuStatus
import Network.AWS.EC2.Types.ElasticGpus
import Network.AWS.EC2.Types.ElasticInferenceAccelerator
import Network.AWS.EC2.Types.ElasticInferenceAcceleratorAssociation
import Network.AWS.EC2.Types.EnaSupport
import Network.AWS.EC2.Types.EnableFastSnapshotRestoreErrorItem
import Network.AWS.EC2.Types.EnableFastSnapshotRestoreStateError
import Network.AWS.EC2.Types.EnableFastSnapshotRestoreStateErrorItem
import Network.AWS.EC2.Types.EnableFastSnapshotRestoreSuccessItem
import Network.AWS.EC2.Types.EnclaveOptions
import Network.AWS.EC2.Types.EnclaveOptionsRequest
import Network.AWS.EC2.Types.EndDateType
import Network.AWS.EC2.Types.EphemeralNvmeSupport
import Network.AWS.EC2.Types.EventCode
import Network.AWS.EC2.Types.EventInformation
import Network.AWS.EC2.Types.EventType
import Network.AWS.EC2.Types.ExcessCapacityTerminationPolicy
import Network.AWS.EC2.Types.Explanation
import Network.AWS.EC2.Types.ExportEnvironment
import Network.AWS.EC2.Types.ExportImageTask
import Network.AWS.EC2.Types.ExportTask
import Network.AWS.EC2.Types.ExportTaskS3Location
import Network.AWS.EC2.Types.ExportTaskS3LocationRequest
import Network.AWS.EC2.Types.ExportTaskState
import Network.AWS.EC2.Types.ExportToS3Task
import Network.AWS.EC2.Types.ExportToS3TaskSpecification
import Network.AWS.EC2.Types.FailedQueuedPurchaseDeletion
import Network.AWS.EC2.Types.FastSnapshotRestoreStateCode
import Network.AWS.EC2.Types.FederatedAuthentication
import Network.AWS.EC2.Types.FederatedAuthenticationRequest
import Network.AWS.EC2.Types.Filter
import Network.AWS.EC2.Types.FleetActivityStatus
import Network.AWS.EC2.Types.FleetCapacityReservationUsageStrategy
import Network.AWS.EC2.Types.FleetData
import Network.AWS.EC2.Types.FleetEventType
import Network.AWS.EC2.Types.FleetExcessCapacityTerminationPolicy
import Network.AWS.EC2.Types.FleetLaunchTemplateConfig
import Network.AWS.EC2.Types.FleetLaunchTemplateConfigRequest
import Network.AWS.EC2.Types.FleetLaunchTemplateOverrides
import Network.AWS.EC2.Types.FleetLaunchTemplateOverridesRequest
import Network.AWS.EC2.Types.FleetLaunchTemplateSpecification
import Network.AWS.EC2.Types.FleetLaunchTemplateSpecificationRequest
import Network.AWS.EC2.Types.FleetOnDemandAllocationStrategy
import Network.AWS.EC2.Types.FleetReplacementStrategy
import Network.AWS.EC2.Types.FleetSpotCapacityRebalance
import Network.AWS.EC2.Types.FleetSpotCapacityRebalanceRequest
import Network.AWS.EC2.Types.FleetSpotMaintenanceStrategies
import Network.AWS.EC2.Types.FleetSpotMaintenanceStrategiesRequest
import Network.AWS.EC2.Types.FleetStateCode
import Network.AWS.EC2.Types.FleetType
import Network.AWS.EC2.Types.FlowLog
import Network.AWS.EC2.Types.FlowLogsResourceType
import Network.AWS.EC2.Types.FpgaDeviceInfo
import Network.AWS.EC2.Types.FpgaDeviceMemoryInfo
import Network.AWS.EC2.Types.FpgaImage
import Network.AWS.EC2.Types.FpgaImageAttribute
import Network.AWS.EC2.Types.FpgaImageAttributeName
import Network.AWS.EC2.Types.FpgaImageState
import Network.AWS.EC2.Types.FpgaImageStateCode
import Network.AWS.EC2.Types.FpgaInfo
import Network.AWS.EC2.Types.GatewayType
import Network.AWS.EC2.Types.GpuDeviceInfo
import Network.AWS.EC2.Types.GpuDeviceMemoryInfo
import Network.AWS.EC2.Types.GpuInfo
import Network.AWS.EC2.Types.GroupIdentifier
import Network.AWS.EC2.Types.HibernationOptions
import Network.AWS.EC2.Types.HibernationOptionsRequest
import Network.AWS.EC2.Types.HistoryRecord
import Network.AWS.EC2.Types.HistoryRecordEntry
import Network.AWS.EC2.Types.Host
import Network.AWS.EC2.Types.HostInstance
import Network.AWS.EC2.Types.HostOffering
import Network.AWS.EC2.Types.HostProperties
import Network.AWS.EC2.Types.HostRecovery
import Network.AWS.EC2.Types.HostReservation
import Network.AWS.EC2.Types.HostTenancy
import Network.AWS.EC2.Types.HttpTokensState
import Network.AWS.EC2.Types.HypervisorType
import Network.AWS.EC2.Types.IKEVersionsListValue
import Network.AWS.EC2.Types.IKEVersionsRequestListValue
import Network.AWS.EC2.Types.IamInstanceProfile
import Network.AWS.EC2.Types.IamInstanceProfileAssociation
import Network.AWS.EC2.Types.IamInstanceProfileAssociationState
import Network.AWS.EC2.Types.IamInstanceProfileSpecification
import Network.AWS.EC2.Types.IcmpTypeCode
import Network.AWS.EC2.Types.IdFormat
import Network.AWS.EC2.Types.Igmpv2SupportValue
import Network.AWS.EC2.Types.Image
import Network.AWS.EC2.Types.ImageAttributeName
import Network.AWS.EC2.Types.ImageDiskContainer
import Network.AWS.EC2.Types.ImageState
import Network.AWS.EC2.Types.ImageTypeValues
import Network.AWS.EC2.Types.ImportImageLicenseConfigurationRequest
import Network.AWS.EC2.Types.ImportImageLicenseConfigurationResponse
import Network.AWS.EC2.Types.ImportImageTask
import Network.AWS.EC2.Types.ImportInstanceLaunchSpecification
import Network.AWS.EC2.Types.ImportInstanceTaskDetails
import Network.AWS.EC2.Types.ImportInstanceVolumeDetailItem
import Network.AWS.EC2.Types.ImportSnapshotTask
import Network.AWS.EC2.Types.ImportVolumeTaskDetails
import Network.AWS.EC2.Types.InferenceAcceleratorInfo
import Network.AWS.EC2.Types.InferenceDeviceInfo
import Network.AWS.EC2.Types.Instance
import Network.AWS.EC2.Types.InstanceAttributeName
import Network.AWS.EC2.Types.InstanceBlockDeviceMapping
import Network.AWS.EC2.Types.InstanceBlockDeviceMappingSpecification
import Network.AWS.EC2.Types.InstanceCapacity
import Network.AWS.EC2.Types.InstanceCount
import Network.AWS.EC2.Types.InstanceCreditSpecification
import Network.AWS.EC2.Types.InstanceCreditSpecificationRequest
import Network.AWS.EC2.Types.InstanceExportDetails
import Network.AWS.EC2.Types.InstanceFamilyCreditSpecification
import Network.AWS.EC2.Types.InstanceHealthStatus
import Network.AWS.EC2.Types.InstanceInterruptionBehavior
import Network.AWS.EC2.Types.InstanceIpv6Address
import Network.AWS.EC2.Types.InstanceIpv6AddressRequest
import Network.AWS.EC2.Types.InstanceLifecycle
import Network.AWS.EC2.Types.InstanceLifecycleType
import Network.AWS.EC2.Types.InstanceMarketOptionsRequest
import Network.AWS.EC2.Types.InstanceMatchCriteria
import Network.AWS.EC2.Types.InstanceMetadataEndpointState
import Network.AWS.EC2.Types.InstanceMetadataOptionsRequest
import Network.AWS.EC2.Types.InstanceMetadataOptionsResponse
import Network.AWS.EC2.Types.InstanceMetadataOptionsState
import Network.AWS.EC2.Types.InstanceMonitoring
import Network.AWS.EC2.Types.InstanceNetworkInterface
import Network.AWS.EC2.Types.InstanceNetworkInterfaceAssociation
import Network.AWS.EC2.Types.InstanceNetworkInterfaceAttachment
import Network.AWS.EC2.Types.InstanceNetworkInterfaceSpecification
import Network.AWS.EC2.Types.InstancePrivateIpAddress
import Network.AWS.EC2.Types.InstanceSpecification
import Network.AWS.EC2.Types.InstanceState
import Network.AWS.EC2.Types.InstanceStateChange
import Network.AWS.EC2.Types.InstanceStateName
import Network.AWS.EC2.Types.InstanceStatus
import Network.AWS.EC2.Types.InstanceStatusDetails
import Network.AWS.EC2.Types.InstanceStatusEvent
import Network.AWS.EC2.Types.InstanceStatusSummary
import Network.AWS.EC2.Types.InstanceStorageInfo
import Network.AWS.EC2.Types.InstanceTagNotificationAttribute
import Network.AWS.EC2.Types.InstanceType
import Network.AWS.EC2.Types.InstanceTypeHypervisor
import Network.AWS.EC2.Types.InstanceTypeInfo
import Network.AWS.EC2.Types.InstanceTypeOffering
import Network.AWS.EC2.Types.InstanceUsage
import Network.AWS.EC2.Types.InterfacePermissionType
import Network.AWS.EC2.Types.InternetGateway
import Network.AWS.EC2.Types.InternetGatewayAttachment
import Network.AWS.EC2.Types.IpPermission
import Network.AWS.EC2.Types.IpRange
import Network.AWS.EC2.Types.Ipv6CidrAssociation
import Network.AWS.EC2.Types.Ipv6CidrBlock
import Network.AWS.EC2.Types.Ipv6Pool
import Network.AWS.EC2.Types.Ipv6Range
import Network.AWS.EC2.Types.Ipv6SupportValue
import Network.AWS.EC2.Types.KeyPairInfo
import Network.AWS.EC2.Types.LastError
import Network.AWS.EC2.Types.LaunchPermission
import Network.AWS.EC2.Types.LaunchPermissionModifications
import Network.AWS.EC2.Types.LaunchSpecification
import Network.AWS.EC2.Types.LaunchTemplate
import Network.AWS.EC2.Types.LaunchTemplateAndOverridesResponse
import Network.AWS.EC2.Types.LaunchTemplateBlockDeviceMapping
import Network.AWS.EC2.Types.LaunchTemplateBlockDeviceMappingRequest
import Network.AWS.EC2.Types.LaunchTemplateCapacityReservationSpecificationRequest
import Network.AWS.EC2.Types.LaunchTemplateCapacityReservationSpecificationResponse
import Network.AWS.EC2.Types.LaunchTemplateConfig
import Network.AWS.EC2.Types.LaunchTemplateCpuOptions
import Network.AWS.EC2.Types.LaunchTemplateCpuOptionsRequest
import Network.AWS.EC2.Types.LaunchTemplateEbsBlockDevice
import Network.AWS.EC2.Types.LaunchTemplateEbsBlockDeviceRequest
import Network.AWS.EC2.Types.LaunchTemplateElasticInferenceAccelerator
import Network.AWS.EC2.Types.LaunchTemplateElasticInferenceAcceleratorResponse
import Network.AWS.EC2.Types.LaunchTemplateEnclaveOptions
import Network.AWS.EC2.Types.LaunchTemplateEnclaveOptionsRequest
import Network.AWS.EC2.Types.LaunchTemplateErrorCode
import Network.AWS.EC2.Types.LaunchTemplateHibernationOptions
import Network.AWS.EC2.Types.LaunchTemplateHibernationOptionsRequest
import Network.AWS.EC2.Types.LaunchTemplateHttpTokensState
import Network.AWS.EC2.Types.LaunchTemplateIamInstanceProfileSpecification
import Network.AWS.EC2.Types.LaunchTemplateIamInstanceProfileSpecificationRequest
import Network.AWS.EC2.Types.LaunchTemplateInstanceMarketOptions
import Network.AWS.EC2.Types.LaunchTemplateInstanceMarketOptionsRequest
import Network.AWS.EC2.Types.LaunchTemplateInstanceMetadataEndpointState
import Network.AWS.EC2.Types.LaunchTemplateInstanceMetadataOptions
import Network.AWS.EC2.Types.LaunchTemplateInstanceMetadataOptionsRequest
import Network.AWS.EC2.Types.LaunchTemplateInstanceMetadataOptionsState
import Network.AWS.EC2.Types.LaunchTemplateInstanceNetworkInterfaceSpecification
import Network.AWS.EC2.Types.LaunchTemplateInstanceNetworkInterfaceSpecificationRequest
import Network.AWS.EC2.Types.LaunchTemplateLicenseConfiguration
import Network.AWS.EC2.Types.LaunchTemplateLicenseConfigurationRequest
import Network.AWS.EC2.Types.LaunchTemplateOverrides
import Network.AWS.EC2.Types.LaunchTemplatePlacement
import Network.AWS.EC2.Types.LaunchTemplatePlacementRequest
import Network.AWS.EC2.Types.LaunchTemplateSpecification
import Network.AWS.EC2.Types.LaunchTemplateSpotMarketOptions
import Network.AWS.EC2.Types.LaunchTemplateSpotMarketOptionsRequest
import Network.AWS.EC2.Types.LaunchTemplateTagSpecification
import Network.AWS.EC2.Types.LaunchTemplateTagSpecificationRequest
import Network.AWS.EC2.Types.LaunchTemplateVersion
import Network.AWS.EC2.Types.LaunchTemplatesMonitoring
import Network.AWS.EC2.Types.LaunchTemplatesMonitoringRequest
import Network.AWS.EC2.Types.LicenseConfiguration
import Network.AWS.EC2.Types.LicenseConfigurationRequest
import Network.AWS.EC2.Types.ListingState
import Network.AWS.EC2.Types.ListingStatus
import Network.AWS.EC2.Types.LoadBalancersConfig
import Network.AWS.EC2.Types.LoadPermission
import Network.AWS.EC2.Types.LoadPermissionModifications
import Network.AWS.EC2.Types.LoadPermissionRequest
import Network.AWS.EC2.Types.LocalGateway
import Network.AWS.EC2.Types.LocalGatewayRoute
import Network.AWS.EC2.Types.LocalGatewayRouteState
import Network.AWS.EC2.Types.LocalGatewayRouteTable
import Network.AWS.EC2.Types.LocalGatewayRouteTableVirtualInterfaceGroupAssociation
import Network.AWS.EC2.Types.LocalGatewayRouteTableVpcAssociation
import Network.AWS.EC2.Types.LocalGatewayRouteType
import Network.AWS.EC2.Types.LocalGatewayVirtualInterface
import Network.AWS.EC2.Types.LocalGatewayVirtualInterfaceGroup
import Network.AWS.EC2.Types.LocationType
import Network.AWS.EC2.Types.LogDestinationType
import Network.AWS.EC2.Types.ManagedPrefixList
import Network.AWS.EC2.Types.MarketType
import Network.AWS.EC2.Types.MembershipType
import Network.AWS.EC2.Types.MemoryInfo
import Network.AWS.EC2.Types.ModifyAvailabilityZoneOptInStatus
import Network.AWS.EC2.Types.ModifyTransitGatewayOptions
import Network.AWS.EC2.Types.ModifyTransitGatewayVpcAttachmentRequestOptions
import Network.AWS.EC2.Types.ModifyVpnTunnelOptionsSpecification
import Network.AWS.EC2.Types.Monitoring
import Network.AWS.EC2.Types.MonitoringState
import Network.AWS.EC2.Types.MoveStatus
import Network.AWS.EC2.Types.MovingAddressStatus
import Network.AWS.EC2.Types.MulticastSupportValue
import Network.AWS.EC2.Types.NatGateway
import Network.AWS.EC2.Types.NatGatewayAddress
import Network.AWS.EC2.Types.NatGatewayState
import Network.AWS.EC2.Types.NetworkAcl
import Network.AWS.EC2.Types.NetworkAclAssociation
import Network.AWS.EC2.Types.NetworkAclEntry
import Network.AWS.EC2.Types.NetworkCardInfo
import Network.AWS.EC2.Types.NetworkInfo
import Network.AWS.EC2.Types.NetworkInsightsAnalysis
import Network.AWS.EC2.Types.NetworkInsightsPath
import Network.AWS.EC2.Types.NetworkInterface
import Network.AWS.EC2.Types.NetworkInterfaceAssociation
import Network.AWS.EC2.Types.NetworkInterfaceAttachment
import Network.AWS.EC2.Types.NetworkInterfaceAttachmentChanges
import Network.AWS.EC2.Types.NetworkInterfaceAttribute
import Network.AWS.EC2.Types.NetworkInterfaceCreationType
import Network.AWS.EC2.Types.NetworkInterfaceIpv6Address
import Network.AWS.EC2.Types.NetworkInterfacePermission
import Network.AWS.EC2.Types.NetworkInterfacePermissionState
import Network.AWS.EC2.Types.NetworkInterfacePermissionStateCode
import Network.AWS.EC2.Types.NetworkInterfacePrivateIpAddress
import Network.AWS.EC2.Types.NetworkInterfaceStatus
import Network.AWS.EC2.Types.NetworkInterfaceType
import Network.AWS.EC2.Types.NewDhcpConfiguration
import Network.AWS.EC2.Types.OfferingClassType
import Network.AWS.EC2.Types.OfferingTypeValues
import Network.AWS.EC2.Types.OnDemandAllocationStrategy
import Network.AWS.EC2.Types.OnDemandOptions
import Network.AWS.EC2.Types.OnDemandOptionsRequest
import Network.AWS.EC2.Types.OperationType
import Network.AWS.EC2.Types.PathComponent
import Network.AWS.EC2.Types.PaymentOption
import Network.AWS.EC2.Types.PciId
import Network.AWS.EC2.Types.PeeringAttachmentStatus
import Network.AWS.EC2.Types.PeeringConnectionOptions
import Network.AWS.EC2.Types.PeeringConnectionOptionsRequest
import Network.AWS.EC2.Types.PeeringTgwInfo
import Network.AWS.EC2.Types.PermissionGroup
import Network.AWS.EC2.Types.Phase1DHGroupNumbersListValue
import Network.AWS.EC2.Types.Phase1DHGroupNumbersRequestListValue
import Network.AWS.EC2.Types.Phase1EncryptionAlgorithmsListValue
import Network.AWS.EC2.Types.Phase1EncryptionAlgorithmsRequestListValue
import Network.AWS.EC2.Types.Phase1IntegrityAlgorithmsListValue
import Network.AWS.EC2.Types.Phase1IntegrityAlgorithmsRequestListValue
import Network.AWS.EC2.Types.Phase2DHGroupNumbersListValue
import Network.AWS.EC2.Types.Phase2DHGroupNumbersRequestListValue
import Network.AWS.EC2.Types.Phase2EncryptionAlgorithmsListValue
import Network.AWS.EC2.Types.Phase2EncryptionAlgorithmsRequestListValue
import Network.AWS.EC2.Types.Phase2IntegrityAlgorithmsListValue
import Network.AWS.EC2.Types.Phase2IntegrityAlgorithmsRequestListValue
import Network.AWS.EC2.Types.Placement
import Network.AWS.EC2.Types.PlacementGroup
import Network.AWS.EC2.Types.PlacementGroupInfo
import Network.AWS.EC2.Types.PlacementGroupState
import Network.AWS.EC2.Types.PlacementGroupStrategy
import Network.AWS.EC2.Types.PlacementResponse
import Network.AWS.EC2.Types.PlacementStrategy
import Network.AWS.EC2.Types.PlatformValues
import Network.AWS.EC2.Types.PoolCidrBlock
import Network.AWS.EC2.Types.PortRange
import Network.AWS.EC2.Types.PrefixList
import Network.AWS.EC2.Types.PrefixListAssociation
import Network.AWS.EC2.Types.PrefixListEntry
import Network.AWS.EC2.Types.PrefixListId
import Network.AWS.EC2.Types.PrefixListState
import Network.AWS.EC2.Types.PriceSchedule
import Network.AWS.EC2.Types.PriceScheduleSpecification
import Network.AWS.EC2.Types.PricingDetail
import Network.AWS.EC2.Types.PrincipalIdFormat
import Network.AWS.EC2.Types.PrincipalType
import Network.AWS.EC2.Types.PrivateDnsDetails
import Network.AWS.EC2.Types.PrivateDnsNameConfiguration
import Network.AWS.EC2.Types.PrivateIpAddressSpecification
import Network.AWS.EC2.Types.ProcessorInfo
import Network.AWS.EC2.Types.ProductCode
import Network.AWS.EC2.Types.ProductCodeValues
import Network.AWS.EC2.Types.PropagatingVgw
import Network.AWS.EC2.Types.Protocol
import Network.AWS.EC2.Types.ProtocolValue
import Network.AWS.EC2.Types.ProvisionedBandwidth
import Network.AWS.EC2.Types.PtrUpdateStatus
import Network.AWS.EC2.Types.PublicIpv4Pool
import Network.AWS.EC2.Types.PublicIpv4PoolRange
import Network.AWS.EC2.Types.Purchase
import Network.AWS.EC2.Types.PurchaseRequest
import Network.AWS.EC2.Types.RIProductDescription
import Network.AWS.EC2.Types.RecurringCharge
import Network.AWS.EC2.Types.RecurringChargeFrequency
import Network.AWS.EC2.Types.RegionInfo
import Network.AWS.EC2.Types.RegisterInstanceTagAttributeRequest
import Network.AWS.EC2.Types.RemovePrefixListEntry
import Network.AWS.EC2.Types.ReplacementStrategy
import Network.AWS.EC2.Types.ReportInstanceReasonCodes
import Network.AWS.EC2.Types.ReportStatusType
import Network.AWS.EC2.Types.RequestLaunchTemplateData
import Network.AWS.EC2.Types.RequestSpotLaunchSpecification
import Network.AWS.EC2.Types.Reservation
import Network.AWS.EC2.Types.ReservationState
import Network.AWS.EC2.Types.ReservationValue
import Network.AWS.EC2.Types.ReservedInstanceLimitPrice
import Network.AWS.EC2.Types.ReservedInstanceReservationValue
import Network.AWS.EC2.Types.ReservedInstanceState
import Network.AWS.EC2.Types.ReservedInstances
import Network.AWS.EC2.Types.ReservedInstancesConfiguration
import Network.AWS.EC2.Types.ReservedInstancesId
import Network.AWS.EC2.Types.ReservedInstancesListing
import Network.AWS.EC2.Types.ReservedInstancesModification
import Network.AWS.EC2.Types.ReservedInstancesModificationResult
import Network.AWS.EC2.Types.ReservedInstancesOffering
import Network.AWS.EC2.Types.ResetFpgaImageAttributeName
import Network.AWS.EC2.Types.ResetImageAttributeName
import Network.AWS.EC2.Types.ResourceType
import Network.AWS.EC2.Types.ResponseError
import Network.AWS.EC2.Types.ResponseLaunchTemplateData
import Network.AWS.EC2.Types.RootDeviceType
import Network.AWS.EC2.Types.Route
import Network.AWS.EC2.Types.RouteOrigin
import Network.AWS.EC2.Types.RouteState
import Network.AWS.EC2.Types.RouteTable
import Network.AWS.EC2.Types.RouteTableAssociation
import Network.AWS.EC2.Types.RouteTableAssociationState
import Network.AWS.EC2.Types.RouteTableAssociationStateCode
import Network.AWS.EC2.Types.RuleAction
import Network.AWS.EC2.Types.RunInstancesMonitoringEnabled
import Network.AWS.EC2.Types.S3Storage
import Network.AWS.EC2.Types.ScheduledInstance
import Network.AWS.EC2.Types.ScheduledInstanceAvailability
import Network.AWS.EC2.Types.ScheduledInstanceRecurrence
import Network.AWS.EC2.Types.ScheduledInstanceRecurrenceRequest
import Network.AWS.EC2.Types.ScheduledInstancesBlockDeviceMapping
import Network.AWS.EC2.Types.ScheduledInstancesEbs
import Network.AWS.EC2.Types.ScheduledInstancesIamInstanceProfile
import Network.AWS.EC2.Types.ScheduledInstancesIpv6Address
import Network.AWS.EC2.Types.ScheduledInstancesLaunchSpecification
import Network.AWS.EC2.Types.ScheduledInstancesMonitoring
import Network.AWS.EC2.Types.ScheduledInstancesNetworkInterface
import Network.AWS.EC2.Types.ScheduledInstancesPlacement
import Network.AWS.EC2.Types.ScheduledInstancesPrivateIpAddressConfig
import Network.AWS.EC2.Types.Scope
import Network.AWS.EC2.Types.SecurityGroup
import Network.AWS.EC2.Types.SecurityGroupIdentifier
import Network.AWS.EC2.Types.SecurityGroupReference
import Network.AWS.EC2.Types.SelfServicePortal
import Network.AWS.EC2.Types.ServiceConfiguration
import Network.AWS.EC2.Types.ServiceDetail
import Network.AWS.EC2.Types.ServiceState
import Network.AWS.EC2.Types.ServiceType
import Network.AWS.EC2.Types.ServiceTypeDetail
import Network.AWS.EC2.Types.ShutdownBehavior
import Network.AWS.EC2.Types.SlotDateTimeRangeRequest
import Network.AWS.EC2.Types.SlotStartTimeRangeRequest
import Network.AWS.EC2.Types.Snapshot
import Network.AWS.EC2.Types.SnapshotAttributeName
import Network.AWS.EC2.Types.SnapshotDetail
import Network.AWS.EC2.Types.SnapshotDiskContainer
import Network.AWS.EC2.Types.SnapshotInfo
import Network.AWS.EC2.Types.SnapshotState
import Network.AWS.EC2.Types.SnapshotTaskDetail
import Network.AWS.EC2.Types.SpotAllocationStrategy
import Network.AWS.EC2.Types.SpotCapacityRebalance
import Network.AWS.EC2.Types.SpotDatafeedSubscription
import Network.AWS.EC2.Types.SpotFleetLaunchSpecification
import Network.AWS.EC2.Types.SpotFleetMonitoring
import Network.AWS.EC2.Types.SpotFleetRequestConfig
import Network.AWS.EC2.Types.SpotFleetRequestConfigData
import Network.AWS.EC2.Types.SpotFleetTagSpecification
import Network.AWS.EC2.Types.SpotInstanceInterruptionBehavior
import Network.AWS.EC2.Types.SpotInstanceRequest
import Network.AWS.EC2.Types.SpotInstanceState
import Network.AWS.EC2.Types.SpotInstanceStateFault
import Network.AWS.EC2.Types.SpotInstanceStatus
import Network.AWS.EC2.Types.SpotInstanceType
import Network.AWS.EC2.Types.SpotMaintenanceStrategies
import Network.AWS.EC2.Types.SpotMarketOptions
import Network.AWS.EC2.Types.SpotOptions
import Network.AWS.EC2.Types.SpotOptionsRequest
import Network.AWS.EC2.Types.SpotPlacement
import Network.AWS.EC2.Types.SpotPrice
import Network.AWS.EC2.Types.StaleIpPermission
import Network.AWS.EC2.Types.StaleSecurityGroup
import Network.AWS.EC2.Types.State
import Network.AWS.EC2.Types.StateReason
import Network.AWS.EC2.Types.StaticSourcesSupportValue
import Network.AWS.EC2.Types.StatusName
import Network.AWS.EC2.Types.StatusType
import Network.AWS.EC2.Types.Storage
import Network.AWS.EC2.Types.StorageLocation
import Network.AWS.EC2.Types.Subnet
import Network.AWS.EC2.Types.SubnetAssociation
import Network.AWS.EC2.Types.SubnetCidrBlockState
import Network.AWS.EC2.Types.SubnetCidrBlockStateCode
import Network.AWS.EC2.Types.SubnetIpv6CidrBlockAssociation
import Network.AWS.EC2.Types.SubnetState
import Network.AWS.EC2.Types.SuccessfulInstanceCreditSpecificationItem
import Network.AWS.EC2.Types.SuccessfulQueuedPurchaseDeletion
import Network.AWS.EC2.Types.SummaryStatus
import Network.AWS.EC2.Types.Tag
import Network.AWS.EC2.Types.TagDescription
import Network.AWS.EC2.Types.TagSpecification
import Network.AWS.EC2.Types.TargetCapacitySpecification
import Network.AWS.EC2.Types.TargetCapacitySpecificationRequest
import Network.AWS.EC2.Types.TargetConfiguration
import Network.AWS.EC2.Types.TargetConfigurationRequest
import Network.AWS.EC2.Types.TargetGroup
import Network.AWS.EC2.Types.TargetGroupsConfig
import Network.AWS.EC2.Types.TargetNetwork
import Network.AWS.EC2.Types.TargetReservationValue
import Network.AWS.EC2.Types.TelemetryStatus
import Network.AWS.EC2.Types.Tenancy
import Network.AWS.EC2.Types.TerminateConnectionStatus
import Network.AWS.EC2.Types.TrafficDirection
import Network.AWS.EC2.Types.TrafficMirrorFilter
import Network.AWS.EC2.Types.TrafficMirrorFilterRule
import Network.AWS.EC2.Types.TrafficMirrorFilterRuleField
import Network.AWS.EC2.Types.TrafficMirrorNetworkService
import Network.AWS.EC2.Types.TrafficMirrorPortRange
import Network.AWS.EC2.Types.TrafficMirrorPortRangeRequest
import Network.AWS.EC2.Types.TrafficMirrorRuleAction
import Network.AWS.EC2.Types.TrafficMirrorSession
import Network.AWS.EC2.Types.TrafficMirrorSessionField
import Network.AWS.EC2.Types.TrafficMirrorTarget
import Network.AWS.EC2.Types.TrafficMirrorTargetType
import Network.AWS.EC2.Types.TrafficType
import Network.AWS.EC2.Types.TransitGateway
import Network.AWS.EC2.Types.TransitGatewayAssociation
import Network.AWS.EC2.Types.TransitGatewayAssociationState
import Network.AWS.EC2.Types.TransitGatewayAttachment
import Network.AWS.EC2.Types.TransitGatewayAttachmentAssociation
import Network.AWS.EC2.Types.TransitGatewayAttachmentBgpConfiguration
import Network.AWS.EC2.Types.TransitGatewayAttachmentPropagation
import Network.AWS.EC2.Types.TransitGatewayAttachmentResourceType
import Network.AWS.EC2.Types.TransitGatewayAttachmentState
import Network.AWS.EC2.Types.TransitGatewayConnect
import Network.AWS.EC2.Types.TransitGatewayConnectOptions
import Network.AWS.EC2.Types.TransitGatewayConnectPeer
import Network.AWS.EC2.Types.TransitGatewayConnectPeerConfiguration
import Network.AWS.EC2.Types.TransitGatewayConnectPeerState
import Network.AWS.EC2.Types.TransitGatewayConnectRequestBgpOptions
import Network.AWS.EC2.Types.TransitGatewayMulitcastDomainAssociationState
import Network.AWS.EC2.Types.TransitGatewayMulticastDeregisteredGroupMembers
import Network.AWS.EC2.Types.TransitGatewayMulticastDeregisteredGroupSources
import Network.AWS.EC2.Types.TransitGatewayMulticastDomain
import Network.AWS.EC2.Types.TransitGatewayMulticastDomainAssociation
import Network.AWS.EC2.Types.TransitGatewayMulticastDomainAssociations
import Network.AWS.EC2.Types.TransitGatewayMulticastDomainOptions
import Network.AWS.EC2.Types.TransitGatewayMulticastDomainState
import Network.AWS.EC2.Types.TransitGatewayMulticastGroup
import Network.AWS.EC2.Types.TransitGatewayMulticastRegisteredGroupMembers
import Network.AWS.EC2.Types.TransitGatewayMulticastRegisteredGroupSources
import Network.AWS.EC2.Types.TransitGatewayOptions
import Network.AWS.EC2.Types.TransitGatewayPeeringAttachment
import Network.AWS.EC2.Types.TransitGatewayPrefixListAttachment
import Network.AWS.EC2.Types.TransitGatewayPrefixListReference
import Network.AWS.EC2.Types.TransitGatewayPrefixListReferenceState
import Network.AWS.EC2.Types.TransitGatewayPropagation
import Network.AWS.EC2.Types.TransitGatewayPropagationState
import Network.AWS.EC2.Types.TransitGatewayRequestOptions
import Network.AWS.EC2.Types.TransitGatewayRoute
import Network.AWS.EC2.Types.TransitGatewayRouteAttachment
import Network.AWS.EC2.Types.TransitGatewayRouteState
import Network.AWS.EC2.Types.TransitGatewayRouteTable
import Network.AWS.EC2.Types.TransitGatewayRouteTableAssociation
import Network.AWS.EC2.Types.TransitGatewayRouteTablePropagation
import Network.AWS.EC2.Types.TransitGatewayRouteTableState
import Network.AWS.EC2.Types.TransitGatewayRouteType
import Network.AWS.EC2.Types.TransitGatewayState
import Network.AWS.EC2.Types.TransitGatewayVpcAttachment
import Network.AWS.EC2.Types.TransitGatewayVpcAttachmentOptions
import Network.AWS.EC2.Types.TransportProtocol
import Network.AWS.EC2.Types.TunnelInsideIpVersion
import Network.AWS.EC2.Types.TunnelOption
import Network.AWS.EC2.Types.UnlimitedSupportedInstanceFamily
import Network.AWS.EC2.Types.UnsuccessfulInstanceCreditSpecificationErrorCode
import Network.AWS.EC2.Types.UnsuccessfulInstanceCreditSpecificationItem
import Network.AWS.EC2.Types.UnsuccessfulInstanceCreditSpecificationItemError
import Network.AWS.EC2.Types.UnsuccessfulItem
import Network.AWS.EC2.Types.UnsuccessfulItemError
import Network.AWS.EC2.Types.UsageClassType
import Network.AWS.EC2.Types.UserBucket
import Network.AWS.EC2.Types.UserBucketDetails
import Network.AWS.EC2.Types.UserData
import Network.AWS.EC2.Types.UserIdGroupPair
import Network.AWS.EC2.Types.VCpuInfo
import Network.AWS.EC2.Types.ValidationError
import Network.AWS.EC2.Types.ValidationWarning
import Network.AWS.EC2.Types.VgwTelemetry
import Network.AWS.EC2.Types.VirtualizationType
import Network.AWS.EC2.Types.Volume
import Network.AWS.EC2.Types.VolumeAttachment
import Network.AWS.EC2.Types.VolumeAttachmentState
import Network.AWS.EC2.Types.VolumeAttributeName
import Network.AWS.EC2.Types.VolumeDetail
import Network.AWS.EC2.Types.VolumeModification
import Network.AWS.EC2.Types.VolumeModificationState
import Network.AWS.EC2.Types.VolumeState
import Network.AWS.EC2.Types.VolumeStatusAction
import Network.AWS.EC2.Types.VolumeStatusAttachmentStatus
import Network.AWS.EC2.Types.VolumeStatusDetails
import Network.AWS.EC2.Types.VolumeStatusEvent
import Network.AWS.EC2.Types.VolumeStatusInfo
import Network.AWS.EC2.Types.VolumeStatusInfoStatus
import Network.AWS.EC2.Types.VolumeStatusItem
import Network.AWS.EC2.Types.VolumeStatusName
import Network.AWS.EC2.Types.VolumeType
import Network.AWS.EC2.Types.Vpc
import Network.AWS.EC2.Types.VpcAttachment
import Network.AWS.EC2.Types.VpcAttributeName
import Network.AWS.EC2.Types.VpcCidrBlockAssociation
import Network.AWS.EC2.Types.VpcCidrBlockState
import Network.AWS.EC2.Types.VpcCidrBlockStateCode
import Network.AWS.EC2.Types.VpcClassicLink
import Network.AWS.EC2.Types.VpcEndpoint
import Network.AWS.EC2.Types.VpcEndpointConnection
import Network.AWS.EC2.Types.VpcEndpointType
import Network.AWS.EC2.Types.VpcIpv6CidrBlockAssociation
import Network.AWS.EC2.Types.VpcPeeringConnection
import Network.AWS.EC2.Types.VpcPeeringConnectionOptionsDescription
import Network.AWS.EC2.Types.VpcPeeringConnectionStateReason
import Network.AWS.EC2.Types.VpcPeeringConnectionStateReasonCode
import Network.AWS.EC2.Types.VpcPeeringConnectionVpcInfo
import Network.AWS.EC2.Types.VpcState
import Network.AWS.EC2.Types.VpcTenancy
import Network.AWS.EC2.Types.VpnConnection
import Network.AWS.EC2.Types.VpnConnectionOptions
import Network.AWS.EC2.Types.VpnConnectionOptionsSpecification
import Network.AWS.EC2.Types.VpnEcmpSupportValue
import Network.AWS.EC2.Types.VpnGateway
import Network.AWS.EC2.Types.VpnProtocol
import Network.AWS.EC2.Types.VpnState
import Network.AWS.EC2.Types.VpnStaticRoute
import Network.AWS.EC2.Types.VpnStaticRouteSource
import Network.AWS.EC2.Types.VpnTunnelOptionsSpecification
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2016-11-15@ of the Amazon Elastic Compute Cloud SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "EC2",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "ec2",
      Prelude._svcVersion = "2016-11-15",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError = Prelude.parseXMLError "EC2",
      Prelude._svcRetry = retry
    }
  where
    retry =
      Prelude.Exponential
        { Prelude._retryBase = 5.0e-2,
          Prelude._retryGrowth = 2,
          Prelude._retryAttempts = 5,
          Prelude._retryCheck = check
        }
    check e
      | Lens.has
          ( Prelude.hasCode "RequestLimitExceeded"
              Prelude.. Prelude.hasStatus 503
          )
          e =
        Prelude.Just "request_limit_exceeded"
      | Lens.has (Prelude.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Prelude.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Lens.has (Prelude.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Prelude.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Prelude.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Prelude.hasCode "RequestThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has
          ( Prelude.hasCode "EC2ThrottledException"
              Prelude.. Prelude.hasStatus 503
          )
          e =
        Prelude.Just "ec2_throttled_exception"
      | Lens.has
          ( Prelude.hasCode "ThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has (Prelude.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has (Prelude.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Prelude.hasCode "ThrottlingException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has
          ( Prelude.hasCode "Throttling"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Prelude.otherwise = Prelude.Nothing
