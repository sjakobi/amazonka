{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- AWS Direct Connect links your internal network to an AWS Direct Connect location over a standard Ethernet fiber-optic cable. One end of the cable is connected to your router, the other to an AWS Direct Connect router. With this connection in place, you can create virtual interfaces directly to the AWS cloud (for example, to Amazon EC2 and Amazon S3) and to Amazon VPC, bypassing Internet service providers in your network path. A connection provides access to all AWS Regions except the China (Beijing) and (China) Ningxia Regions. AWS resources in the China Regions can only be accessed through locations associated with those Regions.
module Network.AWS.DirectConnect
  ( -- * Service Configuration
    directConnect,

    -- * Errors
    -- $errors

    -- ** TooManyTagsException
    _TooManyTagsException,

    -- ** DirectConnectServerException
    _DirectConnectServerException,

    -- ** DuplicateTagKeysException
    _DuplicateTagKeysException,

    -- ** DirectConnectClientException
    _DirectConnectClientException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** ConfirmPublicVirtualInterface
    module Network.AWS.DirectConnect.ConfirmPublicVirtualInterface,

    -- ** StartBGPFailoverTest
    module Network.AWS.DirectConnect.StartBGPFailoverTest,

    -- ** DeleteConnection
    module Network.AWS.DirectConnect.DeleteConnection,

    -- ** DeleteDirectConnectGatewayAssociationProposal
    module Network.AWS.DirectConnect.DeleteDirectConnectGatewayAssociationProposal,

    -- ** StopBGPFailoverTest
    module Network.AWS.DirectConnect.StopBGPFailoverTest,

    -- ** DescribeVirtualGateways
    module Network.AWS.DirectConnect.DescribeVirtualGateways,

    -- ** AllocatePrivateVirtualInterface
    module Network.AWS.DirectConnect.AllocatePrivateVirtualInterface,

    -- ** DescribeDirectConnectGatewayAssociations (Paginated)
    module Network.AWS.DirectConnect.DescribeDirectConnectGatewayAssociations,

    -- ** ConfirmConnection
    module Network.AWS.DirectConnect.ConfirmConnection,

    -- ** DescribeTags
    module Network.AWS.DirectConnect.DescribeTags,

    -- ** DescribeDirectConnectGatewayAttachments (Paginated)
    module Network.AWS.DirectConnect.DescribeDirectConnectGatewayAttachments,

    -- ** DescribeHostedConnections
    module Network.AWS.DirectConnect.DescribeHostedConnections,

    -- ** CreatePublicVirtualInterface
    module Network.AWS.DirectConnect.CreatePublicVirtualInterface,

    -- ** AcceptDirectConnectGatewayAssociationProposal
    module Network.AWS.DirectConnect.AcceptDirectConnectGatewayAssociationProposal,

    -- ** CreateDirectConnectGatewayAssociation
    module Network.AWS.DirectConnect.CreateDirectConnectGatewayAssociation,

    -- ** CreateInterconnect
    module Network.AWS.DirectConnect.CreateInterconnect,

    -- ** ConfirmPrivateVirtualInterface
    module Network.AWS.DirectConnect.ConfirmPrivateVirtualInterface,

    -- ** UpdateLag
    module Network.AWS.DirectConnect.UpdateLag,

    -- ** DeleteInterconnect
    module Network.AWS.DirectConnect.DeleteInterconnect,

    -- ** DeleteLag
    module Network.AWS.DirectConnect.DeleteLag,

    -- ** AssociateHostedConnection
    module Network.AWS.DirectConnect.AssociateHostedConnection,

    -- ** CreateBGPPeer
    module Network.AWS.DirectConnect.CreateBGPPeer,

    -- ** UntagResource
    module Network.AWS.DirectConnect.UntagResource,

    -- ** DisassociateConnectionFromLag
    module Network.AWS.DirectConnect.DisassociateConnectionFromLag,

    -- ** TagResource
    module Network.AWS.DirectConnect.TagResource,

    -- ** DeleteVirtualInterface
    module Network.AWS.DirectConnect.DeleteVirtualInterface,

    -- ** DescribeDirectConnectGateways (Paginated)
    module Network.AWS.DirectConnect.DescribeDirectConnectGateways,

    -- ** UpdateVirtualInterfaceAttributes
    module Network.AWS.DirectConnect.UpdateVirtualInterfaceAttributes,

    -- ** AssociateConnectionWithLag
    module Network.AWS.DirectConnect.AssociateConnectionWithLag,

    -- ** CreateConnection
    module Network.AWS.DirectConnect.CreateConnection,

    -- ** DescribeVirtualInterfaces
    module Network.AWS.DirectConnect.DescribeVirtualInterfaces,

    -- ** ListVirtualInterfaceTestHistory
    module Network.AWS.DirectConnect.ListVirtualInterfaceTestHistory,

    -- ** CreateTransitVirtualInterface
    module Network.AWS.DirectConnect.CreateTransitVirtualInterface,

    -- ** DescribeLoa
    module Network.AWS.DirectConnect.DescribeLoa,

    -- ** CreateDirectConnectGateway
    module Network.AWS.DirectConnect.CreateDirectConnectGateway,

    -- ** DescribeInterconnects
    module Network.AWS.DirectConnect.DescribeInterconnects,

    -- ** DescribeLags
    module Network.AWS.DirectConnect.DescribeLags,

    -- ** ConfirmTransitVirtualInterface
    module Network.AWS.DirectConnect.ConfirmTransitVirtualInterface,

    -- ** CreateLag
    module Network.AWS.DirectConnect.CreateLag,

    -- ** DeleteBGPPeer
    module Network.AWS.DirectConnect.DeleteBGPPeer,

    -- ** AllocateTransitVirtualInterface
    module Network.AWS.DirectConnect.AllocateTransitVirtualInterface,

    -- ** DescribeLocations
    module Network.AWS.DirectConnect.DescribeLocations,

    -- ** DeleteDirectConnectGatewayAssociation
    module Network.AWS.DirectConnect.DeleteDirectConnectGatewayAssociation,

    -- ** UpdateDirectConnectGatewayAssociation
    module Network.AWS.DirectConnect.UpdateDirectConnectGatewayAssociation,

    -- ** AllocatePublicVirtualInterface
    module Network.AWS.DirectConnect.AllocatePublicVirtualInterface,

    -- ** DescribeConnections
    module Network.AWS.DirectConnect.DescribeConnections,

    -- ** AssociateVirtualInterface
    module Network.AWS.DirectConnect.AssociateVirtualInterface,

    -- ** DescribeDirectConnectGatewayAssociationProposals
    module Network.AWS.DirectConnect.DescribeDirectConnectGatewayAssociationProposals,

    -- ** CreatePrivateVirtualInterface
    module Network.AWS.DirectConnect.CreatePrivateVirtualInterface,

    -- ** AllocateHostedConnection
    module Network.AWS.DirectConnect.AllocateHostedConnection,

    -- ** CreateDirectConnectGatewayAssociationProposal
    module Network.AWS.DirectConnect.CreateDirectConnectGatewayAssociationProposal,

    -- ** DeleteDirectConnectGateway
    module Network.AWS.DirectConnect.DeleteDirectConnectGateway,

    -- * Types

    -- ** AddressFamily
    AddressFamily (..),

    -- ** BGPPeerState
    BGPPeerState (..),

    -- ** BGPStatus
    BGPStatus (..),

    -- ** ConnectionState
    ConnectionState (..),

    -- ** DirectConnectGatewayAssociationProposalState
    DirectConnectGatewayAssociationProposalState (..),

    -- ** DirectConnectGatewayAssociationState
    DirectConnectGatewayAssociationState (..),

    -- ** DirectConnectGatewayAttachmentState
    DirectConnectGatewayAttachmentState (..),

    -- ** DirectConnectGatewayAttachmentType
    DirectConnectGatewayAttachmentType (..),

    -- ** DirectConnectGatewayState
    DirectConnectGatewayState (..),

    -- ** GatewayType
    GatewayType (..),

    -- ** HasLogicalRedundancy
    HasLogicalRedundancy (..),

    -- ** InterconnectState
    InterconnectState (..),

    -- ** LagState
    LagState (..),

    -- ** LoaContentType
    LoaContentType (..),

    -- ** VirtualInterfaceState
    VirtualInterfaceState (..),

    -- ** AssociatedGateway
    AssociatedGateway,
    associatedGateway,
    agId,
    agType,
    agOwnerAccount,
    agRegion,

    -- ** BGPPeer
    BGPPeer,
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

    -- ** Connection
    Connection,
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

    -- ** Connections
    Connections,
    connections,
    cConnections,

    -- ** DirectConnectGateway
    DirectConnectGateway,
    directConnectGateway,
    dcgDirectConnectGatewayState,
    dcgStateChangeError,
    dcgDirectConnectGatewayName,
    dcgAmazonSideASN,
    dcgDirectConnectGatewayId,
    dcgOwnerAccount,

    -- ** DirectConnectGatewayAssociation
    DirectConnectGatewayAssociation,
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

    -- ** DirectConnectGatewayAssociationProposal
    DirectConnectGatewayAssociationProposal,
    directConnectGatewayAssociationProposal,
    dcgapProposalId,
    dcgapRequestedAllowedPrefixesToDirectConnectGateway,
    dcgapProposalState,
    dcgapAssociatedGateway,
    dcgapExistingAllowedPrefixesToDirectConnectGateway,
    dcgapDirectConnectGatewayId,
    dcgapDirectConnectGatewayOwnerAccount,

    -- ** DirectConnectGatewayAttachment
    DirectConnectGatewayAttachment,
    directConnectGatewayAttachment,
    dStateChangeError,
    dAttachmentState,
    dVirtualInterfaceOwnerAccount,
    dVirtualInterfaceRegion,
    dAttachmentType,
    dVirtualInterfaceId,
    dDirectConnectGatewayId,

    -- ** Interconnect
    Interconnect,
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

    -- ** Lag
    Lag,
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

    -- ** Location
    Location,
    location,
    lAvailablePortSpeeds,
    lAvailableProviders,
    lLocationCode,
    lRegion,
    lLocationName,

    -- ** NewBGPPeer
    NewBGPPeer,
    newBGPPeer,
    nbpAuthKey,
    nbpAsn,
    nbpAddressFamily,
    nbpAmazonAddress,
    nbpCustomerAddress,

    -- ** NewPrivateVirtualInterface
    NewPrivateVirtualInterface,
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

    -- ** NewPrivateVirtualInterfaceAllocation
    NewPrivateVirtualInterfaceAllocation,
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

    -- ** NewPublicVirtualInterface
    NewPublicVirtualInterface,
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

    -- ** NewPublicVirtualInterfaceAllocation
    NewPublicVirtualInterfaceAllocation,
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

    -- ** NewTransitVirtualInterface
    NewTransitVirtualInterface,
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

    -- ** NewTransitVirtualInterfaceAllocation
    NewTransitVirtualInterfaceAllocation,
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

    -- ** ResourceTag
    ResourceTag,
    resourceTag,
    rtResourceARN,
    rtTags,

    -- ** RouteFilterPrefix
    RouteFilterPrefix,
    routeFilterPrefix,
    rfpCidr,

    -- ** Tag
    Tag,
    tag,
    tagValue,
    tagKey,

    -- ** VirtualGateway
    VirtualGateway,
    virtualGateway,
    vgVirtualGatewayId,
    vgVirtualGatewayState,

    -- ** VirtualInterface
    VirtualInterface,
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

    -- ** VirtualInterfaceTestHistory
    VirtualInterfaceTestHistory,
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

import Network.AWS.DirectConnect.AcceptDirectConnectGatewayAssociationProposal
import Network.AWS.DirectConnect.AllocateHostedConnection
import Network.AWS.DirectConnect.AllocatePrivateVirtualInterface
import Network.AWS.DirectConnect.AllocatePublicVirtualInterface
import Network.AWS.DirectConnect.AllocateTransitVirtualInterface
import Network.AWS.DirectConnect.AssociateConnectionWithLag
import Network.AWS.DirectConnect.AssociateHostedConnection
import Network.AWS.DirectConnect.AssociateVirtualInterface
import Network.AWS.DirectConnect.ConfirmConnection
import Network.AWS.DirectConnect.ConfirmPrivateVirtualInterface
import Network.AWS.DirectConnect.ConfirmPublicVirtualInterface
import Network.AWS.DirectConnect.ConfirmTransitVirtualInterface
import Network.AWS.DirectConnect.CreateBGPPeer
import Network.AWS.DirectConnect.CreateConnection
import Network.AWS.DirectConnect.CreateDirectConnectGateway
import Network.AWS.DirectConnect.CreateDirectConnectGatewayAssociation
import Network.AWS.DirectConnect.CreateDirectConnectGatewayAssociationProposal
import Network.AWS.DirectConnect.CreateInterconnect
import Network.AWS.DirectConnect.CreateLag
import Network.AWS.DirectConnect.CreatePrivateVirtualInterface
import Network.AWS.DirectConnect.CreatePublicVirtualInterface
import Network.AWS.DirectConnect.CreateTransitVirtualInterface
import Network.AWS.DirectConnect.DeleteBGPPeer
import Network.AWS.DirectConnect.DeleteConnection
import Network.AWS.DirectConnect.DeleteDirectConnectGateway
import Network.AWS.DirectConnect.DeleteDirectConnectGatewayAssociation
import Network.AWS.DirectConnect.DeleteDirectConnectGatewayAssociationProposal
import Network.AWS.DirectConnect.DeleteInterconnect
import Network.AWS.DirectConnect.DeleteLag
import Network.AWS.DirectConnect.DeleteVirtualInterface
import Network.AWS.DirectConnect.DescribeConnections
import Network.AWS.DirectConnect.DescribeDirectConnectGatewayAssociationProposals
import Network.AWS.DirectConnect.DescribeDirectConnectGatewayAssociations
import Network.AWS.DirectConnect.DescribeDirectConnectGatewayAttachments
import Network.AWS.DirectConnect.DescribeDirectConnectGateways
import Network.AWS.DirectConnect.DescribeHostedConnections
import Network.AWS.DirectConnect.DescribeInterconnects
import Network.AWS.DirectConnect.DescribeLags
import Network.AWS.DirectConnect.DescribeLoa
import Network.AWS.DirectConnect.DescribeLocations
import Network.AWS.DirectConnect.DescribeTags
import Network.AWS.DirectConnect.DescribeVirtualGateways
import Network.AWS.DirectConnect.DescribeVirtualInterfaces
import Network.AWS.DirectConnect.DisassociateConnectionFromLag
import Network.AWS.DirectConnect.ListVirtualInterfaceTestHistory
import Network.AWS.DirectConnect.StartBGPFailoverTest
import Network.AWS.DirectConnect.StopBGPFailoverTest
import Network.AWS.DirectConnect.TagResource
import Network.AWS.DirectConnect.Types
import Network.AWS.DirectConnect.UntagResource
import Network.AWS.DirectConnect.UpdateDirectConnectGatewayAssociation
import Network.AWS.DirectConnect.UpdateLag
import Network.AWS.DirectConnect.UpdateVirtualInterfaceAttributes
import Network.AWS.DirectConnect.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'DirectConnect'.

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
