{-# LANGUAGE OverloadedStrings #-}

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
    ec2,

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

    -- * BGPStatus
    BGPStatus (..),

    -- * BatchState
    BatchState (..),

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

    -- * ClientVPNAuthenticationType
    ClientVPNAuthenticationType (..),

    -- * ClientVPNAuthorizationRuleStatusCode
    ClientVPNAuthorizationRuleStatusCode (..),

    -- * ClientVPNConnectionStatusCode
    ClientVPNConnectionStatusCode (..),

    -- * ClientVPNEndpointAttributeStatusCode
    ClientVPNEndpointAttributeStatusCode (..),

    -- * ClientVPNEndpointStatusCode
    ClientVPNEndpointStatusCode (..),

    -- * ClientVPNRouteStatusCode
    ClientVPNRouteStatusCode (..),

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

    -- * DNSNameState
    DNSNameState (..),

    -- * DNSSupportValue
    DNSSupportValue (..),

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

    -- * DomainType
    DomainType (..),

    -- * EBSEncryptionSupport
    EBSEncryptionSupport (..),

    -- * EBSNvmeSupport
    EBSNvmeSupport (..),

    -- * EBSOptimizedSupport
    EBSOptimizedSupport (..),

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

    -- * HTTPTokensState
    HTTPTokensState (..),

    -- * HostRecovery
    HostRecovery (..),

    -- * HostTenancy
    HostTenancy (..),

    -- * HypervisorType
    HypervisorType (..),

    -- * IAMInstanceProfileAssociationState
    IAMInstanceProfileAssociationState (..),

    -- * IPv6SupportValue
    IPv6SupportValue (..),

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

    -- * LaunchTemplateErrorCode
    LaunchTemplateErrorCode (..),

    -- * LaunchTemplateHTTPTokensState
    LaunchTemplateHTTPTokensState (..),

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

    -- * TunnelInsideIPVersion
    TunnelInsideIPVersion (..),

    -- * UnlimitedSupportedInstanceFamily
    UnlimitedSupportedInstanceFamily (..),

    -- * UnsuccessfulInstanceCreditSpecificationErrorCode
    UnsuccessfulInstanceCreditSpecificationErrorCode (..),

    -- * UsageClassType
    UsageClassType (..),

    -- * VPCAttributeName
    VPCAttributeName (..),

    -- * VPCCidrBlockStateCode
    VPCCidrBlockStateCode (..),

    -- * VPCEndpointType
    VPCEndpointType (..),

    -- * VPCPeeringConnectionStateReasonCode
    VPCPeeringConnectionStateReasonCode (..),

    -- * VPCState
    VPCState (..),

    -- * VPCTenancy
    VPCTenancy (..),

    -- * VPNEcmpSupportValue
    VPNEcmpSupportValue (..),

    -- * VPNProtocol
    VPNProtocol (..),

    -- * VPNState
    VPNState (..),

    -- * VPNStaticRouteSource
    VPNStaticRouteSource (..),

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

    -- * AccountAttribute
    AccountAttribute (..),
    accountAttribute,
    aaAttributeName,
    aaAttributeValues,

    -- * AccountAttributeValue
    AccountAttributeValue (..),
    accountAttributeValue,
    aavAttributeValue,

    -- * ActiveInstance
    ActiveInstance (..),
    activeInstance,
    aiInstanceId,
    aiInstanceType,
    aiSpotInstanceRequestId,
    aiInstanceHealth,

    -- * AddPrefixListEntry
    AddPrefixListEntry (..),
    addPrefixListEntry,
    apleDescription,
    apleCidr,

    -- * Address
    Address (..),
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

    -- * AddressAttribute
    AddressAttribute (..),
    addressAttribute,
    aaPtrRecord,
    aaPublicIP,
    aaAllocationId,
    aaPtrRecordUpdate,

    -- * AllowedPrincipal
    AllowedPrincipal (..),
    allowedPrincipal,
    apPrincipal,
    apPrincipalType,

    -- * AlternatePathHint
    AlternatePathHint (..),
    alternatePathHint,
    aphComponentId,
    aphComponentARN,

    -- * AnalysisACLRule
    AnalysisACLRule (..),
    analysisACLRule,
    aarPortRange,
    aarRuleAction,
    aarEgress,
    aarCidr,
    aarProtocol,
    aarRuleNumber,

    -- * AnalysisComponent
    AnalysisComponent (..),
    analysisComponent,
    acARN,
    acId,

    -- * AnalysisLoadBalancerListener
    AnalysisLoadBalancerListener (..),
    analysisLoadBalancerListener,
    alblLoadBalancerPort,
    alblInstancePort,

    -- * AnalysisLoadBalancerTarget
    AnalysisLoadBalancerTarget (..),
    analysisLoadBalancerTarget,
    albtAddress,
    albtAvailabilityZone,
    albtInstance,
    albtPort,

    -- * AnalysisPacketHeader
    AnalysisPacketHeader (..),
    analysisPacketHeader,
    aphDestinationAddresses,
    aphSourceAddresses,
    aphDestinationPortRanges,
    aphProtocol,
    aphSourcePortRanges,

    -- * AnalysisRouteTableRoute
    AnalysisRouteTableRoute (..),
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

    -- * AnalysisSecurityGroupRule
    AnalysisSecurityGroupRule (..),
    analysisSecurityGroupRule,
    asgrSecurityGroupId,
    asgrPortRange,
    asgrDirection,
    asgrPrefixListId,
    asgrCidr,
    asgrProtocol,

    -- * AssignedPrivateIPAddress
    AssignedPrivateIPAddress (..),
    assignedPrivateIPAddress,
    apiaPrivateIPAddress,

    -- * AssociatedRole
    AssociatedRole (..),
    associatedRole,
    arCertificateS3ObjectKey,
    arEncryptionKMSKeyId,
    arCertificateS3BucketName,
    arAssociatedRoleARN,

    -- * AssociatedTargetNetwork
    AssociatedTargetNetwork (..),
    associatedTargetNetwork,
    atnNetworkType,
    atnNetworkId,

    -- * AssociationStatus
    AssociationStatus (..),
    associationStatus,
    asMessage,
    asCode,

    -- * AttributeBooleanValue
    AttributeBooleanValue (..),
    attributeBooleanValue,
    abvValue,

    -- * AttributeValue
    AttributeValue (..),
    attributeValue,
    avValue,

    -- * AuthorizationRule
    AuthorizationRule (..),
    authorizationRule,
    arClientVPNEndpointId,
    arStatus,
    arDestinationCidr,
    arAccessAll,
    arGroupId,
    arDescription,

    -- * AvailabilityZone
    AvailabilityZone (..),
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

    -- * AvailabilityZoneMessage
    AvailabilityZoneMessage (..),
    availabilityZoneMessage,
    azmMessage,

    -- * AvailableCapacity
    AvailableCapacity (..),
    availableCapacity,
    acAvailableInstanceCapacity,
    acAvailableVCPUs,

    -- * BlobAttributeValue
    BlobAttributeValue (..),
    blobAttributeValue,
    bavValue,

    -- * BlockDeviceMapping
    BlockDeviceMapping (..),
    blockDeviceMapping,
    bdmEBS,
    bdmNoDevice,
    bdmVirtualName,
    bdmDeviceName,

    -- * BundleTask
    BundleTask (..),
    bundleTask,
    btBundleTaskError,
    btBundleId,
    btInstanceId,
    btProgress,
    btStartTime,
    btState,
    btStorage,
    btUpdateTime,

    -- * BundleTaskError
    BundleTaskError (..),
    bundleTaskError,
    bteMessage,
    bteCode,

    -- * ByoipCidr
    ByoipCidr (..),
    byoipCidr,
    bcStatusMessage,
    bcState,
    bcCidr,
    bcDescription,

    -- * CPUOptions
    CPUOptions (..),
    cpuOptions,
    coThreadsPerCore,
    coCoreCount,

    -- * CPUOptionsRequest
    CPUOptionsRequest (..),
    cpuOptionsRequest,
    corThreadsPerCore,
    corCoreCount,

    -- * CancelSpotFleetRequestsError
    CancelSpotFleetRequestsError (..),
    cancelSpotFleetRequestsError,
    csfreMessage,
    csfreCode,

    -- * CancelSpotFleetRequestsErrorItem
    CancelSpotFleetRequestsErrorItem (..),
    cancelSpotFleetRequestsErrorItem,
    csfreiError,
    csfreiSpotFleetRequestId,

    -- * CancelSpotFleetRequestsSuccessItem
    CancelSpotFleetRequestsSuccessItem (..),
    cancelSpotFleetRequestsSuccessItem,
    csfrsiCurrentSpotFleetRequestState,
    csfrsiPreviousSpotFleetRequestState,
    csfrsiSpotFleetRequestId,

    -- * CancelledSpotInstanceRequest
    CancelledSpotInstanceRequest (..),
    cancelledSpotInstanceRequest,
    csirState,
    csirSpotInstanceRequestId,

    -- * CapacityReservation
    CapacityReservation (..),
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

    -- * CapacityReservationGroup
    CapacityReservationGroup (..),
    capacityReservationGroup,
    crgOwnerId,
    crgGroupARN,

    -- * CapacityReservationOptions
    CapacityReservationOptions (..),
    capacityReservationOptions,
    croUsageStrategy,

    -- * CapacityReservationOptionsRequest
    CapacityReservationOptionsRequest (..),
    capacityReservationOptionsRequest,
    crorUsageStrategy,

    -- * CapacityReservationSpecification
    CapacityReservationSpecification (..),
    capacityReservationSpecification,
    crsCapacityReservationPreference,
    crsCapacityReservationTarget,

    -- * CapacityReservationSpecificationResponse
    CapacityReservationSpecificationResponse (..),
    capacityReservationSpecificationResponse,
    crsrCapacityReservationPreference,
    crsrCapacityReservationTarget,

    -- * CapacityReservationTarget
    CapacityReservationTarget (..),
    capacityReservationTarget,
    crtCapacityReservationResourceGroupARN,
    crtCapacityReservationId,

    -- * CapacityReservationTargetResponse
    CapacityReservationTargetResponse (..),
    capacityReservationTargetResponse,
    crtrCapacityReservationResourceGroupARN,
    crtrCapacityReservationId,

    -- * CarrierGateway
    CarrierGateway (..),
    carrierGateway,
    cgOwnerId,
    cgState,
    cgTags,
    cgCarrierGatewayId,
    cgVPCId,

    -- * CertificateAuthentication
    CertificateAuthentication (..),
    certificateAuthentication,
    caClientRootCertificateChain,

    -- * CertificateAuthenticationRequest
    CertificateAuthenticationRequest (..),
    certificateAuthenticationRequest,
    carClientRootCertificateChainARN,

    -- * CidrAuthorizationContext
    CidrAuthorizationContext (..),
    cidrAuthorizationContext,
    cacMessage,
    cacSignature,

    -- * CidrBlock
    CidrBlock (..),
    cidrBlock,
    cbCidrBlock,

    -- * ClassicLinkDNSSupport
    ClassicLinkDNSSupport (..),
    classicLinkDNSSupport,
    cldsClassicLinkDNSSupported,
    cldsVPCId,

    -- * ClassicLinkInstance
    ClassicLinkInstance (..),
    classicLinkInstance,
    cliGroups,
    cliInstanceId,
    cliTags,
    cliVPCId,

    -- * ClassicLoadBalancer
    ClassicLoadBalancer (..),
    classicLoadBalancer,
    clbName,

    -- * ClassicLoadBalancersConfig
    ClassicLoadBalancersConfig (..),
    classicLoadBalancersConfig,
    clbcClassicLoadBalancers,

    -- * ClientCertificateRevocationListStatus
    ClientCertificateRevocationListStatus (..),
    clientCertificateRevocationListStatus,
    ccrlsMessage,
    ccrlsCode,

    -- * ClientConnectOptions
    ClientConnectOptions (..),
    clientConnectOptions,
    ccoEnabled,
    ccoLambdaFunctionARN,

    -- * ClientConnectResponseOptions
    ClientConnectResponseOptions (..),
    clientConnectResponseOptions,
    ccroStatus,
    ccroEnabled,
    ccroLambdaFunctionARN,

    -- * ClientData
    ClientData (..),
    clientData,
    cdUploadEnd,
    cdComment,
    cdUploadSize,
    cdUploadStart,

    -- * ClientVPNAuthentication
    ClientVPNAuthentication (..),
    clientVPNAuthentication,
    cvaFederatedAuthentication,
    cvaActiveDirectory,
    cvaMutualAuthentication,
    cvaType,

    -- * ClientVPNAuthenticationRequest
    ClientVPNAuthenticationRequest (..),
    clientVPNAuthenticationRequest,
    cvarFederatedAuthentication,
    cvarActiveDirectory,
    cvarMutualAuthentication,
    cvarType,

    -- * ClientVPNAuthorizationRuleStatus
    ClientVPNAuthorizationRuleStatus (..),
    clientVPNAuthorizationRuleStatus,
    cvarsMessage,
    cvarsCode,

    -- * ClientVPNConnection
    ClientVPNConnection (..),
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

    -- * ClientVPNConnectionStatus
    ClientVPNConnectionStatus (..),
    clientVPNConnectionStatus,
    cvcsMessage,
    cvcsCode,

    -- * ClientVPNEndpoint
    ClientVPNEndpoint (..),
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

    -- * ClientVPNEndpointAttributeStatus
    ClientVPNEndpointAttributeStatus (..),
    clientVPNEndpointAttributeStatus,
    cveasMessage,
    cveasCode,

    -- * ClientVPNEndpointStatus
    ClientVPNEndpointStatus (..),
    clientVPNEndpointStatus,
    cvesMessage,
    cvesCode,

    -- * ClientVPNRoute
    ClientVPNRoute (..),
    clientVPNRoute,
    cvrClientVPNEndpointId,
    cvrStatus,
    cvrOrigin,
    cvrDestinationCidr,
    cvrDescription,
    cvrType,
    cvrTargetSubnet,

    -- * ClientVPNRouteStatus
    ClientVPNRouteStatus (..),
    clientVPNRouteStatus,
    cvrsMessage,
    cvrsCode,

    -- * CoipAddressUsage
    CoipAddressUsage (..),
    coipAddressUsage,
    cauAWSAccountId,
    cauCoIP,
    cauAWSService,
    cauAllocationId,

    -- * CoipPool
    CoipPool (..),
    coipPool,
    cpPoolId,
    cpPoolARN,
    cpPoolCidrs,
    cpLocalGatewayRouteTableId,
    cpTags,

    -- * ConnectionLogOptions
    ConnectionLogOptions (..),
    connectionLogOptions,
    cloCloudwatchLogStream,
    cloEnabled,
    cloCloudwatchLogGroup,

    -- * ConnectionLogResponseOptions
    ConnectionLogResponseOptions (..),
    connectionLogResponseOptions,
    clroCloudwatchLogStream,
    clroEnabled,
    clroCloudwatchLogGroup,

    -- * ConnectionNotification
    ConnectionNotification (..),
    connectionNotification,
    cnConnectionEvents,
    cnConnectionNotificationId,
    cnConnectionNotificationType,
    cnVPCEndpointId,
    cnServiceId,
    cnConnectionNotificationState,
    cnConnectionNotificationARN,

    -- * ConversionTask
    ConversionTask (..),
    conversionTask,
    ctStatusMessage,
    ctImportInstance,
    ctExpirationTime,
    ctImportVolume,
    ctState,
    ctTags,
    ctConversionTaskId,

    -- * CreateFleetError
    CreateFleetError (..),
    createFleetError,
    cfeLaunchTemplateAndOverrides,
    cfeLifecycle,
    cfeErrorMessage,
    cfeErrorCode,

    -- * CreateFleetInstance
    CreateFleetInstance (..),
    createFleetInstance,
    cfiInstanceIds,
    cfiPlatform,
    cfiInstanceType,
    cfiLaunchTemplateAndOverrides,
    cfiLifecycle,

    -- * CreateTransitGatewayConnectRequestOptions
    CreateTransitGatewayConnectRequestOptions (..),
    createTransitGatewayConnectRequestOptions,
    ctgcroProtocol,

    -- * CreateTransitGatewayMulticastDomainRequestOptions
    CreateTransitGatewayMulticastDomainRequestOptions (..),
    createTransitGatewayMulticastDomainRequestOptions,
    ctgmdroIgmpv2Support,
    ctgmdroAutoAcceptSharedAssociations,
    ctgmdroStaticSourcesSupport,

    -- * CreateTransitGatewayVPCAttachmentRequestOptions
    CreateTransitGatewayVPCAttachmentRequestOptions (..),
    createTransitGatewayVPCAttachmentRequestOptions,
    ctgvaroApplianceModeSupport,
    ctgvaroDNSSupport,
    ctgvaroIPv6Support,

    -- * CreateVolumePermission
    CreateVolumePermission (..),
    createVolumePermission,
    cvpGroup,
    cvpUserId,

    -- * CreateVolumePermissionModifications
    CreateVolumePermissionModifications (..),
    createVolumePermissionModifications,
    cvpmAdd,
    cvpmRemove,

    -- * CreditSpecification
    CreditSpecification (..),
    creditSpecification,
    csCPUCredits,

    -- * CreditSpecificationRequest
    CreditSpecificationRequest (..),
    creditSpecificationRequest,
    csrCPUCredits,

    -- * CustomerGateway
    CustomerGateway (..),
    customerGateway,
    cCertificateARN,
    cDeviceName,
    cTags,
    cBGPASN,
    cCustomerGatewayId,
    cIPAddress,
    cState,
    cType,

    -- * DHCPConfiguration
    DHCPConfiguration (..),
    dhcpConfiguration,
    dcKey,
    dcValues,

    -- * DHCPOptions
    DHCPOptions (..),
    dhcpOptions,
    doOwnerId,
    doDHCPConfigurations,
    doDHCPOptionsId,
    doTags,

    -- * DNSEntry
    DNSEntry (..),
    dnsEntry,
    deHostedZoneId,
    deDNSName,

    -- * DNSServersOptionsModifyStructure
    DNSServersOptionsModifyStructure (..),
    dnsServersOptionsModifyStructure,
    dsomsEnabled,
    dsomsCustomDNSServers,

    -- * DeleteFleetError
    DeleteFleetError (..),
    deleteFleetError,
    dfeMessage,
    dfeCode,

    -- * DeleteFleetErrorItem
    DeleteFleetErrorItem (..),
    deleteFleetErrorItem,
    dfeiFleetId,
    dfeiError,

    -- * DeleteFleetSuccessItem
    DeleteFleetSuccessItem (..),
    deleteFleetSuccessItem,
    dfsiFleetId,
    dfsiCurrentFleetState,
    dfsiPreviousFleetState,

    -- * DeleteLaunchTemplateVersionsResponseErrorItem
    DeleteLaunchTemplateVersionsResponseErrorItem (..),
    deleteLaunchTemplateVersionsResponseErrorItem,
    dltvreiResponseError,
    dltvreiLaunchTemplateId,
    dltvreiLaunchTemplateName,
    dltvreiVersionNumber,

    -- * DeleteLaunchTemplateVersionsResponseSuccessItem
    DeleteLaunchTemplateVersionsResponseSuccessItem (..),
    deleteLaunchTemplateVersionsResponseSuccessItem,
    dltvrsiLaunchTemplateId,
    dltvrsiLaunchTemplateName,
    dltvrsiVersionNumber,

    -- * DeleteQueuedReservedInstancesError
    DeleteQueuedReservedInstancesError (..),
    deleteQueuedReservedInstancesError,
    dqrieMessage,
    dqrieCode,

    -- * DeregisterInstanceTagAttributeRequest
    DeregisterInstanceTagAttributeRequest (..),
    deregisterInstanceTagAttributeRequest,
    ditarInstanceTagKeys,
    ditarIncludeAllTagsOfInstance,

    -- * DescribeFastSnapshotRestoreSuccessItem
    DescribeFastSnapshotRestoreSuccessItem (..),
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

    -- * DescribeFleetError
    DescribeFleetError (..),
    describeFleetError,
    dfeLaunchTemplateAndOverrides,
    dfeLifecycle,
    dfeErrorMessage,
    dfeErrorCode,

    -- * DescribeFleetsInstances
    DescribeFleetsInstances (..),
    describeFleetsInstances,
    dfiInstanceIds,
    dfiPlatform,
    dfiInstanceType,
    dfiLaunchTemplateAndOverrides,
    dfiLifecycle,

    -- * DirectoryServiceAuthentication
    DirectoryServiceAuthentication (..),
    directoryServiceAuthentication,
    dsaDirectoryId,

    -- * DirectoryServiceAuthenticationRequest
    DirectoryServiceAuthenticationRequest (..),
    directoryServiceAuthenticationRequest,
    dsarDirectoryId,

    -- * DisableFastSnapshotRestoreErrorItem
    DisableFastSnapshotRestoreErrorItem (..),
    disableFastSnapshotRestoreErrorItem,
    dfsreiFastSnapshotRestoreStateErrors,
    dfsreiSnapshotId,

    -- * DisableFastSnapshotRestoreStateError
    DisableFastSnapshotRestoreStateError (..),
    disableFastSnapshotRestoreStateError,
    dfsrseMessage,
    dfsrseCode,

    -- * DisableFastSnapshotRestoreStateErrorItem
    DisableFastSnapshotRestoreStateErrorItem (..),
    disableFastSnapshotRestoreStateErrorItem,
    dfsrseiAvailabilityZone,
    dfsrseiError,

    -- * DisableFastSnapshotRestoreSuccessItem
    DisableFastSnapshotRestoreSuccessItem (..),
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

    -- * DiskImage
    DiskImage (..),
    diskImage,
    diVolume,
    diImage,
    diDescription,

    -- * DiskImageDescription
    DiskImageDescription (..),
    diskImageDescription,
    didFormat,
    didImportManifestURL,
    didChecksum,
    didSize,

    -- * DiskImageDetail
    DiskImageDetail (..),
    diskImageDetail,
    dBytes,
    dFormat,
    dImportManifestURL,

    -- * DiskImageVolumeDescription
    DiskImageVolumeDescription (..),
    diskImageVolumeDescription,
    divdId,
    divdSize,

    -- * DiskInfo
    DiskInfo (..),
    diskInfo,
    diSizeInGB,
    diCount,
    diType,

    -- * EBSBlockDevice
    EBSBlockDevice (..),
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

    -- * EBSInfo
    EBSInfo (..),
    ebsInfo,
    eiNvmeSupport,
    eiEBSOptimizedInfo,
    eiEBSOptimizedSupport,
    eiEncryptionSupport,

    -- * EBSInstanceBlockDevice
    EBSInstanceBlockDevice (..),
    ebsInstanceBlockDevice,
    eibdStatus,
    eibdAttachTime,
    eibdVolumeId,
    eibdDeleteOnTermination,

    -- * EBSInstanceBlockDeviceSpecification
    EBSInstanceBlockDeviceSpecification (..),
    ebsInstanceBlockDeviceSpecification,
    eibdsVolumeId,
    eibdsDeleteOnTermination,

    -- * EBSOptimizedInfo
    EBSOptimizedInfo (..),
    ebsOptimizedInfo,
    eoiBaselineBandwidthInMbps,
    eoiMaximumIOPS,
    eoiMaximumBandwidthInMbps,
    eoiMaximumThroughputInMBps,
    eoiBaselineIOPS,
    eoiBaselineThroughputInMBps,

    -- * EgressOnlyInternetGateway
    EgressOnlyInternetGateway (..),
    egressOnlyInternetGateway,
    eoigEgressOnlyInternetGatewayId,
    eoigTags,
    eoigAttachments,

    -- * ElasticGpuAssociation
    ElasticGpuAssociation (..),
    elasticGpuAssociation,
    egaElasticGpuAssociationTime,
    egaElasticGpuId,
    egaElasticGpuAssociationState,
    egaElasticGpuAssociationId,

    -- * ElasticGpuHealth
    ElasticGpuHealth (..),
    elasticGpuHealth,
    eghStatus,

    -- * ElasticGpuSpecification
    ElasticGpuSpecification (..),
    elasticGpuSpecification,
    egsType,

    -- * ElasticGpuSpecificationResponse
    ElasticGpuSpecificationResponse (..),
    elasticGpuSpecificationResponse,
    egsrType,

    -- * ElasticGpus
    ElasticGpus (..),
    elasticGpus,
    egElasticGpuType,
    egInstanceId,
    egElasticGpuHealth,
    egElasticGpuId,
    egAvailabilityZone,
    egTags,
    egElasticGpuState,

    -- * ElasticInferenceAccelerator
    ElasticInferenceAccelerator (..),
    elasticInferenceAccelerator,
    eiaCount,
    eiaType,

    -- * ElasticInferenceAcceleratorAssociation
    ElasticInferenceAcceleratorAssociation (..),
    elasticInferenceAcceleratorAssociation,
    eiaaElasticInferenceAcceleratorAssociationId,
    eiaaElasticInferenceAcceleratorAssociationState,
    eiaaElasticInferenceAcceleratorARN,
    eiaaElasticInferenceAcceleratorAssociationTime,

    -- * EnableFastSnapshotRestoreErrorItem
    EnableFastSnapshotRestoreErrorItem (..),
    enableFastSnapshotRestoreErrorItem,
    efsreiFastSnapshotRestoreStateErrors,
    efsreiSnapshotId,

    -- * EnableFastSnapshotRestoreStateError
    EnableFastSnapshotRestoreStateError (..),
    enableFastSnapshotRestoreStateError,
    efsrseMessage,
    efsrseCode,

    -- * EnableFastSnapshotRestoreStateErrorItem
    EnableFastSnapshotRestoreStateErrorItem (..),
    enableFastSnapshotRestoreStateErrorItem,
    efsrseiAvailabilityZone,
    efsrseiError,

    -- * EnableFastSnapshotRestoreSuccessItem
    EnableFastSnapshotRestoreSuccessItem (..),
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

    -- * EnclaveOptions
    EnclaveOptions (..),
    enclaveOptions,
    eoEnabled,

    -- * EnclaveOptionsRequest
    EnclaveOptionsRequest (..),
    enclaveOptionsRequest,
    eorEnabled,

    -- * EventInformation
    EventInformation (..),
    eventInformation,
    eiInstanceId,
    eiEventDescription,
    eiEventSubType,

    -- * Explanation
    Explanation (..),
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

    -- * ExportImageTask
    ExportImageTask (..),
    exportImageTask,
    eitStatusMessage,
    eitStatus,
    eitImageId,
    eitTags,
    eitS3ExportLocation,
    eitDescription,
    eitExportImageTaskId,
    eitProgress,

    -- * ExportTask
    ExportTask (..),
    exportTask,
    etTags,
    etDescription,
    etExportTaskId,
    etExportToS3Task,
    etInstanceExportDetails,
    etState,
    etStatusMessage,

    -- * ExportTaskS3Location
    ExportTaskS3Location (..),
    exportTaskS3Location,
    etslS3Bucket,
    etslS3Prefix,

    -- * ExportTaskS3LocationRequest
    ExportTaskS3LocationRequest (..),
    exportTaskS3LocationRequest,
    etslrS3Prefix,
    etslrS3Bucket,

    -- * ExportToS3Task
    ExportToS3Task (..),
    exportToS3Task,
    etstContainerFormat,
    etstDiskImageFormat,
    etstS3Bucket,
    etstS3Key,

    -- * ExportToS3TaskSpecification
    ExportToS3TaskSpecification (..),
    exportToS3TaskSpecification,
    etstsContainerFormat,
    etstsDiskImageFormat,
    etstsS3Bucket,
    etstsS3Prefix,

    -- * FailedQueuedPurchaseDeletion
    FailedQueuedPurchaseDeletion (..),
    failedQueuedPurchaseDeletion,
    fqpdReservedInstancesId,
    fqpdError,

    -- * FederatedAuthentication
    FederatedAuthentication (..),
    federatedAuthentication,
    faSelfServiceSamlProviderARN,
    faSamlProviderARN,

    -- * FederatedAuthenticationRequest
    FederatedAuthenticationRequest (..),
    federatedAuthenticationRequest,
    farSelfServiceSAMLProviderARN,
    farSAMLProviderARN,

    -- * Filter
    Filter (..),
    filter',
    fValues,
    fName,

    -- * FleetData
    FleetData (..),
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

    -- * FleetLaunchTemplateConfig
    FleetLaunchTemplateConfig (..),
    fleetLaunchTemplateConfig,
    fltcLaunchTemplateSpecification,
    fltcOverrides,

    -- * FleetLaunchTemplateConfigRequest
    FleetLaunchTemplateConfigRequest (..),
    fleetLaunchTemplateConfigRequest,
    fltcrLaunchTemplateSpecification,
    fltcrOverrides,

    -- * FleetLaunchTemplateOverrides
    FleetLaunchTemplateOverrides (..),
    fleetLaunchTemplateOverrides,
    fltoInstanceType,
    fltoPlacement,
    fltoPriority,
    fltoAvailabilityZone,
    fltoMaxPrice,
    fltoSubnetId,
    fltoWeightedCapacity,

    -- * FleetLaunchTemplateOverridesRequest
    FleetLaunchTemplateOverridesRequest (..),
    fleetLaunchTemplateOverridesRequest,
    fltorInstanceType,
    fltorPlacement,
    fltorPriority,
    fltorAvailabilityZone,
    fltorMaxPrice,
    fltorSubnetId,
    fltorWeightedCapacity,

    -- * FleetLaunchTemplateSpecification
    FleetLaunchTemplateSpecification (..),
    fleetLaunchTemplateSpecification,
    fltsLaunchTemplateId,
    fltsLaunchTemplateName,
    fltsVersion,

    -- * FleetLaunchTemplateSpecificationRequest
    FleetLaunchTemplateSpecificationRequest (..),
    fleetLaunchTemplateSpecificationRequest,
    fltsrLaunchTemplateId,
    fltsrLaunchTemplateName,
    fltsrVersion,

    -- * FleetSpotCapacityRebalance
    FleetSpotCapacityRebalance (..),
    fleetSpotCapacityRebalance,
    fscrReplacementStrategy,

    -- * FleetSpotCapacityRebalanceRequest
    FleetSpotCapacityRebalanceRequest (..),
    fleetSpotCapacityRebalanceRequest,
    fscrrReplacementStrategy,

    -- * FleetSpotMaintenanceStrategies
    FleetSpotMaintenanceStrategies (..),
    fleetSpotMaintenanceStrategies,
    fsmsCapacityRebalance,

    -- * FleetSpotMaintenanceStrategiesRequest
    FleetSpotMaintenanceStrategiesRequest (..),
    fleetSpotMaintenanceStrategiesRequest,
    fsmsrCapacityRebalance,

    -- * FlowLog
    FlowLog (..),
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

    -- * FpgaDeviceInfo
    FpgaDeviceInfo (..),
    fpgaDeviceInfo,
    fdiMemoryInfo,
    fdiManufacturer,
    fdiName,
    fdiCount,

    -- * FpgaDeviceMemoryInfo
    FpgaDeviceMemoryInfo (..),
    fpgaDeviceMemoryInfo,
    fdmiSizeInMiB,

    -- * FpgaImage
    FpgaImage (..),
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

    -- * FpgaImageAttribute
    FpgaImageAttribute (..),
    fpgaImageAttribute,
    fiaProductCodes,
    fiaName,
    fiaLoadPermissions,
    fiaDescription,
    fiaFpgaImageId,

    -- * FpgaImageState
    FpgaImageState (..),
    fpgaImageState,
    fisMessage,
    fisCode,

    -- * FpgaInfo
    FpgaInfo (..),
    fpgaInfo,
    fiTotalFpgaMemoryInMiB,
    fiFpgas,

    -- * GpuDeviceInfo
    GpuDeviceInfo (..),
    gpuDeviceInfo,
    gdiMemoryInfo,
    gdiManufacturer,
    gdiName,
    gdiCount,

    -- * GpuDeviceMemoryInfo
    GpuDeviceMemoryInfo (..),
    gpuDeviceMemoryInfo,
    gdmiSizeInMiB,

    -- * GpuInfo
    GpuInfo (..),
    gpuInfo,
    giGpus,
    giTotalGpuMemoryInMiB,

    -- * GroupIdentifier
    GroupIdentifier (..),
    groupIdentifier,
    giGroupName,
    giGroupId,

    -- * HibernationOptions
    HibernationOptions (..),
    hibernationOptions,
    hoConfigured,

    -- * HibernationOptionsRequest
    HibernationOptionsRequest (..),
    hibernationOptionsRequest,
    horConfigured,

    -- * HistoryRecord
    HistoryRecord (..),
    historyRecord,
    hrEventType,
    hrTimestamp,
    hrEventInformation,

    -- * HistoryRecordEntry
    HistoryRecordEntry (..),
    historyRecordEntry,
    hreEventType,
    hreTimestamp,
    hreEventInformation,

    -- * Host
    Host (..),
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

    -- * HostInstance
    HostInstance (..),
    hostInstance,
    hiOwnerId,
    hiInstanceId,
    hiInstanceType,

    -- * HostOffering
    HostOffering (..),
    hostOffering,
    hoInstanceFamily,
    hoUpfrontPrice,
    hoPaymentOption,
    hoDuration,
    hoOfferingId,
    hoCurrencyCode,
    hoHourlyPrice,

    -- * HostProperties
    HostProperties (..),
    hostProperties,
    hpInstanceFamily,
    hpTotalVCPUs,
    hpInstanceType,
    hpCores,
    hpSockets,

    -- * HostReservation
    HostReservation (..),
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

    -- * IAMInstanceProfile
    IAMInstanceProfile (..),
    iamInstanceProfile,
    iapARN,
    iapId,

    -- * IAMInstanceProfileAssociation
    IAMInstanceProfileAssociation (..),
    iamInstanceProfileAssociation,
    iapaInstanceId,
    iapaIAMInstanceProfile,
    iapaState,
    iapaAssociationId,
    iapaTimestamp,

    -- * IAMInstanceProfileSpecification
    IAMInstanceProfileSpecification (..),
    iamInstanceProfileSpecification,
    iapsARN,
    iapsName,

    -- * ICMPTypeCode
    ICMPTypeCode (..),
    icmpTypeCode,
    itcCode,
    itcType,

    -- * IKEVersionsListValue
    IKEVersionsListValue (..),
    iKEVersionsListValue,
    ikevlvValue,

    -- * IKEVersionsRequestListValue
    IKEVersionsRequestListValue (..),
    iKEVersionsRequestListValue,
    ikevrlvValue,

    -- * IPPermission
    IPPermission (..),
    ipPermission,
    ipFromPort,
    ipPrefixListIds,
    ipIPRanges,
    ipIPv6Ranges,
    ipUserIdGroupPairs,
    ipToPort,
    ipIPProtocol,

    -- * IPRange
    IPRange (..),
    ipRange,
    irDescription,
    irCidrIP,

    -- * IPv6CidrAssociation
    IPv6CidrAssociation (..),
    ipv6CidrAssociation,
    icaIPv6Cidr,
    icaAssociatedResource,

    -- * IPv6CidrBlock
    IPv6CidrBlock (..),
    ipv6CidrBlock,
    icbIPv6CidrBlock,

    -- * IPv6Pool
    IPv6Pool (..),
    ipv6Pool,
    ipPoolId,
    ipPoolCidrBlocks,
    ipTags,
    ipDescription,

    -- * IPv6Range
    IPv6Range (..),
    ipv6Range,
    iprCidrIPv6,
    iprDescription,

    -- * IdFormat
    IdFormat (..),
    idFormat,
    ifUseLongIds,
    ifResource,
    ifDeadline,

    -- * Image
    Image (..),
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

    -- * ImageDiskContainer
    ImageDiskContainer (..),
    imageDiskContainer,
    idcFormat,
    idcUserBucket,
    idcDeviceName,
    idcSnapshotId,
    idcDescription,
    idcURL,

    -- * ImportImageLicenseConfigurationRequest
    ImportImageLicenseConfigurationRequest (..),
    importImageLicenseConfigurationRequest,
    iilcrLicenseConfigurationARN,

    -- * ImportImageLicenseConfigurationResponse
    ImportImageLicenseConfigurationResponse (..),
    importImageLicenseConfigurationResponse,
    iLicenseConfigurationARN,

    -- * ImportImageTask
    ImportImageTask (..),
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

    -- * ImportInstanceLaunchSpecification
    ImportInstanceLaunchSpecification (..),
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

    -- * ImportInstanceTaskDetails
    ImportInstanceTaskDetails (..),
    importInstanceTaskDetails,
    iitdPlatform,
    iitdInstanceId,
    iitdVolumes,
    iitdDescription,

    -- * ImportInstanceVolumeDetailItem
    ImportInstanceVolumeDetailItem (..),
    importInstanceVolumeDetailItem,
    iivdiStatusMessage,
    iivdiBytesConverted,
    iivdiStatus,
    iivdiVolume,
    iivdiImage,
    iivdiAvailabilityZone,
    iivdiDescription,

    -- * ImportSnapshotTask
    ImportSnapshotTask (..),
    importSnapshotTask,
    istSnapshotTaskDetail,
    istImportTaskId,
    istTags,
    istDescription,

    -- * ImportVolumeTaskDetails
    ImportVolumeTaskDetails (..),
    importVolumeTaskDetails,
    ivtdBytesConverted,
    ivtdVolume,
    ivtdImage,
    ivtdAvailabilityZone,
    ivtdDescription,

    -- * InferenceAcceleratorInfo
    InferenceAcceleratorInfo (..),
    inferenceAcceleratorInfo,
    iaiAccelerators,

    -- * InferenceDeviceInfo
    InferenceDeviceInfo (..),
    inferenceDeviceInfo,
    idiManufacturer,
    idiName,
    idiCount,

    -- * Instance
    Instance (..),
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

    -- * InstanceBlockDeviceMapping
    InstanceBlockDeviceMapping (..),
    instanceBlockDeviceMapping,
    ibdmEBS,
    ibdmDeviceName,

    -- * InstanceBlockDeviceMappingSpecification
    InstanceBlockDeviceMappingSpecification (..),
    instanceBlockDeviceMappingSpecification,
    ibdmsEBS,
    ibdmsNoDevice,
    ibdmsVirtualName,
    ibdmsDeviceName,

    -- * InstanceCapacity
    InstanceCapacity (..),
    instanceCapacity,
    icInstanceType,
    icAvailableCapacity,
    icTotalCapacity,

    -- * InstanceCount
    InstanceCount (..),
    instanceCount,
    icState,
    icInstanceCount,

    -- * InstanceCreditSpecification
    InstanceCreditSpecification (..),
    instanceCreditSpecification,
    icsInstanceId,
    icsCPUCredits,

    -- * InstanceCreditSpecificationRequest
    InstanceCreditSpecificationRequest (..),
    instanceCreditSpecificationRequest,
    icsrInstanceId,
    icsrCPUCredits,

    -- * InstanceExportDetails
    InstanceExportDetails (..),
    instanceExportDetails,
    iedInstanceId,
    iedTargetEnvironment,

    -- * InstanceFamilyCreditSpecification
    InstanceFamilyCreditSpecification (..),
    instanceFamilyCreditSpecification,
    ifcsInstanceFamily,
    ifcsCPUCredits,

    -- * InstanceIPv6Address
    InstanceIPv6Address (..),
    instanceIPv6Address,
    iiaIPv6Address,

    -- * InstanceIPv6AddressRequest
    InstanceIPv6AddressRequest (..),
    instanceIPv6AddressRequest,
    iiarIPv6Address,

    -- * InstanceMarketOptionsRequest
    InstanceMarketOptionsRequest (..),
    instanceMarketOptionsRequest,
    imorMarketType,
    imorSpotOptions,

    -- * InstanceMetadataOptionsRequest
    InstanceMetadataOptionsRequest (..),
    instanceMetadataOptionsRequest,
    iHTTPEndpoint,
    iHTTPPutResponseHopLimit,
    iHTTPTokens,

    -- * InstanceMetadataOptionsResponse
    InstanceMetadataOptionsResponse (..),
    instanceMetadataOptionsResponse,
    imorHTTPEndpoint,
    imorHTTPPutResponseHopLimit,
    imorState,
    imorHTTPTokens,

    -- * InstanceMonitoring
    InstanceMonitoring (..),
    instanceMonitoring,
    imInstanceId,
    imMonitoring,

    -- * InstanceNetworkInterface
    InstanceNetworkInterface (..),
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

    -- * InstanceNetworkInterfaceAssociation
    InstanceNetworkInterfaceAssociation (..),
    instanceNetworkInterfaceAssociation,
    iniaIPOwnerId,
    iniaCarrierIP,
    iniaPublicDNSName,
    iniaPublicIP,

    -- * InstanceNetworkInterfaceAttachment
    InstanceNetworkInterfaceAttachment (..),
    instanceNetworkInterfaceAttachment,
    iniaStatus,
    iniaAttachTime,
    iniaAttachmentId,
    iniaNetworkCardIndex,
    iniaDeleteOnTermination,
    iniaDeviceIndex,

    -- * InstanceNetworkInterfaceSpecification
    InstanceNetworkInterfaceSpecification (..),
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

    -- * InstancePrivateIPAddress
    InstancePrivateIPAddress (..),
    instancePrivateIPAddress,
    ipiaPrimary,
    ipiaAssociation,
    ipiaPrivateDNSName,
    ipiaPrivateIPAddress,

    -- * InstanceSpecification
    InstanceSpecification (..),
    instanceSpecification,
    isInstanceId,
    isExcludeBootVolume,

    -- * InstanceState
    InstanceState (..),
    instanceState,
    isName,
    isCode,

    -- * InstanceStateChange
    InstanceStateChange (..),
    instanceStateChange,
    iscInstanceId,
    iscCurrentState,
    iscPreviousState,

    -- * InstanceStatus
    InstanceStatus (..),
    instanceStatus,
    issInstanceId,
    issSystemStatus,
    issOutpostARN,
    issInstanceStatus,
    issEvents,
    issAvailabilityZone,
    issInstanceState,

    -- * InstanceStatusDetails
    InstanceStatusDetails (..),
    instanceStatusDetails,
    isdStatus,
    isdImpairedSince,
    isdName,

    -- * InstanceStatusEvent
    InstanceStatusEvent (..),
    instanceStatusEvent,
    iseNotBefore,
    iseInstanceEventId,
    iseCode,
    iseNotAfter,
    iseNotBeforeDeadline,
    iseDescription,

    -- * InstanceStatusSummary
    InstanceStatusSummary (..),
    instanceStatusSummary,
    issDetails,
    issStatus,

    -- * InstanceStorageInfo
    InstanceStorageInfo (..),
    instanceStorageInfo,
    isiNvmeSupport,
    isiTotalSizeInGB,
    isiDisks,

    -- * InstanceTagNotificationAttribute
    InstanceTagNotificationAttribute (..),
    instanceTagNotificationAttribute,
    itnaInstanceTagKeys,
    itnaIncludeAllTagsOfInstance,

    -- * InstanceTypeInfo
    InstanceTypeInfo (..),
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

    -- * InstanceTypeOffering
    InstanceTypeOffering (..),
    instanceTypeOffering,
    itoInstanceType,
    itoLocationType,
    itoLocation,

    -- * InstanceUsage
    InstanceUsage (..),
    instanceUsage,
    iuAccountId,
    iuUsedInstanceCount,

    -- * InternetGateway
    InternetGateway (..),
    internetGateway,
    igOwnerId,
    igTags,
    igAttachments,
    igInternetGatewayId,

    -- * InternetGatewayAttachment
    InternetGatewayAttachment (..),
    internetGatewayAttachment,
    igaState,
    igaVPCId,

    -- * KeyPairInfo
    KeyPairInfo (..),
    keyPairInfo,
    kpiKeyFingerprint,
    kpiKeyPairId,
    kpiTags,
    kpiKeyName,

    -- * LastError
    LastError (..),
    lastError,
    leMessage,
    leCode,

    -- * LaunchPermission
    LaunchPermission (..),
    launchPermission,
    lGroup,
    lUserId,

    -- * LaunchPermissionModifications
    LaunchPermissionModifications (..),
    launchPermissionModifications,
    lpmAdd,
    lpmRemove,

    -- * LaunchSpecification
    LaunchSpecification (..),
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

    -- * LaunchTemplate
    LaunchTemplate (..),
    launchTemplate,
    ltLaunchTemplateId,
    ltLaunchTemplateName,
    ltTags,
    ltCreateTime,
    ltCreatedBy,
    ltDefaultVersionNumber,
    ltLatestVersionNumber,

    -- * LaunchTemplateAndOverridesResponse
    LaunchTemplateAndOverridesResponse (..),
    launchTemplateAndOverridesResponse,
    ltaorLaunchTemplateSpecification,
    ltaorOverrides,

    -- * LaunchTemplateBlockDeviceMapping
    LaunchTemplateBlockDeviceMapping (..),
    launchTemplateBlockDeviceMapping,
    ltbdmEBS,
    ltbdmNoDevice,
    ltbdmVirtualName,
    ltbdmDeviceName,

    -- * LaunchTemplateBlockDeviceMappingRequest
    LaunchTemplateBlockDeviceMappingRequest (..),
    launchTemplateBlockDeviceMappingRequest,
    ltbdmrEBS,
    ltbdmrNoDevice,
    ltbdmrVirtualName,
    ltbdmrDeviceName,

    -- * LaunchTemplateCPUOptions
    LaunchTemplateCPUOptions (..),
    launchTemplateCPUOptions,
    ltcoThreadsPerCore,
    ltcoCoreCount,

    -- * LaunchTemplateCPUOptionsRequest
    LaunchTemplateCPUOptionsRequest (..),
    launchTemplateCPUOptionsRequest,
    ltcorThreadsPerCore,
    ltcorCoreCount,

    -- * LaunchTemplateCapacityReservationSpecificationRequest
    LaunchTemplateCapacityReservationSpecificationRequest (..),
    launchTemplateCapacityReservationSpecificationRequest,
    lCapacityReservationPreference,
    lCapacityReservationTarget,

    -- * LaunchTemplateCapacityReservationSpecificationResponse
    LaunchTemplateCapacityReservationSpecificationResponse (..),
    launchTemplateCapacityReservationSpecificationResponse,
    ltcrsrCapacityReservationPreference,
    ltcrsrCapacityReservationTarget,

    -- * LaunchTemplateConfig
    LaunchTemplateConfig (..),
    launchTemplateConfig,
    ltcLaunchTemplateSpecification,
    ltcOverrides,

    -- * LaunchTemplateEBSBlockDevice
    LaunchTemplateEBSBlockDevice (..),
    launchTemplateEBSBlockDevice,
    ltebdEncrypted,
    ltebdThroughput,
    ltebdKMSKeyId,
    ltebdDeleteOnTermination,
    ltebdSnapshotId,
    ltebdVolumeType,
    ltebdVolumeSize,
    ltebdIOPS,

    -- * LaunchTemplateEBSBlockDeviceRequest
    LaunchTemplateEBSBlockDeviceRequest (..),
    launchTemplateEBSBlockDeviceRequest,
    ltebdrEncrypted,
    ltebdrThroughput,
    ltebdrKMSKeyId,
    ltebdrDeleteOnTermination,
    ltebdrSnapshotId,
    ltebdrVolumeType,
    ltebdrVolumeSize,
    ltebdrIOPS,

    -- * LaunchTemplateElasticInferenceAccelerator
    LaunchTemplateElasticInferenceAccelerator (..),
    launchTemplateElasticInferenceAccelerator,
    lteiaCount,
    lteiaType,

    -- * LaunchTemplateElasticInferenceAcceleratorResponse
    LaunchTemplateElasticInferenceAcceleratorResponse (..),
    launchTemplateElasticInferenceAcceleratorResponse,
    lteiarCount,
    lteiarType,

    -- * LaunchTemplateEnclaveOptions
    LaunchTemplateEnclaveOptions (..),
    launchTemplateEnclaveOptions,
    lteoEnabled,

    -- * LaunchTemplateEnclaveOptionsRequest
    LaunchTemplateEnclaveOptionsRequest (..),
    launchTemplateEnclaveOptionsRequest,
    lteorEnabled,

    -- * LaunchTemplateHibernationOptions
    LaunchTemplateHibernationOptions (..),
    launchTemplateHibernationOptions,
    lthoConfigured,

    -- * LaunchTemplateHibernationOptionsRequest
    LaunchTemplateHibernationOptionsRequest (..),
    launchTemplateHibernationOptionsRequest,
    lthorConfigured,

    -- * LaunchTemplateIAMInstanceProfileSpecification
    LaunchTemplateIAMInstanceProfileSpecification (..),
    launchTemplateIAMInstanceProfileSpecification,
    ltiapsARN,
    ltiapsName,

    -- * LaunchTemplateIAMInstanceProfileSpecificationRequest
    LaunchTemplateIAMInstanceProfileSpecificationRequest (..),
    launchTemplateIAMInstanceProfileSpecificationRequest,
    ltiapsrARN,
    ltiapsrName,

    -- * LaunchTemplateInstanceMarketOptions
    LaunchTemplateInstanceMarketOptions (..),
    launchTemplateInstanceMarketOptions,
    ltimoMarketType,
    ltimoSpotOptions,

    -- * LaunchTemplateInstanceMarketOptionsRequest
    LaunchTemplateInstanceMarketOptionsRequest (..),
    launchTemplateInstanceMarketOptionsRequest,
    ltimorMarketType,
    ltimorSpotOptions,

    -- * LaunchTemplateInstanceMetadataOptions
    LaunchTemplateInstanceMetadataOptions (..),
    launchTemplateInstanceMetadataOptions,
    ltimoHTTPEndpoint,
    ltimoHTTPPutResponseHopLimit,
    ltimoState,
    ltimoHTTPTokens,

    -- * LaunchTemplateInstanceMetadataOptionsRequest
    LaunchTemplateInstanceMetadataOptionsRequest (..),
    launchTemplateInstanceMetadataOptionsRequest,
    ltimorHTTPEndpoint,
    ltimorHTTPPutResponseHopLimit,
    ltimorHTTPTokens,

    -- * LaunchTemplateInstanceNetworkInterfaceSpecification
    LaunchTemplateInstanceNetworkInterfaceSpecification (..),
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

    -- * LaunchTemplateInstanceNetworkInterfaceSpecificationRequest
    LaunchTemplateInstanceNetworkInterfaceSpecificationRequest (..),
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

    -- * LaunchTemplateLicenseConfiguration
    LaunchTemplateLicenseConfiguration (..),
    launchTemplateLicenseConfiguration,
    ltlcLicenseConfigurationARN,

    -- * LaunchTemplateLicenseConfigurationRequest
    LaunchTemplateLicenseConfigurationRequest (..),
    launchTemplateLicenseConfigurationRequest,
    ltlcrLicenseConfigurationARN,

    -- * LaunchTemplateOverrides
    LaunchTemplateOverrides (..),
    launchTemplateOverrides,
    ltoInstanceType,
    ltoSpotPrice,
    ltoPriority,
    ltoAvailabilityZone,
    ltoSubnetId,
    ltoWeightedCapacity,

    -- * LaunchTemplatePlacement
    LaunchTemplatePlacement (..),
    launchTemplatePlacement,
    ltpSpreadDomain,
    ltpGroupName,
    ltpTenancy,
    ltpAffinity,
    ltpAvailabilityZone,
    ltpPartitionNumber,
    ltpHostResourceGroupARN,
    ltpHostId,

    -- * LaunchTemplatePlacementRequest
    LaunchTemplatePlacementRequest (..),
    launchTemplatePlacementRequest,
    ltprSpreadDomain,
    ltprGroupName,
    ltprTenancy,
    ltprAffinity,
    ltprAvailabilityZone,
    ltprPartitionNumber,
    ltprHostResourceGroupARN,
    ltprHostId,

    -- * LaunchTemplateSpecification
    LaunchTemplateSpecification (..),
    launchTemplateSpecification,
    ltsLaunchTemplateId,
    ltsLaunchTemplateName,
    ltsVersion,

    -- * LaunchTemplateSpotMarketOptions
    LaunchTemplateSpotMarketOptions (..),
    launchTemplateSpotMarketOptions,
    ltsmoBlockDurationMinutes,
    ltsmoInstanceInterruptionBehavior,
    ltsmoValidUntil,
    ltsmoSpotInstanceType,
    ltsmoMaxPrice,

    -- * LaunchTemplateSpotMarketOptionsRequest
    LaunchTemplateSpotMarketOptionsRequest (..),
    launchTemplateSpotMarketOptionsRequest,
    ltsmorBlockDurationMinutes,
    ltsmorInstanceInterruptionBehavior,
    ltsmorValidUntil,
    ltsmorSpotInstanceType,
    ltsmorMaxPrice,

    -- * LaunchTemplateTagSpecification
    LaunchTemplateTagSpecification (..),
    launchTemplateTagSpecification,
    lttsResourceType,
    lttsTags,

    -- * LaunchTemplateTagSpecificationRequest
    LaunchTemplateTagSpecificationRequest (..),
    launchTemplateTagSpecificationRequest,
    lttsrResourceType,
    lttsrTags,

    -- * LaunchTemplateVersion
    LaunchTemplateVersion (..),
    launchTemplateVersion,
    ltvDefaultVersion,
    ltvLaunchTemplateId,
    ltvLaunchTemplateData,
    ltvLaunchTemplateName,
    ltvVersionDescription,
    ltvVersionNumber,
    ltvCreateTime,
    ltvCreatedBy,

    -- * LaunchTemplatesMonitoring
    LaunchTemplatesMonitoring (..),
    launchTemplatesMonitoring,
    ltmEnabled,

    -- * LaunchTemplatesMonitoringRequest
    LaunchTemplatesMonitoringRequest (..),
    launchTemplatesMonitoringRequest,
    ltmrEnabled,

    -- * LicenseConfiguration
    LicenseConfiguration (..),
    licenseConfiguration,
    lcLicenseConfigurationARN,

    -- * LicenseConfigurationRequest
    LicenseConfigurationRequest (..),
    licenseConfigurationRequest,
    lcrLicenseConfigurationARN,

    -- * LoadBalancersConfig
    LoadBalancersConfig (..),
    loadBalancersConfig,
    lbcClassicLoadBalancersConfig,
    lbcTargetGroupsConfig,

    -- * LoadPermission
    LoadPermission (..),
    loadPermission,
    lpGroup,
    lpUserId,

    -- * LoadPermissionModifications
    LoadPermissionModifications (..),
    loadPermissionModifications,
    lAdd,
    lRemove,

    -- * LoadPermissionRequest
    LoadPermissionRequest (..),
    loadPermissionRequest,
    lprGroup,
    lprUserId,

    -- * LocalGateway
    LocalGateway (..),
    localGateway,
    lgOwnerId,
    lgOutpostARN,
    lgLocalGatewayId,
    lgState,
    lgTags,

    -- * LocalGatewayRoute
    LocalGatewayRoute (..),
    localGatewayRoute,
    lgrOwnerId,
    lgrLocalGatewayVirtualInterfaceGroupId,
    lgrLocalGatewayRouteTableARN,
    lgrState,
    lgrLocalGatewayRouteTableId,
    lgrDestinationCidrBlock,
    lgrType,

    -- * LocalGatewayRouteTable
    LocalGatewayRouteTable (..),
    localGatewayRouteTable,
    lgrtOwnerId,
    lgrtOutpostARN,
    lgrtLocalGatewayId,
    lgrtLocalGatewayRouteTableARN,
    lgrtState,
    lgrtLocalGatewayRouteTableId,
    lgrtTags,

    -- * LocalGatewayRouteTableVPCAssociation
    LocalGatewayRouteTableVPCAssociation (..),
    localGatewayRouteTableVPCAssociation,
    lgrtvaOwnerId,
    lgrtvaLocalGatewayRouteTableVPCAssociationId,
    lgrtvaLocalGatewayId,
    lgrtvaLocalGatewayRouteTableARN,
    lgrtvaState,
    lgrtvaLocalGatewayRouteTableId,
    lgrtvaTags,
    lgrtvaVPCId,

    -- * LocalGatewayRouteTableVirtualInterfaceGroupAssociation
    LocalGatewayRouteTableVirtualInterfaceGroupAssociation (..),
    localGatewayRouteTableVirtualInterfaceGroupAssociation,
    lgrtvigaOwnerId,
    lgrtvigaLocalGatewayVirtualInterfaceGroupId,
    lgrtvigaLocalGatewayId,
    lgrtvigaLocalGatewayRouteTableVirtualInterfaceGroupAssociationId,
    lgrtvigaLocalGatewayRouteTableARN,
    lgrtvigaState,
    lgrtvigaLocalGatewayRouteTableId,
    lgrtvigaTags,

    -- * LocalGatewayVirtualInterface
    LocalGatewayVirtualInterface (..),
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

    -- * LocalGatewayVirtualInterfaceGroup
    LocalGatewayVirtualInterfaceGroup (..),
    localGatewayVirtualInterfaceGroup,
    lgvigLocalGatewayVirtualInterfaceIds,
    lgvigOwnerId,
    lgvigLocalGatewayVirtualInterfaceGroupId,
    lgvigLocalGatewayId,
    lgvigTags,

    -- * ManagedPrefixList
    ManagedPrefixList (..),
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

    -- * MemoryInfo
    MemoryInfo (..),
    memoryInfo,
    miSizeInMiB,

    -- * ModifyTransitGatewayOptions
    ModifyTransitGatewayOptions (..),
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

    -- * ModifyTransitGatewayVPCAttachmentRequestOptions
    ModifyTransitGatewayVPCAttachmentRequestOptions (..),
    modifyTransitGatewayVPCAttachmentRequestOptions,
    mtgvaroApplianceModeSupport,
    mtgvaroDNSSupport,
    mtgvaroIPv6Support,

    -- * ModifyVPNTunnelOptionsSpecification
    ModifyVPNTunnelOptionsSpecification (..),
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

    -- * Monitoring
    Monitoring (..),
    monitoring,
    mState,

    -- * MovingAddressStatus
    MovingAddressStatus (..),
    movingAddressStatus,
    masMoveStatus,
    masPublicIP,

    -- * NatGateway
    NatGateway (..),
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

    -- * NatGatewayAddress
    NatGatewayAddress (..),
    natGatewayAddress,
    ngaPrivateIP,
    ngaNetworkInterfaceId,
    ngaPublicIP,
    ngaAllocationId,

    -- * NetworkACL
    NetworkACL (..),
    networkACL,
    naOwnerId,
    naIsDefault,
    naTags,
    naVPCId,
    naNetworkACLId,
    naAssociations,
    naEntries,

    -- * NetworkACLAssociation
    NetworkACLAssociation (..),
    networkACLAssociation,
    naaNetworkACLAssociationId,
    naaSubnetId,
    naaNetworkACLId,

    -- * NetworkACLEntry
    NetworkACLEntry (..),
    networkACLEntry,
    naePortRange,
    naeRuleAction,
    naeEgress,
    naeICMPTypeCode,
    naeIPv6CidrBlock,
    naeProtocol,
    naeRuleNumber,
    naeCidrBlock,

    -- * NetworkCardInfo
    NetworkCardInfo (..),
    networkCardInfo,
    nciMaximumNetworkInterfaces,
    nciNetworkCardIndex,
    nciNetworkPerformance,

    -- * NetworkInfo
    NetworkInfo (..),
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

    -- * NetworkInsightsAnalysis
    NetworkInsightsAnalysis (..),
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

    -- * NetworkInsightsPath
    NetworkInsightsPath (..),
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

    -- * NetworkInterface
    NetworkInterface (..),
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

    -- * NetworkInterfaceAssociation
    NetworkInterfaceAssociation (..),
    networkInterfaceAssociation,
    niaIPOwnerId,
    niaCarrierIP,
    niaCustomerOwnedIP,
    niaPublicDNSName,
    niaAssociationId,
    niaPublicIP,
    niaAllocationId,

    -- * NetworkInterfaceAttachment
    NetworkInterfaceAttachment (..),
    networkInterfaceAttachment,
    niaStatus,
    niaInstanceId,
    niaAttachTime,
    niaAttachmentId,
    niaNetworkCardIndex,
    niaDeleteOnTermination,
    niaDeviceIndex,
    niaInstanceOwnerId,

    -- * NetworkInterfaceAttachmentChanges
    NetworkInterfaceAttachmentChanges (..),
    networkInterfaceAttachmentChanges,
    niacAttachmentId,
    niacDeleteOnTermination,

    -- * NetworkInterfaceIPv6Address
    NetworkInterfaceIPv6Address (..),
    networkInterfaceIPv6Address,
    niiaIPv6Address,

    -- * NetworkInterfacePermission
    NetworkInterfacePermission (..),
    networkInterfacePermission,
    nipAWSAccountId,
    nipPermissionState,
    nipNetworkInterfaceId,
    nipPermission,
    nipAWSService,
    nipNetworkInterfacePermissionId,

    -- * NetworkInterfacePermissionState
    NetworkInterfacePermissionState (..),
    networkInterfacePermissionState,
    nipsStatusMessage,
    nipsState,

    -- * NetworkInterfacePrivateIPAddress
    NetworkInterfacePrivateIPAddress (..),
    networkInterfacePrivateIPAddress,
    nipiaPrimary,
    nipiaAssociation,
    nipiaPrivateDNSName,
    nipiaPrivateIPAddress,

    -- * NewDHCPConfiguration
    NewDHCPConfiguration (..),
    newDHCPConfiguration,
    ndcKey,
    ndcValues,

    -- * OnDemandOptions
    OnDemandOptions (..),
    onDemandOptions,
    odoMinTargetCapacity,
    odoCapacityReservationOptions,
    odoSingleInstanceType,
    odoAllocationStrategy,
    odoMaxTotalPrice,
    odoSingleAvailabilityZone,

    -- * OnDemandOptionsRequest
    OnDemandOptionsRequest (..),
    onDemandOptionsRequest,
    odorMinTargetCapacity,
    odorCapacityReservationOptions,
    odorSingleInstanceType,
    odorAllocationStrategy,
    odorMaxTotalPrice,
    odorSingleAvailabilityZone,

    -- * PathComponent
    PathComponent (..),
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

    -- * PciId
    PciId (..),
    pciId,
    piSubsystemId,
    piSubsystemVendorId,
    piDeviceId,
    piVendorId,

    -- * PeeringAttachmentStatus
    PeeringAttachmentStatus (..),
    peeringAttachmentStatus,
    pasMessage,
    pasCode,

    -- * PeeringConnectionOptions
    PeeringConnectionOptions (..),
    peeringConnectionOptions,
    pcoAllowDNSResolutionFromRemoteVPC,
    pcoAllowEgressFromLocalVPCToRemoteClassicLink,
    pcoAllowEgressFromLocalClassicLinkToRemoteVPC,

    -- * PeeringConnectionOptionsRequest
    PeeringConnectionOptionsRequest (..),
    peeringConnectionOptionsRequest,
    pcorAllowDNSResolutionFromRemoteVPC,
    pcorAllowEgressFromLocalVPCToRemoteClassicLink,
    pcorAllowEgressFromLocalClassicLinkToRemoteVPC,

    -- * PeeringTgwInfo
    PeeringTgwInfo (..),
    peeringTgwInfo,
    ptiOwnerId,
    ptiRegion,
    ptiTransitGatewayId,

    -- * Phase1DHGroupNumbersListValue
    Phase1DHGroupNumbersListValue (..),
    phase1DHGroupNumbersListValue,
    phaValue,

    -- * Phase1DHGroupNumbersRequestListValue
    Phase1DHGroupNumbersRequestListValue (..),
    phase1DHGroupNumbersRequestListValue,
    pdhgnrlvdValue,

    -- * Phase1EncryptionAlgorithmsListValue
    Phase1EncryptionAlgorithmsListValue (..),
    phase1EncryptionAlgorithmsListValue,
    pealveValue,

    -- * Phase1EncryptionAlgorithmsRequestListValue
    Phase1EncryptionAlgorithmsRequestListValue (..),
    phase1EncryptionAlgorithmsRequestListValue,
    pearlvValue,

    -- * Phase1IntegrityAlgorithmsListValue
    Phase1IntegrityAlgorithmsListValue (..),
    phase1IntegrityAlgorithmsListValue,
    pialvValue,

    -- * Phase1IntegrityAlgorithmsRequestListValue
    Phase1IntegrityAlgorithmsRequestListValue (..),
    phase1IntegrityAlgorithmsRequestListValue,
    piarlviValue,

    -- * Phase2DHGroupNumbersListValue
    Phase2DHGroupNumbersListValue (..),
    phase2DHGroupNumbersListValue,
    pdhgnlvValue,

    -- * Phase2DHGroupNumbersRequestListValue
    Phase2DHGroupNumbersRequestListValue (..),
    phase2DHGroupNumbersRequestListValue,
    pdhgnrlvValue,

    -- * Phase2EncryptionAlgorithmsListValue
    Phase2EncryptionAlgorithmsListValue (..),
    phase2EncryptionAlgorithmsListValue,
    pealvValue,

    -- * Phase2EncryptionAlgorithmsRequestListValue
    Phase2EncryptionAlgorithmsRequestListValue (..),
    phase2EncryptionAlgorithmsRequestListValue,
    pearlveValue,

    -- * Phase2IntegrityAlgorithmsListValue
    Phase2IntegrityAlgorithmsListValue (..),
    phase2IntegrityAlgorithmsListValue,
    pValue,

    -- * Phase2IntegrityAlgorithmsRequestListValue
    Phase2IntegrityAlgorithmsRequestListValue (..),
    phase2IntegrityAlgorithmsRequestListValue,
    piarlvValue,

    -- * Placement
    Placement (..),
    placement,
    pSpreadDomain,
    pGroupName,
    pTenancy,
    pAffinity,
    pAvailabilityZone,
    pPartitionNumber,
    pHostResourceGroupARN,
    pHostId,

    -- * PlacementGroup
    PlacementGroup (..),
    placementGroup,
    pgStrategy,
    pgGroupName,
    pgGroupId,
    pgState,
    pgTags,
    pgPartitionCount,

    -- * PlacementGroupInfo
    PlacementGroupInfo (..),
    placementGroupInfo,
    pgiSupportedStrategies,

    -- * PlacementResponse
    PlacementResponse (..),
    placementResponse,
    prGroupName,

    -- * PoolCidrBlock
    PoolCidrBlock (..),
    poolCidrBlock,
    pcbCidr,

    -- * PortRange
    PortRange (..),
    portRange,
    prTo,
    prFrom,

    -- * PrefixList
    PrefixList (..),
    prefixList,
    plPrefixListName,
    plCidrs,
    plPrefixListId,

    -- * PrefixListAssociation
    PrefixListAssociation (..),
    prefixListAssociation,
    plaResourceId,
    plaResourceOwner,

    -- * PrefixListEntry
    PrefixListEntry (..),
    prefixListEntry,
    pleCidr,
    pleDescription,

    -- * PrefixListId
    PrefixListId (..),
    prefixListId,
    pliPrefixListId,
    pliDescription,

    -- * PriceSchedule
    PriceSchedule (..),
    priceSchedule,
    psCurrencyCode,
    psActive,
    psTerm,
    psPrice,

    -- * PriceScheduleSpecification
    PriceScheduleSpecification (..),
    priceScheduleSpecification,
    pssCurrencyCode,
    pssTerm,
    pssPrice,

    -- * PricingDetail
    PricingDetail (..),
    pricingDetail,
    pdCount,
    pdPrice,

    -- * PrincipalIdFormat
    PrincipalIdFormat (..),
    principalIdFormat,
    pifARN,
    pifStatuses,

    -- * PrivateDNSDetails
    PrivateDNSDetails (..),
    privateDNSDetails,
    pddPrivateDNSName,

    -- * PrivateDNSNameConfiguration
    PrivateDNSNameConfiguration (..),
    privateDNSNameConfiguration,
    pdncState,
    pdncName,
    pdncValue,
    pdncType,

    -- * PrivateIPAddressSpecification
    PrivateIPAddressSpecification (..),
    privateIPAddressSpecification,
    piasPrimary,
    piasPrivateIPAddress,

    -- * ProcessorInfo
    ProcessorInfo (..),
    processorInfo,
    piSustainedClockSpeedInGhz,
    piSupportedArchitectures,

    -- * ProductCode
    ProductCode (..),
    productCode,
    pcProductCodeType,
    pcProductCodeId,

    -- * PropagatingVGW
    PropagatingVGW (..),
    propagatingVGW,
    pvGatewayId,

    -- * ProvisionedBandwidth
    ProvisionedBandwidth (..),
    provisionedBandwidth,
    pbProvisionTime,
    pbStatus,
    pbRequestTime,
    pbRequested,
    pbProvisioned,

    -- * PtrUpdateStatus
    PtrUpdateStatus (..),
    ptrUpdateStatus,
    pusStatus,
    pusReason,
    pusValue,

    -- * PublicIPv4Pool
    PublicIPv4Pool (..),
    publicIPv4Pool,
    pipPoolId,
    pipPoolAddressRanges,
    pipTotalAddressCount,
    pipTags,
    pipTotalAvailableAddressCount,
    pipDescription,
    pipNetworkBorderGroup,

    -- * PublicIPv4PoolRange
    PublicIPv4PoolRange (..),
    publicIPv4PoolRange,
    piprAddressCount,
    piprFirstAddress,
    piprLastAddress,
    piprAvailableAddressCount,

    -- * Purchase
    Purchase (..),
    purchase,
    pInstanceFamily,
    pHostIdSet,
    pUpfrontPrice,
    pPaymentOption,
    pDuration,
    pHostReservationId,
    pCurrencyCode,
    pHourlyPrice,

    -- * PurchaseRequest
    PurchaseRequest (..),
    purchaseRequest,
    prInstanceCount,
    prPurchaseToken,

    -- * RecurringCharge
    RecurringCharge (..),
    recurringCharge,
    rcAmount,
    rcFrequency,

    -- * RegionInfo
    RegionInfo (..),
    regionInfo,
    riRegionName,
    riOptInStatus,
    riEndpoint,

    -- * RegisterInstanceTagAttributeRequest
    RegisterInstanceTagAttributeRequest (..),
    registerInstanceTagAttributeRequest,
    ritarInstanceTagKeys,
    ritarIncludeAllTagsOfInstance,

    -- * RemovePrefixListEntry
    RemovePrefixListEntry (..),
    removePrefixListEntry,
    rpleCidr,

    -- * RequestLaunchTemplateData
    RequestLaunchTemplateData (..),
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

    -- * RequestSpotLaunchSpecification
    RequestSpotLaunchSpecification (..),
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

    -- * Reservation
    Reservation (..),
    reservation,
    rGroups,
    rRequesterId,
    rInstances,
    rReservationId,
    rOwnerId,

    -- * ReservationValue
    ReservationValue (..),
    reservationValue,
    rvRemainingUpfrontValue,
    rvHourlyPrice,
    rvRemainingTotalValue,

    -- * ReservedInstanceLimitPrice
    ReservedInstanceLimitPrice (..),
    reservedInstanceLimitPrice,
    rilpAmount,
    rilpCurrencyCode,

    -- * ReservedInstanceReservationValue
    ReservedInstanceReservationValue (..),
    reservedInstanceReservationValue,
    rirvReservationValue,
    rirvReservedInstanceId,

    -- * ReservedInstances
    ReservedInstances (..),
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

    -- * ReservedInstancesConfiguration
    ReservedInstancesConfiguration (..),
    reservedInstancesConfiguration,
    ricPlatform,
    ricInstanceType,
    ricScope,
    ricAvailabilityZone,
    ricInstanceCount,

    -- * ReservedInstancesId
    ReservedInstancesId (..),
    reservedInstancesId,
    riiReservedInstancesId,

    -- * ReservedInstancesListing
    ReservedInstancesListing (..),
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

    -- * ReservedInstancesModification
    ReservedInstancesModification (..),
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

    -- * ReservedInstancesModificationResult
    ReservedInstancesModificationResult (..),
    reservedInstancesModificationResult,
    rimrTargetConfiguration,
    rimrReservedInstancesId,

    -- * ReservedInstancesOffering
    ReservedInstancesOffering (..),
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

    -- * ResponseError
    ResponseError (..),
    responseError,
    reMessage,
    reCode,

    -- * ResponseLaunchTemplateData
    ResponseLaunchTemplateData (..),
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

    -- * Route
    Route (..),
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

    -- * RouteTable
    RouteTable (..),
    routeTable,
    rtOwnerId,
    rtRouteTableId,
    rtRoutes,
    rtTags,
    rtPropagatingVGWs,
    rtVPCId,
    rtAssociations,

    -- * RouteTableAssociation
    RouteTableAssociation (..),
    routeTableAssociation,
    rtaAssociationState,
    rtaMain,
    rtaRouteTableId,
    rtaSubnetId,
    rtaRouteTableAssociationId,
    rtaGatewayId,

    -- * RouteTableAssociationState
    RouteTableAssociationState (..),
    routeTableAssociationState,
    rtasStatusMessage,
    rtasState,

    -- * RunInstancesMonitoringEnabled
    RunInstancesMonitoringEnabled (..),
    runInstancesMonitoringEnabled,
    rimeEnabled,

    -- * S3Storage
    S3Storage (..),
    s3Storage,
    ssUploadPolicySignature,
    ssUploadPolicy,
    ssPrefix,
    ssBucket,
    ssAWSAccessKeyId,

    -- * ScheduledInstance
    ScheduledInstance (..),
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

    -- * ScheduledInstanceAvailability
    ScheduledInstanceAvailability (..),
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

    -- * ScheduledInstanceRecurrence
    ScheduledInstanceRecurrence (..),
    scheduledInstanceRecurrence,
    sirOccurrenceUnit,
    sirInterval,
    sirOccurrenceRelativeToEnd,
    sirFrequency,
    sirOccurrenceDaySet,

    -- * ScheduledInstanceRecurrenceRequest
    ScheduledInstanceRecurrenceRequest (..),
    scheduledInstanceRecurrenceRequest,
    sirrOccurrenceUnit,
    sirrOccurrenceDays,
    sirrInterval,
    sirrOccurrenceRelativeToEnd,
    sirrFrequency,

    -- * ScheduledInstancesBlockDeviceMapping
    ScheduledInstancesBlockDeviceMapping (..),
    scheduledInstancesBlockDeviceMapping,
    sibdmEBS,
    sibdmNoDevice,
    sibdmVirtualName,
    sibdmDeviceName,

    -- * ScheduledInstancesEBS
    ScheduledInstancesEBS (..),
    scheduledInstancesEBS,
    sieEncrypted,
    sieDeleteOnTermination,
    sieSnapshotId,
    sieVolumeType,
    sieVolumeSize,
    sieIOPS,

    -- * ScheduledInstancesIAMInstanceProfile
    ScheduledInstancesIAMInstanceProfile (..),
    scheduledInstancesIAMInstanceProfile,
    siiapARN,
    siiapName,

    -- * ScheduledInstancesIPv6Address
    ScheduledInstancesIPv6Address (..),
    scheduledInstancesIPv6Address,
    siiaIPv6Address,

    -- * ScheduledInstancesLaunchSpecification
    ScheduledInstancesLaunchSpecification (..),
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

    -- * ScheduledInstancesMonitoring
    ScheduledInstancesMonitoring (..),
    scheduledInstancesMonitoring,
    simEnabled,

    -- * ScheduledInstancesNetworkInterface
    ScheduledInstancesNetworkInterface (..),
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

    -- * ScheduledInstancesPlacement
    ScheduledInstancesPlacement (..),
    scheduledInstancesPlacement,
    sipGroupName,
    sipAvailabilityZone,

    -- * ScheduledInstancesPrivateIPAddressConfig
    ScheduledInstancesPrivateIPAddressConfig (..),
    scheduledInstancesPrivateIPAddressConfig,
    sipiacPrimary,
    sipiacPrivateIPAddress,

    -- * SecurityGroup
    SecurityGroup (..),
    securityGroup,
    sgIPPermissionsEgress,
    sgTags,
    sgIPPermissions,
    sgVPCId,
    sgOwnerId,
    sgGroupId,
    sgGroupName,
    sgDescription,

    -- * SecurityGroupIdentifier
    SecurityGroupIdentifier (..),
    securityGroupIdentifier,
    sgiGroupName,
    sgiGroupId,

    -- * SecurityGroupReference
    SecurityGroupReference (..),
    securityGroupReference,
    sgrVPCPeeringConnectionId,
    sgrGroupId,
    sgrReferencingVPCId,

    -- * ServiceConfiguration
    ServiceConfiguration (..),
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

    -- * ServiceDetail
    ServiceDetail (..),
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

    -- * ServiceTypeDetail
    ServiceTypeDetail (..),
    serviceTypeDetail,
    stdServiceType,

    -- * SlotDateTimeRangeRequest
    SlotDateTimeRangeRequest (..),
    slotDateTimeRangeRequest,
    sdtrrEarliestTime,
    sdtrrLatestTime,

    -- * SlotStartTimeRangeRequest
    SlotStartTimeRangeRequest (..),
    slotStartTimeRangeRequest,
    sstrrEarliestTime,
    sstrrLatestTime,

    -- * Snapshot
    Snapshot (..),
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

    -- * SnapshotDetail
    SnapshotDetail (..),
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

    -- * SnapshotDiskContainer
    SnapshotDiskContainer (..),
    snapshotDiskContainer,
    sdcFormat,
    sdcUserBucket,
    sdcDescription,
    sdcURL,

    -- * SnapshotInfo
    SnapshotInfo (..),
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

    -- * SnapshotTaskDetail
    SnapshotTaskDetail (..),
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

    -- * SpotCapacityRebalance
    SpotCapacityRebalance (..),
    spotCapacityRebalance,
    scrReplacementStrategy,

    -- * SpotDatafeedSubscription
    SpotDatafeedSubscription (..),
    spotDatafeedSubscription,
    sdsOwnerId,
    sdsPrefix,
    sdsFault,
    sdsState,
    sdsBucket,

    -- * SpotFleetLaunchSpecification
    SpotFleetLaunchSpecification (..),
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

    -- * SpotFleetMonitoring
    SpotFleetMonitoring (..),
    spotFleetMonitoring,
    sfmEnabled,

    -- * SpotFleetRequestConfig
    SpotFleetRequestConfig (..),
    spotFleetRequestConfig,
    sfrcSpotFleetRequestState,
    sfrcActivityStatus,
    sfrcTags,
    sfrcCreateTime,
    sfrcSpotFleetRequestConfig,
    sfrcSpotFleetRequestId,

    -- * SpotFleetRequestConfigData
    SpotFleetRequestConfigData (..),
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

    -- * SpotFleetTagSpecification
    SpotFleetTagSpecification (..),
    spotFleetTagSpecification,
    sftsResourceType,
    sftsTags,

    -- * SpotInstanceRequest
    SpotInstanceRequest (..),
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

    -- * SpotInstanceStateFault
    SpotInstanceStateFault (..),
    spotInstanceStateFault,
    sisfMessage,
    sisfCode,

    -- * SpotInstanceStatus
    SpotInstanceStatus (..),
    spotInstanceStatus,
    sisMessage,
    sisCode,
    sisUpdateTime,

    -- * SpotMaintenanceStrategies
    SpotMaintenanceStrategies (..),
    spotMaintenanceStrategies,
    smsCapacityRebalance,

    -- * SpotMarketOptions
    SpotMarketOptions (..),
    spotMarketOptions,
    smoBlockDurationMinutes,
    smoInstanceInterruptionBehavior,
    smoValidUntil,
    smoSpotInstanceType,
    smoMaxPrice,

    -- * SpotOptions
    SpotOptions (..),
    spotOptions,
    soMinTargetCapacity,
    soMaintenanceStrategies,
    soInstanceInterruptionBehavior,
    soSingleInstanceType,
    soAllocationStrategy,
    soMaxTotalPrice,
    soInstancePoolsToUseCount,
    soSingleAvailabilityZone,

    -- * SpotOptionsRequest
    SpotOptionsRequest (..),
    spotOptionsRequest,
    sorMinTargetCapacity,
    sorMaintenanceStrategies,
    sorInstanceInterruptionBehavior,
    sorSingleInstanceType,
    sorAllocationStrategy,
    sorMaxTotalPrice,
    sorInstancePoolsToUseCount,
    sorSingleAvailabilityZone,

    -- * SpotPlacement
    SpotPlacement (..),
    spotPlacement,
    spGroupName,
    spTenancy,
    spAvailabilityZone,

    -- * SpotPrice
    SpotPrice (..),
    spotPrice,
    spoInstanceType,
    spoSpotPrice,
    spoAvailabilityZone,
    spoTimestamp,
    spoProductDescription,

    -- * StaleIPPermission
    StaleIPPermission (..),
    staleIPPermission,
    sipFromPort,
    sipPrefixListIds,
    sipIPRanges,
    sipUserIdGroupPairs,
    sipIPProtocol,
    sipToPort,

    -- * StaleSecurityGroup
    StaleSecurityGroup (..),
    staleSecurityGroup,
    ssgStaleIPPermissions,
    ssgGroupName,
    ssgGroupId,
    ssgDescription,
    ssgStaleIPPermissionsEgress,
    ssgVPCId,

    -- * StateReason
    StateReason (..),
    stateReason,
    srMessage,
    srCode,

    -- * Storage
    Storage (..),
    storage,
    sS3,

    -- * StorageLocation
    StorageLocation (..),
    storageLocation,
    slKey,
    slBucket,

    -- * Subnet
    Subnet (..),
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

    -- * SubnetAssociation
    SubnetAssociation (..),
    subnetAssociation,
    saState,
    saSubnetId,

    -- * SubnetCidrBlockState
    SubnetCidrBlockState (..),
    subnetCidrBlockState,
    scbsStatusMessage,
    scbsState,

    -- * SubnetIPv6CidrBlockAssociation
    SubnetIPv6CidrBlockAssociation (..),
    subnetIPv6CidrBlockAssociation,
    sicbaIPv6CidrBlockState,
    sicbaAssociationId,
    sicbaIPv6CidrBlock,

    -- * SuccessfulInstanceCreditSpecificationItem
    SuccessfulInstanceCreditSpecificationItem (..),
    successfulInstanceCreditSpecificationItem,
    sicsiInstanceId,

    -- * SuccessfulQueuedPurchaseDeletion
    SuccessfulQueuedPurchaseDeletion (..),
    successfulQueuedPurchaseDeletion,
    sqpdReservedInstancesId,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * TagDescription
    TagDescription (..),
    tagDescription,
    tdResourceId,
    tdResourceType,
    tdKey,
    tdValue,

    -- * TagSpecification
    TagSpecification (..),
    tagSpecification,
    tsResourceType,
    tsTags,

    -- * TargetCapacitySpecification
    TargetCapacitySpecification (..),
    targetCapacitySpecification,
    tcsTotalTargetCapacity,
    tcsDefaultTargetCapacityType,
    tcsOnDemandTargetCapacity,
    tcsSpotTargetCapacity,

    -- * TargetCapacitySpecificationRequest
    TargetCapacitySpecificationRequest (..),
    targetCapacitySpecificationRequest,
    tcsrDefaultTargetCapacityType,
    tcsrOnDemandTargetCapacity,
    tcsrSpotTargetCapacity,
    tcsrTotalTargetCapacity,

    -- * TargetConfiguration
    TargetConfiguration (..),
    targetConfiguration,
    tcOfferingId,
    tcInstanceCount,

    -- * TargetConfigurationRequest
    TargetConfigurationRequest (..),
    targetConfigurationRequest,
    tcrInstanceCount,
    tcrOfferingId,

    -- * TargetGroup
    TargetGroup (..),
    targetGroup,
    tgARN,

    -- * TargetGroupsConfig
    TargetGroupsConfig (..),
    targetGroupsConfig,
    tgcTargetGroups,

    -- * TargetNetwork
    TargetNetwork (..),
    targetNetwork,
    tnClientVPNEndpointId,
    tnStatus,
    tnSecurityGroups,
    tnAssociationId,
    tnVPCId,
    tnTargetNetworkId,

    -- * TargetReservationValue
    TargetReservationValue (..),
    targetReservationValue,
    trvTargetConfiguration,
    trvReservationValue,

    -- * TerminateConnectionStatus
    TerminateConnectionStatus (..),
    terminateConnectionStatus,
    tcsConnectionId,
    tcsPreviousStatus,
    tcsCurrentStatus,

    -- * TrafficMirrorFilter
    TrafficMirrorFilter (..),
    trafficMirrorFilter,
    tmfEgressFilterRules,
    tmfNetworkServices,
    tmfTags,
    tmfTrafficMirrorFilterId,
    tmfDescription,
    tmfIngressFilterRules,

    -- * TrafficMirrorFilterRule
    TrafficMirrorFilterRule (..),
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

    -- * TrafficMirrorPortRange
    TrafficMirrorPortRange (..),
    trafficMirrorPortRange,
    tmprFromPort,
    tmprToPort,

    -- * TrafficMirrorPortRangeRequest
    TrafficMirrorPortRangeRequest (..),
    trafficMirrorPortRangeRequest,
    tmprrFromPort,
    tmprrToPort,

    -- * TrafficMirrorSession
    TrafficMirrorSession (..),
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

    -- * TrafficMirrorTarget
    TrafficMirrorTarget (..),
    trafficMirrorTarget,
    tmtOwnerId,
    tmtNetworkLoadBalancerARN,
    tmtTags,
    tmtNetworkInterfaceId,
    tmtDescription,
    tmtType,
    tmtTrafficMirrorTargetId,

    -- * TransitGateway
    TransitGateway (..),
    transitGateway,
    tgOwnerId,
    tgCreationTime,
    tgOptions,
    tgTransitGatewayARN,
    tgState,
    tgTags,
    tgDescription,
    tgTransitGatewayId,

    -- * TransitGatewayAssociation
    TransitGatewayAssociation (..),
    transitGatewayAssociation,
    tgaResourceId,
    tgaResourceType,
    tgaState,
    tgaTransitGatewayAttachmentId,
    tgaTransitGatewayRouteTableId,

    -- * TransitGatewayAttachment
    TransitGatewayAttachment (..),
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

    -- * TransitGatewayAttachmentAssociation
    TransitGatewayAttachmentAssociation (..),
    transitGatewayAttachmentAssociation,
    tgaaState,
    tgaaTransitGatewayRouteTableId,

    -- * TransitGatewayAttachmentBGPConfiguration
    TransitGatewayAttachmentBGPConfiguration (..),
    transitGatewayAttachmentBGPConfiguration,
    tgabcPeerAddress,
    tgabcPeerASN,
    tgabcBGPStatus,
    tgabcTransitGatewayAddress,
    tgabcTransitGatewayASN,

    -- * TransitGatewayAttachmentPropagation
    TransitGatewayAttachmentPropagation (..),
    transitGatewayAttachmentPropagation,
    tgapState,
    tgapTransitGatewayRouteTableId,

    -- * TransitGatewayConnect
    TransitGatewayConnect (..),
    transitGatewayConnect,
    tgcCreationTime,
    tgcOptions,
    tgcState,
    tgcTags,
    tgcTransitGatewayAttachmentId,
    tgcTransportTransitGatewayAttachmentId,
    tgcTransitGatewayId,

    -- * TransitGatewayConnectOptions
    TransitGatewayConnectOptions (..),
    transitGatewayConnectOptions,
    tgcoProtocol,

    -- * TransitGatewayConnectPeer
    TransitGatewayConnectPeer (..),
    transitGatewayConnectPeer,
    tgcpConnectPeerConfiguration,
    tgcpCreationTime,
    tgcpTransitGatewayConnectPeerId,
    tgcpState,
    tgcpTags,
    tgcpTransitGatewayAttachmentId,

    -- * TransitGatewayConnectPeerConfiguration
    TransitGatewayConnectPeerConfiguration (..),
    transitGatewayConnectPeerConfiguration,
    tgcpcPeerAddress,
    tgcpcTransitGatewayAddress,
    tgcpcBGPConfigurations,
    tgcpcProtocol,
    tgcpcInsideCidrBlocks,

    -- * TransitGatewayConnectRequestBGPOptions
    TransitGatewayConnectRequestBGPOptions (..),
    transitGatewayConnectRequestBGPOptions,
    tgcrboPeerASN,

    -- * TransitGatewayMulticastDeregisteredGroupMembers
    TransitGatewayMulticastDeregisteredGroupMembers (..),
    transitGatewayMulticastDeregisteredGroupMembers,
    tgmdgmTransitGatewayMulticastDomainId,
    tgmdgmDeregisteredNetworkInterfaceIds,
    tgmdgmGroupIPAddress,

    -- * TransitGatewayMulticastDeregisteredGroupSources
    TransitGatewayMulticastDeregisteredGroupSources (..),
    transitGatewayMulticastDeregisteredGroupSources,
    tgmdgsTransitGatewayMulticastDomainId,
    tgmdgsDeregisteredNetworkInterfaceIds,
    tgmdgsGroupIPAddress,

    -- * TransitGatewayMulticastDomain
    TransitGatewayMulticastDomain (..),
    transitGatewayMulticastDomain,
    tgmdOwnerId,
    tgmdCreationTime,
    tgmdTransitGatewayMulticastDomainId,
    tgmdOptions,
    tgmdState,
    tgmdTags,
    tgmdTransitGatewayMulticastDomainARN,
    tgmdTransitGatewayId,

    -- * TransitGatewayMulticastDomainAssociation
    TransitGatewayMulticastDomainAssociation (..),
    transitGatewayMulticastDomainAssociation,
    tgmdaResourceId,
    tgmdaSubnet,
    tgmdaResourceType,
    tgmdaResourceOwnerId,
    tgmdaTransitGatewayAttachmentId,

    -- * TransitGatewayMulticastDomainAssociations
    TransitGatewayMulticastDomainAssociations (..),
    transitGatewayMulticastDomainAssociations,
    tgmdasResourceId,
    tgmdasTransitGatewayMulticastDomainId,
    tgmdasResourceType,
    tgmdasResourceOwnerId,
    tgmdasTransitGatewayAttachmentId,
    tgmdasSubnets,

    -- * TransitGatewayMulticastDomainOptions
    TransitGatewayMulticastDomainOptions (..),
    transitGatewayMulticastDomainOptions,
    tgmdoIgmpv2Support,
    tgmdoAutoAcceptSharedAssociations,
    tgmdoStaticSourcesSupport,

    -- * TransitGatewayMulticastGroup
    TransitGatewayMulticastGroup (..),
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

    -- * TransitGatewayMulticastRegisteredGroupMembers
    TransitGatewayMulticastRegisteredGroupMembers (..),
    transitGatewayMulticastRegisteredGroupMembers,
    tgmrgmTransitGatewayMulticastDomainId,
    tgmrgmGroupIPAddress,
    tgmrgmRegisteredNetworkInterfaceIds,

    -- * TransitGatewayMulticastRegisteredGroupSources
    TransitGatewayMulticastRegisteredGroupSources (..),
    transitGatewayMulticastRegisteredGroupSources,
    tgmrgsTransitGatewayMulticastDomainId,
    tgmrgsGroupIPAddress,
    tgmrgsRegisteredNetworkInterfaceIds,

    -- * TransitGatewayOptions
    TransitGatewayOptions (..),
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

    -- * TransitGatewayPeeringAttachment
    TransitGatewayPeeringAttachment (..),
    transitGatewayPeeringAttachment,
    tgpaStatus,
    tgpaCreationTime,
    tgpaRequesterTgwInfo,
    tgpaAccepterTgwInfo,
    tgpaState,
    tgpaTags,
    tgpaTransitGatewayAttachmentId,

    -- * TransitGatewayPrefixListAttachment
    TransitGatewayPrefixListAttachment (..),
    transitGatewayPrefixListAttachment,
    tgplaResourceId,
    tgplaResourceType,
    tgplaTransitGatewayAttachmentId,

    -- * TransitGatewayPrefixListReference
    TransitGatewayPrefixListReference (..),
    transitGatewayPrefixListReference,
    tgplrTransitGatewayAttachment,
    tgplrPrefixListOwnerId,
    tgplrPrefixListId,
    tgplrState,
    tgplrBlackhole,
    tgplrTransitGatewayRouteTableId,

    -- * TransitGatewayPropagation
    TransitGatewayPropagation (..),
    transitGatewayPropagation,
    tgpResourceId,
    tgpResourceType,
    tgpState,
    tgpTransitGatewayAttachmentId,
    tgpTransitGatewayRouteTableId,

    -- * TransitGatewayRequestOptions
    TransitGatewayRequestOptions (..),
    transitGatewayRequestOptions,
    tgroVPNEcmpSupport,
    tgroDNSSupport,
    tgroAutoAcceptSharedAttachments,
    tgroAmazonSideASN,
    tgroTransitGatewayCidrBlocks,
    tgroMulticastSupport,
    tgroDefaultRouteTableAssociation,
    tgroDefaultRouteTablePropagation,

    -- * TransitGatewayRoute
    TransitGatewayRoute (..),
    transitGatewayRoute,
    tgrPrefixListId,
    tgrState,
    tgrDestinationCidrBlock,
    tgrType,
    tgrTransitGatewayAttachments,

    -- * TransitGatewayRouteAttachment
    TransitGatewayRouteAttachment (..),
    transitGatewayRouteAttachment,
    tgraResourceId,
    tgraResourceType,
    tgraTransitGatewayAttachmentId,

    -- * TransitGatewayRouteTable
    TransitGatewayRouteTable (..),
    transitGatewayRouteTable,
    tgrtCreationTime,
    tgrtDefaultAssociationRouteTable,
    tgrtDefaultPropagationRouteTable,
    tgrtState,
    tgrtTags,
    tgrtTransitGatewayRouteTableId,
    tgrtTransitGatewayId,

    -- * TransitGatewayRouteTableAssociation
    TransitGatewayRouteTableAssociation (..),
    transitGatewayRouteTableAssociation,
    tgrtaResourceId,
    tgrtaResourceType,
    tgrtaState,
    tgrtaTransitGatewayAttachmentId,

    -- * TransitGatewayRouteTablePropagation
    TransitGatewayRouteTablePropagation (..),
    transitGatewayRouteTablePropagation,
    tgrtpResourceId,
    tgrtpResourceType,
    tgrtpState,
    tgrtpTransitGatewayAttachmentId,

    -- * TransitGatewayVPCAttachment
    TransitGatewayVPCAttachment (..),
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

    -- * TransitGatewayVPCAttachmentOptions
    TransitGatewayVPCAttachmentOptions (..),
    transitGatewayVPCAttachmentOptions,
    tgvaoApplianceModeSupport,
    tgvaoDNSSupport,
    tgvaoIPv6Support,

    -- * TunnelOption
    TunnelOption (..),
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

    -- * UnsuccessfulInstanceCreditSpecificationItem
    UnsuccessfulInstanceCreditSpecificationItem (..),
    unsuccessfulInstanceCreditSpecificationItem,
    uicsiInstanceId,
    uicsiError,

    -- * UnsuccessfulInstanceCreditSpecificationItemError
    UnsuccessfulInstanceCreditSpecificationItemError (..),
    unsuccessfulInstanceCreditSpecificationItemError,
    uicsieMessage,
    uicsieCode,

    -- * UnsuccessfulItem
    UnsuccessfulItem (..),
    unsuccessfulItem,
    uiResourceId,
    uiError,

    -- * UnsuccessfulItemError
    UnsuccessfulItemError (..),
    unsuccessfulItemError,
    uieMessage,
    uieCode,

    -- * UserBucket
    UserBucket (..),
    userBucket,
    ubS3Bucket,
    ubS3Key,

    -- * UserBucketDetails
    UserBucketDetails (..),
    userBucketDetails,
    ubdS3Bucket,
    ubdS3Key,

    -- * UserData
    UserData (..),
    userData,
    udData,

    -- * UserIdGroupPair
    UserIdGroupPair (..),
    userIdGroupPair,
    uigpVPCPeeringConnectionId,
    uigpGroupName,
    uigpGroupId,
    uigpUserId,
    uigpPeeringStatus,
    uigpDescription,
    uigpVPCId,

    -- * VCPUInfo
    VCPUInfo (..),
    vCPUInfo,
    vciDefaultCores,
    vciDefaultVCPUs,
    vciValidThreadsPerCore,
    vciValidCores,
    vciDefaultThreadsPerCore,

    -- * VGWTelemetry
    VGWTelemetry (..),
    vgwTelemetry,
    vtStatusMessage,
    vtStatus,
    vtAcceptedRouteCount,
    vtLastStatusChange,
    vtCertificateARN,
    vtOutsideIPAddress,

    -- * VPC
    VPC (..),
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

    -- * VPCAttachment
    VPCAttachment (..),
    vpcAttachment,
    vaState,
    vaVPCId,

    -- * VPCCidrBlockAssociation
    VPCCidrBlockAssociation (..),
    vpcCidrBlockAssociation,
    vcbaCidrBlockState,
    vcbaAssociationId,
    vcbaCidrBlock,

    -- * VPCCidrBlockState
    VPCCidrBlockState (..),
    vpcCidrBlockState,
    vcbsStatusMessage,
    vcbsState,

    -- * VPCClassicLink
    VPCClassicLink (..),
    vpcClassicLink,
    vclTags,
    vclClassicLinkEnabled,
    vclVPCId,

    -- * VPCEndpoint
    VPCEndpoint (..),
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

    -- * VPCEndpointConnection
    VPCEndpointConnection (..),
    vpcEndpointConnection,
    vecCreationTimestamp,
    vecVPCEndpointOwner,
    vecGatewayLoadBalancerARNs,
    vecVPCEndpointState,
    vecDNSEntries,
    vecVPCEndpointId,
    vecServiceId,
    vecNetworkLoadBalancerARNs,

    -- * VPCIPv6CidrBlockAssociation
    VPCIPv6CidrBlockAssociation (..),
    vpcIPv6CidrBlockAssociation,
    vicbaIPv6CidrBlockState,
    vicbaIPv6Pool,
    vicbaAssociationId,
    vicbaIPv6CidrBlock,
    vicbaNetworkBorderGroup,

    -- * VPCPeeringConnection
    VPCPeeringConnection (..),
    vpcPeeringConnection,
    vpcpcStatus,
    vpcpcAccepterVPCInfo,
    vpcpcVPCPeeringConnectionId,
    vpcpcExpirationTime,
    vpcpcRequesterVPCInfo,
    vpcpcTags,

    -- * VPCPeeringConnectionOptionsDescription
    VPCPeeringConnectionOptionsDescription (..),
    vpcPeeringConnectionOptionsDescription,
    vpcodAllowDNSResolutionFromRemoteVPC,
    vpcodAllowEgressFromLocalVPCToRemoteClassicLink,
    vpcodAllowEgressFromLocalClassicLinkToRemoteVPC,

    -- * VPCPeeringConnectionStateReason
    VPCPeeringConnectionStateReason (..),
    vpcPeeringConnectionStateReason,
    vpcsrMessage,
    vpcsrCode,

    -- * VPCPeeringConnectionVPCInfo
    VPCPeeringConnectionVPCInfo (..),
    vpcPeeringConnectionVPCInfo,
    vpcviCidrBlockSet,
    vpcviOwnerId,
    vpcviIPv6CidrBlockSet,
    vpcviRegion,
    vpcviVPCId,
    vpcviCidrBlock,
    vpcviPeeringOptions,

    -- * VPNConnection
    VPNConnection (..),
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

    -- * VPNConnectionOptions
    VPNConnectionOptions (..),
    vpnConnectionOptions,
    vcoRemoteIPv6NetworkCidr,
    vcoStaticRoutesOnly,
    vcoLocalIPv6NetworkCidr,
    vcoEnableAcceleration,
    vcoTunnelOptions,
    vcoRemoteIPv4NetworkCidr,
    vcoTunnelInsideIPVersion,
    vcoLocalIPv4NetworkCidr,

    -- * VPNConnectionOptionsSpecification
    VPNConnectionOptionsSpecification (..),
    vpnConnectionOptionsSpecification,
    vcosRemoteIPv6NetworkCidr,
    vcosStaticRoutesOnly,
    vcosLocalIPv6NetworkCidr,
    vcosEnableAcceleration,
    vcosTunnelOptions,
    vcosRemoteIPv4NetworkCidr,
    vcosTunnelInsideIPVersion,
    vcosLocalIPv4NetworkCidr,

    -- * VPNGateway
    VPNGateway (..),
    vpnGateway,
    vgVPCAttachments,
    vgState,
    vgAvailabilityZone,
    vgAmazonSideASN,
    vgTags,
    vgType,
    vgVPNGatewayId,

    -- * VPNStaticRoute
    VPNStaticRoute (..),
    vpnStaticRoute,
    vsrSource,
    vsrState,
    vsrDestinationCidrBlock,

    -- * VPNTunnelOptionsSpecification
    VPNTunnelOptionsSpecification (..),
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

    -- * ValidationError
    ValidationError (..),
    validationError,
    veMessage,
    veCode,

    -- * ValidationWarning
    ValidationWarning (..),
    validationWarning,
    vwErrors,

    -- * Volume
    Volume (..),
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

    -- * VolumeAttachment
    VolumeAttachment (..),
    volumeAttachment,
    vInstanceId,
    vAttachTime,
    vDevice,
    vVolumeId,
    vState,
    vDeleteOnTermination,

    -- * VolumeDetail
    VolumeDetail (..),
    volumeDetail,
    vdSize,

    -- * VolumeModification
    VolumeModification (..),
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

    -- * VolumeStatusAction
    VolumeStatusAction (..),
    volumeStatusAction,
    vsaEventType,
    vsaEventId,
    vsaCode,
    vsaDescription,

    -- * VolumeStatusAttachmentStatus
    VolumeStatusAttachmentStatus (..),
    volumeStatusAttachmentStatus,
    vsasInstanceId,
    vsasIOPerformance,

    -- * VolumeStatusDetails
    VolumeStatusDetails (..),
    volumeStatusDetails,
    vsdStatus,
    vsdName,

    -- * VolumeStatusEvent
    VolumeStatusEvent (..),
    volumeStatusEvent,
    vseNotBefore,
    vseEventType,
    vseInstanceId,
    vseEventId,
    vseNotAfter,
    vseDescription,

    -- * VolumeStatusInfo
    VolumeStatusInfo (..),
    volumeStatusInfo,
    vsiStatus,
    vsiDetails,

    -- * VolumeStatusItem
    VolumeStatusItem (..),
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
import Network.AWS.EC2.Types.AnalysisACLRule
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
import Network.AWS.EC2.Types.AssignedPrivateIPAddress
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
import Network.AWS.EC2.Types.BGPStatus
import Network.AWS.EC2.Types.BatchState
import Network.AWS.EC2.Types.BlobAttributeValue
import Network.AWS.EC2.Types.BlockDeviceMapping
import Network.AWS.EC2.Types.BundleTask
import Network.AWS.EC2.Types.BundleTaskError
import Network.AWS.EC2.Types.BundleTaskState
import Network.AWS.EC2.Types.ByoipCidr
import Network.AWS.EC2.Types.ByoipCidrState
import Network.AWS.EC2.Types.CPUOptions
import Network.AWS.EC2.Types.CPUOptionsRequest
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
import Network.AWS.EC2.Types.ClassicLinkDNSSupport
import Network.AWS.EC2.Types.ClassicLinkInstance
import Network.AWS.EC2.Types.ClassicLoadBalancer
import Network.AWS.EC2.Types.ClassicLoadBalancersConfig
import Network.AWS.EC2.Types.ClientCertificateRevocationListStatus
import Network.AWS.EC2.Types.ClientCertificateRevocationListStatusCode
import Network.AWS.EC2.Types.ClientConnectOptions
import Network.AWS.EC2.Types.ClientConnectResponseOptions
import Network.AWS.EC2.Types.ClientData
import Network.AWS.EC2.Types.ClientVPNAuthentication
import Network.AWS.EC2.Types.ClientVPNAuthenticationRequest
import Network.AWS.EC2.Types.ClientVPNAuthenticationType
import Network.AWS.EC2.Types.ClientVPNAuthorizationRuleStatus
import Network.AWS.EC2.Types.ClientVPNAuthorizationRuleStatusCode
import Network.AWS.EC2.Types.ClientVPNConnection
import Network.AWS.EC2.Types.ClientVPNConnectionStatus
import Network.AWS.EC2.Types.ClientVPNConnectionStatusCode
import Network.AWS.EC2.Types.ClientVPNEndpoint
import Network.AWS.EC2.Types.ClientVPNEndpointAttributeStatus
import Network.AWS.EC2.Types.ClientVPNEndpointAttributeStatusCode
import Network.AWS.EC2.Types.ClientVPNEndpointStatus
import Network.AWS.EC2.Types.ClientVPNEndpointStatusCode
import Network.AWS.EC2.Types.ClientVPNRoute
import Network.AWS.EC2.Types.ClientVPNRouteStatus
import Network.AWS.EC2.Types.ClientVPNRouteStatusCode
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
import Network.AWS.EC2.Types.CreateFleetError
import Network.AWS.EC2.Types.CreateFleetInstance
import Network.AWS.EC2.Types.CreateTransitGatewayConnectRequestOptions
import Network.AWS.EC2.Types.CreateTransitGatewayMulticastDomainRequestOptions
import Network.AWS.EC2.Types.CreateTransitGatewayVPCAttachmentRequestOptions
import Network.AWS.EC2.Types.CreateVolumePermission
import Network.AWS.EC2.Types.CreateVolumePermissionModifications
import Network.AWS.EC2.Types.CreditSpecification
import Network.AWS.EC2.Types.CreditSpecificationRequest
import Network.AWS.EC2.Types.CurrencyCodeValues
import Network.AWS.EC2.Types.CustomerGateway
import Network.AWS.EC2.Types.DHCPConfiguration
import Network.AWS.EC2.Types.DHCPOptions
import Network.AWS.EC2.Types.DNSEntry
import Network.AWS.EC2.Types.DNSNameState
import Network.AWS.EC2.Types.DNSServersOptionsModifyStructure
import Network.AWS.EC2.Types.DNSSupportValue
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
import Network.AWS.EC2.Types.DomainType
import Network.AWS.EC2.Types.EBSBlockDevice
import Network.AWS.EC2.Types.EBSEncryptionSupport
import Network.AWS.EC2.Types.EBSInfo
import Network.AWS.EC2.Types.EBSInstanceBlockDevice
import Network.AWS.EC2.Types.EBSInstanceBlockDeviceSpecification
import Network.AWS.EC2.Types.EBSNvmeSupport
import Network.AWS.EC2.Types.EBSOptimizedInfo
import Network.AWS.EC2.Types.EBSOptimizedSupport
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
import Network.AWS.EC2.Types.HTTPTokensState
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
import Network.AWS.EC2.Types.HypervisorType
import Network.AWS.EC2.Types.IAMInstanceProfile
import Network.AWS.EC2.Types.IAMInstanceProfileAssociation
import Network.AWS.EC2.Types.IAMInstanceProfileAssociationState
import Network.AWS.EC2.Types.IAMInstanceProfileSpecification
import Network.AWS.EC2.Types.ICMPTypeCode
import Network.AWS.EC2.Types.IKEVersionsListValue
import Network.AWS.EC2.Types.IKEVersionsRequestListValue
import Network.AWS.EC2.Types.IPPermission
import Network.AWS.EC2.Types.IPRange
import Network.AWS.EC2.Types.IPv6CidrAssociation
import Network.AWS.EC2.Types.IPv6CidrBlock
import Network.AWS.EC2.Types.IPv6Pool
import Network.AWS.EC2.Types.IPv6Range
import Network.AWS.EC2.Types.IPv6SupportValue
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
import Network.AWS.EC2.Types.InstanceIPv6Address
import Network.AWS.EC2.Types.InstanceIPv6AddressRequest
import Network.AWS.EC2.Types.InstanceInterruptionBehavior
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
import Network.AWS.EC2.Types.InstancePrivateIPAddress
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
import Network.AWS.EC2.Types.KeyPairInfo
import Network.AWS.EC2.Types.LastError
import Network.AWS.EC2.Types.LaunchPermission
import Network.AWS.EC2.Types.LaunchPermissionModifications
import Network.AWS.EC2.Types.LaunchSpecification
import Network.AWS.EC2.Types.LaunchTemplate
import Network.AWS.EC2.Types.LaunchTemplateAndOverridesResponse
import Network.AWS.EC2.Types.LaunchTemplateBlockDeviceMapping
import Network.AWS.EC2.Types.LaunchTemplateBlockDeviceMappingRequest
import Network.AWS.EC2.Types.LaunchTemplateCPUOptions
import Network.AWS.EC2.Types.LaunchTemplateCPUOptionsRequest
import Network.AWS.EC2.Types.LaunchTemplateCapacityReservationSpecificationRequest
import Network.AWS.EC2.Types.LaunchTemplateCapacityReservationSpecificationResponse
import Network.AWS.EC2.Types.LaunchTemplateConfig
import Network.AWS.EC2.Types.LaunchTemplateEBSBlockDevice
import Network.AWS.EC2.Types.LaunchTemplateEBSBlockDeviceRequest
import Network.AWS.EC2.Types.LaunchTemplateElasticInferenceAccelerator
import Network.AWS.EC2.Types.LaunchTemplateElasticInferenceAcceleratorResponse
import Network.AWS.EC2.Types.LaunchTemplateEnclaveOptions
import Network.AWS.EC2.Types.LaunchTemplateEnclaveOptionsRequest
import Network.AWS.EC2.Types.LaunchTemplateErrorCode
import Network.AWS.EC2.Types.LaunchTemplateHTTPTokensState
import Network.AWS.EC2.Types.LaunchTemplateHibernationOptions
import Network.AWS.EC2.Types.LaunchTemplateHibernationOptionsRequest
import Network.AWS.EC2.Types.LaunchTemplateIAMInstanceProfileSpecification
import Network.AWS.EC2.Types.LaunchTemplateIAMInstanceProfileSpecificationRequest
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
import Network.AWS.EC2.Types.LocalGatewayRouteTableVPCAssociation
import Network.AWS.EC2.Types.LocalGatewayRouteTableVirtualInterfaceGroupAssociation
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
import Network.AWS.EC2.Types.ModifyTransitGatewayVPCAttachmentRequestOptions
import Network.AWS.EC2.Types.ModifyVPNTunnelOptionsSpecification
import Network.AWS.EC2.Types.Monitoring
import Network.AWS.EC2.Types.MonitoringState
import Network.AWS.EC2.Types.MoveStatus
import Network.AWS.EC2.Types.MovingAddressStatus
import Network.AWS.EC2.Types.MulticastSupportValue
import Network.AWS.EC2.Types.NatGateway
import Network.AWS.EC2.Types.NatGatewayAddress
import Network.AWS.EC2.Types.NatGatewayState
import Network.AWS.EC2.Types.NetworkACL
import Network.AWS.EC2.Types.NetworkACLAssociation
import Network.AWS.EC2.Types.NetworkACLEntry
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
import Network.AWS.EC2.Types.NetworkInterfaceIPv6Address
import Network.AWS.EC2.Types.NetworkInterfacePermission
import Network.AWS.EC2.Types.NetworkInterfacePermissionState
import Network.AWS.EC2.Types.NetworkInterfacePermissionStateCode
import Network.AWS.EC2.Types.NetworkInterfacePrivateIPAddress
import Network.AWS.EC2.Types.NetworkInterfaceStatus
import Network.AWS.EC2.Types.NetworkInterfaceType
import Network.AWS.EC2.Types.NewDHCPConfiguration
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
import Network.AWS.EC2.Types.PrivateDNSDetails
import Network.AWS.EC2.Types.PrivateDNSNameConfiguration
import Network.AWS.EC2.Types.PrivateIPAddressSpecification
import Network.AWS.EC2.Types.ProcessorInfo
import Network.AWS.EC2.Types.ProductCode
import Network.AWS.EC2.Types.ProductCodeValues
import Network.AWS.EC2.Types.PropagatingVGW
import Network.AWS.EC2.Types.Protocol
import Network.AWS.EC2.Types.ProtocolValue
import Network.AWS.EC2.Types.ProvisionedBandwidth
import Network.AWS.EC2.Types.PtrUpdateStatus
import Network.AWS.EC2.Types.PublicIPv4Pool
import Network.AWS.EC2.Types.PublicIPv4PoolRange
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
import Network.AWS.EC2.Types.ScheduledInstancesEBS
import Network.AWS.EC2.Types.ScheduledInstancesIAMInstanceProfile
import Network.AWS.EC2.Types.ScheduledInstancesIPv6Address
import Network.AWS.EC2.Types.ScheduledInstancesLaunchSpecification
import Network.AWS.EC2.Types.ScheduledInstancesMonitoring
import Network.AWS.EC2.Types.ScheduledInstancesNetworkInterface
import Network.AWS.EC2.Types.ScheduledInstancesPlacement
import Network.AWS.EC2.Types.ScheduledInstancesPrivateIPAddressConfig
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
import Network.AWS.EC2.Types.StaleIPPermission
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
import Network.AWS.EC2.Types.SubnetIPv6CidrBlockAssociation
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
import Network.AWS.EC2.Types.TransitGatewayAttachmentBGPConfiguration
import Network.AWS.EC2.Types.TransitGatewayAttachmentPropagation
import Network.AWS.EC2.Types.TransitGatewayAttachmentResourceType
import Network.AWS.EC2.Types.TransitGatewayAttachmentState
import Network.AWS.EC2.Types.TransitGatewayConnect
import Network.AWS.EC2.Types.TransitGatewayConnectOptions
import Network.AWS.EC2.Types.TransitGatewayConnectPeer
import Network.AWS.EC2.Types.TransitGatewayConnectPeerConfiguration
import Network.AWS.EC2.Types.TransitGatewayConnectPeerState
import Network.AWS.EC2.Types.TransitGatewayConnectRequestBGPOptions
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
import Network.AWS.EC2.Types.TransitGatewayVPCAttachment
import Network.AWS.EC2.Types.TransitGatewayVPCAttachmentOptions
import Network.AWS.EC2.Types.TransportProtocol
import Network.AWS.EC2.Types.TunnelInsideIPVersion
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
import Network.AWS.EC2.Types.VCPUInfo
import Network.AWS.EC2.Types.VGWTelemetry
import Network.AWS.EC2.Types.VPC
import Network.AWS.EC2.Types.VPCAttachment
import Network.AWS.EC2.Types.VPCAttributeName
import Network.AWS.EC2.Types.VPCCidrBlockAssociation
import Network.AWS.EC2.Types.VPCCidrBlockState
import Network.AWS.EC2.Types.VPCCidrBlockStateCode
import Network.AWS.EC2.Types.VPCClassicLink
import Network.AWS.EC2.Types.VPCEndpoint
import Network.AWS.EC2.Types.VPCEndpointConnection
import Network.AWS.EC2.Types.VPCEndpointType
import Network.AWS.EC2.Types.VPCIPv6CidrBlockAssociation
import Network.AWS.EC2.Types.VPCPeeringConnection
import Network.AWS.EC2.Types.VPCPeeringConnectionOptionsDescription
import Network.AWS.EC2.Types.VPCPeeringConnectionStateReason
import Network.AWS.EC2.Types.VPCPeeringConnectionStateReasonCode
import Network.AWS.EC2.Types.VPCPeeringConnectionVPCInfo
import Network.AWS.EC2.Types.VPCState
import Network.AWS.EC2.Types.VPCTenancy
import Network.AWS.EC2.Types.VPNConnection
import Network.AWS.EC2.Types.VPNConnectionOptions
import Network.AWS.EC2.Types.VPNConnectionOptionsSpecification
import Network.AWS.EC2.Types.VPNEcmpSupportValue
import Network.AWS.EC2.Types.VPNGateway
import Network.AWS.EC2.Types.VPNProtocol
import Network.AWS.EC2.Types.VPNState
import Network.AWS.EC2.Types.VPNStaticRoute
import Network.AWS.EC2.Types.VPNStaticRouteSource
import Network.AWS.EC2.Types.VPNTunnelOptionsSpecification
import Network.AWS.EC2.Types.ValidationError
import Network.AWS.EC2.Types.ValidationWarning
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
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2016-11-15@ of the Amazon Elastic Compute Cloud SDK configuration.
ec2 :: Service
ec2 =
  Service
    { _svcAbbrev = "EC2",
      _svcSigner = v4,
      _svcPrefix = "ec2",
      _svcVersion = "2016-11-15",
      _svcEndpoint = defaultEndpoint ec2,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseXMLError "EC2",
      _svcRetry = retry
    }
  where
    retry =
      Exponential
        { _retryBase = 5.0e-2,
          _retryGrowth = 2,
          _retryAttempts = 5,
          _retryCheck = check
        }
    check e
      | has
          (hasCode "RequestLimitExceeded" . hasStatus 503)
          e =
        Just "request_limit_exceeded"
      | has (hasStatus 504) e = Just "gateway_timeout"
      | has
          ( hasCode "ProvisionedThroughputExceededException"
              . hasStatus 400
          )
          e =
        Just "throughput_exceeded"
      | has (hasStatus 503) e = Just "service_unavailable"
      | has (hasStatus 502) e = Just "bad_gateway"
      | has (hasStatus 429) e = Just "too_many_requests"
      | has
          (hasCode "RequestThrottledException" . hasStatus 400)
          e =
        Just "request_throttled_exception"
      | has
          (hasCode "EC2ThrottledException" . hasStatus 503)
          e =
        Just "ec2_throttled_exception"
      | has
          (hasCode "ThrottledException" . hasStatus 400)
          e =
        Just "throttled_exception"
      | has (hasStatus 509) e = Just "limit_exceeded"
      | has (hasStatus 500) e = Just "general_server_error"
      | has
          (hasCode "ThrottlingException" . hasStatus 400)
          e =
        Just "throttling_exception"
      | has (hasCode "Throttling" . hasStatus 400) e =
        Just "throttling"
      | otherwise = Nothing
