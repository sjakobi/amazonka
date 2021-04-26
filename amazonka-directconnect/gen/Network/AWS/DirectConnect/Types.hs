{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

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
    defaultService,

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
    newAssociatedGateway,

    -- * BGPPeer
    BGPPeer (..),
    newBGPPeer,

    -- * Connection
    Connection (..),
    newConnection,

    -- * Connections
    Connections (..),
    newConnections,

    -- * DirectConnectGateway
    DirectConnectGateway (..),
    newDirectConnectGateway,

    -- * DirectConnectGatewayAssociation
    DirectConnectGatewayAssociation (..),
    newDirectConnectGatewayAssociation,

    -- * DirectConnectGatewayAssociationProposal
    DirectConnectGatewayAssociationProposal (..),
    newDirectConnectGatewayAssociationProposal,

    -- * DirectConnectGatewayAttachment
    DirectConnectGatewayAttachment (..),
    newDirectConnectGatewayAttachment,

    -- * Interconnect
    Interconnect (..),
    newInterconnect,

    -- * Lag
    Lag (..),
    newLag,

    -- * Location
    Location (..),
    newLocation,

    -- * NewBGPPeer
    NewBGPPeer (..),
    newNewBGPPeer,

    -- * NewPrivateVirtualInterface
    NewPrivateVirtualInterface (..),
    newNewPrivateVirtualInterface,

    -- * NewPrivateVirtualInterfaceAllocation
    NewPrivateVirtualInterfaceAllocation (..),
    newNewPrivateVirtualInterfaceAllocation,

    -- * NewPublicVirtualInterface
    NewPublicVirtualInterface (..),
    newNewPublicVirtualInterface,

    -- * NewPublicVirtualInterfaceAllocation
    NewPublicVirtualInterfaceAllocation (..),
    newNewPublicVirtualInterfaceAllocation,

    -- * NewTransitVirtualInterface
    NewTransitVirtualInterface (..),
    newNewTransitVirtualInterface,

    -- * NewTransitVirtualInterfaceAllocation
    NewTransitVirtualInterfaceAllocation (..),
    newNewTransitVirtualInterfaceAllocation,

    -- * ResourceTag
    ResourceTag (..),
    newResourceTag,

    -- * RouteFilterPrefix
    RouteFilterPrefix (..),
    newRouteFilterPrefix,

    -- * Tag
    Tag (..),
    newTag,

    -- * VirtualGateway
    VirtualGateway (..),
    newVirtualGateway,

    -- * VirtualInterface
    VirtualInterface (..),
    newVirtualInterface,

    -- * VirtualInterfaceTestHistory
    VirtualInterfaceTestHistory (..),
    newVirtualInterfaceTestHistory,
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
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2012-10-25@ of the Amazon Direct Connect SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev =
        "DirectConnect",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "directconnect",
      Prelude._svcVersion = "2012-10-25",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "DirectConnect",
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

-- | You have reached the limit on the number of tags that can be assigned.
_TooManyTagsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyTagsException =
  Prelude._MatchServiceError
    defaultService
    "TooManyTagsException"

-- | A server-side error occurred.
_DirectConnectServerException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DirectConnectServerException =
  Prelude._MatchServiceError
    defaultService
    "DirectConnectServerException"

-- | A tag key was specified more than once.
_DuplicateTagKeysException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DuplicateTagKeysException =
  Prelude._MatchServiceError
    defaultService
    "DuplicateTagKeysException"

-- | One or more parameters are not valid.
_DirectConnectClientException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DirectConnectClientException =
  Prelude._MatchServiceError
    defaultService
    "DirectConnectClientException"
