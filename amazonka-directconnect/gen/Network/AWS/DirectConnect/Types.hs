{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types
  ( -- * Service Configuration
    directConnect,

    -- * Errors
    _TooManyTagsException,
    _DirectConnectServerException,
    _DuplicateTagKeysException,
    _DirectConnectClientException,

    -- * AddressFamily
    AddressFamily (..),

    -- * BGPPeerState
    BGPPeerState (..),

    -- * BGPStatus
    BGPStatus (..),

    -- * ConnectionState
    ConnectionState (..),

    -- * DirectConnectGatewayAssociationProposalState
    DirectConnectGatewayAssociationProposalState (..),

    -- * DirectConnectGatewayAssociationState
    DirectConnectGatewayAssociationState (..),

    -- * DirectConnectGatewayAttachmentState
    DirectConnectGatewayAttachmentState (..),

    -- * DirectConnectGatewayAttachmentType
    DirectConnectGatewayAttachmentType (..),

    -- * DirectConnectGatewayState
    DirectConnectGatewayState (..),

    -- * GatewayType
    GatewayType (..),

    -- * HasLogicalRedundancy
    HasLogicalRedundancy (..),

    -- * InterconnectState
    InterconnectState (..),

    -- * LagState
    LagState (..),

    -- * LoaContentType
    LoaContentType (..),

    -- * VirtualInterfaceState
    VirtualInterfaceState (..),

    -- * AssociatedGateway
    AssociatedGateway (..),
    associatedGateway,
    agId,
    agType,
    agOwnerAccount,
    agRegion,

    -- * BGPPeer
    BGPPeer (..),
    bgpPeer,
    bpAuthKey,
    bpAsn,
    bpAwsDeviceV2,
    bpBgpPeerId,
    bpBgpStatus,
    bpBgpPeerState,
    bpAddressFamily,
    bpAmazonAddress,
    bpCustomerAddress,

    -- * Connection
    Connection (..),
    connection,
    cBandwidth,
    cConnectionState,
    cAwsDeviceV2,
    cConnectionName,
    cProviderName,
    cConnectionId,
    cHasLogicalRedundancy,
    cAwsDevice,
    cJumboFrameCapable,
    cLagId,
    cPartnerName,
    cTags,
    cLoaIssueTime,
    cOwnerAccount,
    cRegion,
    cLocation,
    cVlan,

    -- * Connections
    Connections (..),
    connections,
    cConnections,

    -- * DirectConnectGateway
    DirectConnectGateway (..),
    directConnectGateway,
    dcgDirectConnectGatewayState,
    dcgStateChangeError,
    dcgDirectConnectGatewayName,
    dcgAmazonSideASN,
    dcgDirectConnectGatewayId,
    dcgOwnerAccount,

    -- * DirectConnectGatewayAssociation
    DirectConnectGatewayAssociation (..),
    directConnectGatewayAssociation,
    dcgaVirtualGatewayId,
    dcgaVirtualGatewayOwnerAccount,
    dcgaStateChangeError,
    dcgaVirtualGatewayRegion,
    dcgaAssociationState,
    dcgaAssociatedGateway,
    dcgaAssociationId,
    dcgaDirectConnectGatewayId,
    dcgaAllowedPrefixesToDirectConnectGateway,
    dcgaDirectConnectGatewayOwnerAccount,

    -- * DirectConnectGatewayAssociationProposal
    DirectConnectGatewayAssociationProposal (..),
    directConnectGatewayAssociationProposal,
    dcgapProposalId,
    dcgapRequestedAllowedPrefixesToDirectConnectGateway,
    dcgapProposalState,
    dcgapAssociatedGateway,
    dcgapExistingAllowedPrefixesToDirectConnectGateway,
    dcgapDirectConnectGatewayId,
    dcgapDirectConnectGatewayOwnerAccount,

    -- * DirectConnectGatewayAttachment
    DirectConnectGatewayAttachment (..),
    directConnectGatewayAttachment,
    dStateChangeError,
    dAttachmentState,
    dVirtualInterfaceOwnerAccount,
    dVirtualInterfaceRegion,
    dAttachmentType,
    dVirtualInterfaceId,
    dDirectConnectGatewayId,

    -- * Interconnect
    Interconnect (..),
    interconnect,
    iBandwidth,
    iInterconnectId,
    iAwsDeviceV2,
    iProviderName,
    iHasLogicalRedundancy,
    iAwsDevice,
    iJumboFrameCapable,
    iLagId,
    iTags,
    iLoaIssueTime,
    iRegion,
    iInterconnectState,
    iLocation,
    iInterconnectName,

    -- * Lag
    Lag (..),
    lag,
    lagNumberOfConnections,
    lagAwsDeviceV2,
    lagAllowsHostedConnections,
    lagProviderName,
    lagHasLogicalRedundancy,
    lagConnections,
    lagAwsDevice,
    lagLagName,
    lagLagState,
    lagJumboFrameCapable,
    lagConnectionsBandwidth,
    lagLagId,
    lagTags,
    lagOwnerAccount,
    lagRegion,
    lagLocation,
    lagMinimumLinks,

    -- * Location
    Location (..),
    location,
    lAvailablePortSpeeds,
    lAvailableProviders,
    lLocationCode,
    lRegion,
    lLocationName,

    -- * NewBGPPeer
    NewBGPPeer (..),
    newBGPPeer,
    nbpAuthKey,
    nbpAsn,
    nbpAddressFamily,
    nbpAmazonAddress,
    nbpCustomerAddress,

    -- * NewPrivateVirtualInterface
    NewPrivateVirtualInterface (..),
    newPrivateVirtualInterface,
    newAuthKey,
    newVirtualGatewayId,
    newMtu,
    newTags,
    newDirectConnectGatewayId,
    newAddressFamily,
    newAmazonAddress,
    newCustomerAddress,
    newVirtualInterfaceName,
    newVlan,
    newAsn,

    -- * NewPrivateVirtualInterfaceAllocation
    NewPrivateVirtualInterfaceAllocation (..),
    newPrivateVirtualInterfaceAllocation,
    npviaAuthKey,
    npviaMtu,
    npviaTags,
    npviaAddressFamily,
    npviaAmazonAddress,
    npviaCustomerAddress,
    npviaVirtualInterfaceName,
    npviaVlan,
    npviaAsn,

    -- * NewPublicVirtualInterface
    NewPublicVirtualInterface (..),
    newPublicVirtualInterface,
    npviAuthKey,
    npviRouteFilterPrefixes,
    npviTags,
    npviAddressFamily,
    npviAmazonAddress,
    npviCustomerAddress,
    npviVirtualInterfaceName,
    npviVlan,
    npviAsn,

    -- * NewPublicVirtualInterfaceAllocation
    NewPublicVirtualInterfaceAllocation (..),
    newPublicVirtualInterfaceAllocation,
    nAuthKey,
    nRouteFilterPrefixes,
    nTags,
    nAddressFamily,
    nAmazonAddress,
    nCustomerAddress,
    nVirtualInterfaceName,
    nVlan,
    nAsn,

    -- * NewTransitVirtualInterface
    NewTransitVirtualInterface (..),
    newTransitVirtualInterface,
    ntviAuthKey,
    ntviAsn,
    ntviMtu,
    ntviTags,
    ntviDirectConnectGatewayId,
    ntviVirtualInterfaceName,
    ntviAddressFamily,
    ntviAmazonAddress,
    ntviVlan,
    ntviCustomerAddress,

    -- * NewTransitVirtualInterfaceAllocation
    NewTransitVirtualInterfaceAllocation (..),
    newTransitVirtualInterfaceAllocation,
    ntviaAuthKey,
    ntviaAsn,
    ntviaMtu,
    ntviaTags,
    ntviaVirtualInterfaceName,
    ntviaAddressFamily,
    ntviaAmazonAddress,
    ntviaVlan,
    ntviaCustomerAddress,

    -- * ResourceTag
    ResourceTag (..),
    resourceTag,
    rtResourceARN,
    rtTags,

    -- * RouteFilterPrefix
    RouteFilterPrefix (..),
    routeFilterPrefix,
    rfpCidr,

    -- * Tag
    Tag (..),
    tag,
    tagValue,
    tagKey,

    -- * VirtualGateway
    VirtualGateway (..),
    virtualGateway,
    vgVirtualGatewayId,
    vgVirtualGatewayState,

    -- * VirtualInterface
    VirtualInterface (..),
    virtualInterface,
    viAuthKey,
    viBgpPeers,
    viVirtualGatewayId,
    viAsn,
    viAwsDeviceV2,
    viConnectionId,
    viCustomerRouterConfig,
    viJumboFrameCapable,
    viRouteFilterPrefixes,
    viVirtualInterfaceType,
    viMtu,
    viTags,
    viVirtualInterfaceId,
    viAmazonSideASN,
    viDirectConnectGatewayId,
    viVirtualInterfaceState,
    viVirtualInterfaceName,
    viAddressFamily,
    viAmazonAddress,
    viOwnerAccount,
    viRegion,
    viLocation,
    viVlan,
    viCustomerAddress,

    -- * VirtualInterfaceTestHistory
    VirtualInterfaceTestHistory (..),
    virtualInterfaceTestHistory,
    vithBgpPeers,
    vithStatus,
    vithTestId,
    vithStartTime,
    vithEndTime,
    vithVirtualInterfaceId,
    vithOwnerAccount,
    vithTestDurationInMinutes,
  )
where

import Network.AWS.DirectConnect.Types.AddressFamily
import Network.AWS.DirectConnect.Types.AssociatedGateway
import Network.AWS.DirectConnect.Types.BGPPeer
import Network.AWS.DirectConnect.Types.BGPPeerState
import Network.AWS.DirectConnect.Types.BGPStatus
import Network.AWS.DirectConnect.Types.Connection
import Network.AWS.DirectConnect.Types.ConnectionState
import Network.AWS.DirectConnect.Types.Connections
import Network.AWS.DirectConnect.Types.DirectConnectGateway
import Network.AWS.DirectConnect.Types.DirectConnectGatewayAssociation
import Network.AWS.DirectConnect.Types.DirectConnectGatewayAssociationProposal
import Network.AWS.DirectConnect.Types.DirectConnectGatewayAssociationProposalState
import Network.AWS.DirectConnect.Types.DirectConnectGatewayAssociationState
import Network.AWS.DirectConnect.Types.DirectConnectGatewayAttachment
import Network.AWS.DirectConnect.Types.DirectConnectGatewayAttachmentState
import Network.AWS.DirectConnect.Types.DirectConnectGatewayAttachmentType
import Network.AWS.DirectConnect.Types.DirectConnectGatewayState
import Network.AWS.DirectConnect.Types.GatewayType
import Network.AWS.DirectConnect.Types.HasLogicalRedundancy
import Network.AWS.DirectConnect.Types.Interconnect
import Network.AWS.DirectConnect.Types.InterconnectState
import Network.AWS.DirectConnect.Types.Lag
import Network.AWS.DirectConnect.Types.LagState
import Network.AWS.DirectConnect.Types.LoaContentType
import Network.AWS.DirectConnect.Types.Location
import Network.AWS.DirectConnect.Types.NewBGPPeer
import Network.AWS.DirectConnect.Types.NewPrivateVirtualInterface
import Network.AWS.DirectConnect.Types.NewPrivateVirtualInterfaceAllocation
import Network.AWS.DirectConnect.Types.NewPublicVirtualInterface
import Network.AWS.DirectConnect.Types.NewPublicVirtualInterfaceAllocation
import Network.AWS.DirectConnect.Types.NewTransitVirtualInterface
import Network.AWS.DirectConnect.Types.NewTransitVirtualInterfaceAllocation
import Network.AWS.DirectConnect.Types.ResourceTag
import Network.AWS.DirectConnect.Types.RouteFilterPrefix
import Network.AWS.DirectConnect.Types.Tag
import Network.AWS.DirectConnect.Types.VirtualGateway
import Network.AWS.DirectConnect.Types.VirtualInterface
import Network.AWS.DirectConnect.Types.VirtualInterfaceState
import Network.AWS.DirectConnect.Types.VirtualInterfaceTestHistory
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2012-10-25@ of the Amazon Direct Connect SDK configuration.
directConnect :: Service
directConnect =
  Service
    { _svcAbbrev = "DirectConnect",
      _svcSigner = v4,
      _svcPrefix = "directconnect",
      _svcVersion = "2012-10-25",
      _svcEndpoint = defaultEndpoint directConnect,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "DirectConnect",
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

-- | You have reached the limit on the number of tags that can be assigned.
_TooManyTagsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTagsException =
  _MatchServiceError
    directConnect
    "TooManyTagsException"

-- | A server-side error occurred.
_DirectConnectServerException :: AsError a => Getting (First ServiceError) a ServiceError
_DirectConnectServerException =
  _MatchServiceError
    directConnect
    "DirectConnectServerException"

-- | A tag key was specified more than once.
_DuplicateTagKeysException :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateTagKeysException =
  _MatchServiceError
    directConnect
    "DuplicateTagKeysException"

-- | One or more parameters are not valid.
_DirectConnectClientException :: AsError a => Getting (First ServiceError) a ServiceError
_DirectConnectClientException =
  _MatchServiceError
    directConnect
    "DirectConnectClientException"
