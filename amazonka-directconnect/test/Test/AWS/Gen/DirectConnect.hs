{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.DirectConnect
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.DirectConnect where

import Data.Proxy
import Network.AWS.DirectConnect
import Test.AWS.DirectConnect.Internal
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
--         [ requestConfirmPublicVirtualInterface $
--             confirmPublicVirtualInterface
--
--         , requestStartBGPFailoverTest $
--             startBGPFailoverTest
--
--         , requestDeleteConnection $
--             deleteConnection
--
--         , requestDeleteDirectConnectGatewayAssociationProposal $
--             deleteDirectConnectGatewayAssociationProposal
--
--         , requestStopBGPFailoverTest $
--             stopBGPFailoverTest
--
--         , requestDescribeVirtualGateways $
--             describeVirtualGateways
--
--         , requestAllocatePrivateVirtualInterface $
--             allocatePrivateVirtualInterface
--
--         , requestDescribeDirectConnectGatewayAssociations $
--             describeDirectConnectGatewayAssociations
--
--         , requestConfirmConnection $
--             confirmConnection
--
--         , requestDescribeTags $
--             describeTags
--
--         , requestDescribeDirectConnectGatewayAttachments $
--             describeDirectConnectGatewayAttachments
--
--         , requestDescribeHostedConnections $
--             describeHostedConnections
--
--         , requestCreatePublicVirtualInterface $
--             createPublicVirtualInterface
--
--         , requestAcceptDirectConnectGatewayAssociationProposal $
--             acceptDirectConnectGatewayAssociationProposal
--
--         , requestCreateDirectConnectGatewayAssociation $
--             createDirectConnectGatewayAssociation
--
--         , requestCreateInterconnect $
--             createInterconnect
--
--         , requestConfirmPrivateVirtualInterface $
--             confirmPrivateVirtualInterface
--
--         , requestUpdateLag $
--             updateLag
--
--         , requestDeleteInterconnect $
--             deleteInterconnect
--
--         , requestDeleteLag $
--             deleteLag
--
--         , requestAssociateHostedConnection $
--             associateHostedConnection
--
--         , requestCreateBGPPeer $
--             createBGPPeer
--
--         , requestUntagResource $
--             untagResource
--
--         , requestDisassociateConnectionFromLag $
--             disassociateConnectionFromLag
--
--         , requestTagResource $
--             tagResource
--
--         , requestDeleteVirtualInterface $
--             deleteVirtualInterface
--
--         , requestDescribeDirectConnectGateways $
--             describeDirectConnectGateways
--
--         , requestUpdateVirtualInterfaceAttributes $
--             updateVirtualInterfaceAttributes
--
--         , requestAssociateConnectionWithLag $
--             associateConnectionWithLag
--
--         , requestCreateConnection $
--             createConnection
--
--         , requestDescribeVirtualInterfaces $
--             describeVirtualInterfaces
--
--         , requestListVirtualInterfaceTestHistory $
--             listVirtualInterfaceTestHistory
--
--         , requestCreateTransitVirtualInterface $
--             createTransitVirtualInterface
--
--         , requestDescribeLoa $
--             describeLoa
--
--         , requestCreateDirectConnectGateway $
--             createDirectConnectGateway
--
--         , requestDescribeInterconnects $
--             describeInterconnects
--
--         , requestDescribeLags $
--             describeLags
--
--         , requestConfirmTransitVirtualInterface $
--             confirmTransitVirtualInterface
--
--         , requestCreateLag $
--             createLag
--
--         , requestDeleteBGPPeer $
--             deleteBGPPeer
--
--         , requestAllocateTransitVirtualInterface $
--             allocateTransitVirtualInterface
--
--         , requestDescribeLocations $
--             describeLocations
--
--         , requestDeleteDirectConnectGatewayAssociation $
--             deleteDirectConnectGatewayAssociation
--
--         , requestUpdateDirectConnectGatewayAssociation $
--             updateDirectConnectGatewayAssociation
--
--         , requestAllocatePublicVirtualInterface $
--             allocatePublicVirtualInterface
--
--         , requestDescribeConnections $
--             describeConnections
--
--         , requestAssociateVirtualInterface $
--             associateVirtualInterface
--
--         , requestDescribeDirectConnectGatewayAssociationProposals $
--             describeDirectConnectGatewayAssociationProposals
--
--         , requestCreatePrivateVirtualInterface $
--             createPrivateVirtualInterface
--
--         , requestAllocateHostedConnection $
--             allocateHostedConnection
--
--         , requestCreateDirectConnectGatewayAssociationProposal $
--             createDirectConnectGatewayAssociationProposal
--
--         , requestDeleteDirectConnectGateway $
--             deleteDirectConnectGateway
--
--           ]

--     , testGroup "response"
--         [ responseConfirmPublicVirtualInterface $
--             confirmPublicVirtualInterfaceResponse
--
--         , responseStartBGPFailoverTest $
--             startBGPFailoverTestResponse
--
--         , responseDeleteConnection $
--             connection
--
--         , responseDeleteDirectConnectGatewayAssociationProposal $
--             deleteDirectConnectGatewayAssociationProposalResponse
--
--         , responseStopBGPFailoverTest $
--             stopBGPFailoverTestResponse
--
--         , responseDescribeVirtualGateways $
--             describeVirtualGatewaysResponse
--
--         , responseAllocatePrivateVirtualInterface $
--             virtualInterface
--
--         , responseDescribeDirectConnectGatewayAssociations $
--             describeDirectConnectGatewayAssociationsResponse
--
--         , responseConfirmConnection $
--             confirmConnectionResponse
--
--         , responseDescribeTags $
--             describeTagsResponse
--
--         , responseDescribeDirectConnectGatewayAttachments $
--             describeDirectConnectGatewayAttachmentsResponse
--
--         , responseDescribeHostedConnections $
--             connections
--
--         , responseCreatePublicVirtualInterface $
--             virtualInterface
--
--         , responseAcceptDirectConnectGatewayAssociationProposal $
--             acceptDirectConnectGatewayAssociationProposalResponse
--
--         , responseCreateDirectConnectGatewayAssociation $
--             createDirectConnectGatewayAssociationResponse
--
--         , responseCreateInterconnect $
--             interconnect
--
--         , responseConfirmPrivateVirtualInterface $
--             confirmPrivateVirtualInterfaceResponse
--
--         , responseUpdateLag $
--             lag
--
--         , responseDeleteInterconnect $
--             deleteInterconnectResponse
--
--         , responseDeleteLag $
--             lag
--
--         , responseAssociateHostedConnection $
--             connection
--
--         , responseCreateBGPPeer $
--             createBGPPeerResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseDisassociateConnectionFromLag $
--             connection
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseDeleteVirtualInterface $
--             deleteVirtualInterfaceResponse
--
--         , responseDescribeDirectConnectGateways $
--             describeDirectConnectGatewaysResponse
--
--         , responseUpdateVirtualInterfaceAttributes $
--             virtualInterface
--
--         , responseAssociateConnectionWithLag $
--             connection
--
--         , responseCreateConnection $
--             connection
--
--         , responseDescribeVirtualInterfaces $
--             describeVirtualInterfacesResponse
--
--         , responseListVirtualInterfaceTestHistory $
--             listVirtualInterfaceTestHistoryResponse
--
--         , responseCreateTransitVirtualInterface $
--             createTransitVirtualInterfaceResponse
--
--         , responseDescribeLoa $
--             describeLoaResponse
--
--         , responseCreateDirectConnectGateway $
--             createDirectConnectGatewayResponse
--
--         , responseDescribeInterconnects $
--             describeInterconnectsResponse
--
--         , responseDescribeLags $
--             describeLagsResponse
--
--         , responseConfirmTransitVirtualInterface $
--             confirmTransitVirtualInterfaceResponse
--
--         , responseCreateLag $
--             lag
--
--         , responseDeleteBGPPeer $
--             deleteBGPPeerResponse
--
--         , responseAllocateTransitVirtualInterface $
--             allocateTransitVirtualInterfaceResponse
--
--         , responseDescribeLocations $
--             describeLocationsResponse
--
--         , responseDeleteDirectConnectGatewayAssociation $
--             deleteDirectConnectGatewayAssociationResponse
--
--         , responseUpdateDirectConnectGatewayAssociation $
--             updateDirectConnectGatewayAssociationResponse
--
--         , responseAllocatePublicVirtualInterface $
--             virtualInterface
--
--         , responseDescribeConnections $
--             connections
--
--         , responseAssociateVirtualInterface $
--             virtualInterface
--
--         , responseDescribeDirectConnectGatewayAssociationProposals $
--             describeDirectConnectGatewayAssociationProposalsResponse
--
--         , responseCreatePrivateVirtualInterface $
--             virtualInterface
--
--         , responseAllocateHostedConnection $
--             connection
--
--         , responseCreateDirectConnectGatewayAssociationProposal $
--             createDirectConnectGatewayAssociationProposalResponse
--
--         , responseDeleteDirectConnectGateway $
--             deleteDirectConnectGatewayResponse
--
--           ]
--     ]

-- Requests

requestConfirmPublicVirtualInterface :: ConfirmPublicVirtualInterface -> TestTree
requestConfirmPublicVirtualInterface =
  req
    "ConfirmPublicVirtualInterface"
    "fixture/ConfirmPublicVirtualInterface.yaml"

requestStartBGPFailoverTest :: StartBGPFailoverTest -> TestTree
requestStartBGPFailoverTest =
  req
    "StartBGPFailoverTest"
    "fixture/StartBGPFailoverTest.yaml"

requestDeleteConnection :: DeleteConnection -> TestTree
requestDeleteConnection =
  req
    "DeleteConnection"
    "fixture/DeleteConnection.yaml"

requestDeleteDirectConnectGatewayAssociationProposal :: DeleteDirectConnectGatewayAssociationProposal -> TestTree
requestDeleteDirectConnectGatewayAssociationProposal =
  req
    "DeleteDirectConnectGatewayAssociationProposal"
    "fixture/DeleteDirectConnectGatewayAssociationProposal.yaml"

requestStopBGPFailoverTest :: StopBGPFailoverTest -> TestTree
requestStopBGPFailoverTest =
  req
    "StopBGPFailoverTest"
    "fixture/StopBGPFailoverTest.yaml"

requestDescribeVirtualGateways :: DescribeVirtualGateways -> TestTree
requestDescribeVirtualGateways =
  req
    "DescribeVirtualGateways"
    "fixture/DescribeVirtualGateways.yaml"

requestAllocatePrivateVirtualInterface :: AllocatePrivateVirtualInterface -> TestTree
requestAllocatePrivateVirtualInterface =
  req
    "AllocatePrivateVirtualInterface"
    "fixture/AllocatePrivateVirtualInterface.yaml"

requestDescribeDirectConnectGatewayAssociations :: DescribeDirectConnectGatewayAssociations -> TestTree
requestDescribeDirectConnectGatewayAssociations =
  req
    "DescribeDirectConnectGatewayAssociations"
    "fixture/DescribeDirectConnectGatewayAssociations.yaml"

requestConfirmConnection :: ConfirmConnection -> TestTree
requestConfirmConnection =
  req
    "ConfirmConnection"
    "fixture/ConfirmConnection.yaml"

requestDescribeTags :: DescribeTags -> TestTree
requestDescribeTags =
  req
    "DescribeTags"
    "fixture/DescribeTags.yaml"

requestDescribeDirectConnectGatewayAttachments :: DescribeDirectConnectGatewayAttachments -> TestTree
requestDescribeDirectConnectGatewayAttachments =
  req
    "DescribeDirectConnectGatewayAttachments"
    "fixture/DescribeDirectConnectGatewayAttachments.yaml"

requestDescribeHostedConnections :: DescribeHostedConnections -> TestTree
requestDescribeHostedConnections =
  req
    "DescribeHostedConnections"
    "fixture/DescribeHostedConnections.yaml"

requestCreatePublicVirtualInterface :: CreatePublicVirtualInterface -> TestTree
requestCreatePublicVirtualInterface =
  req
    "CreatePublicVirtualInterface"
    "fixture/CreatePublicVirtualInterface.yaml"

requestAcceptDirectConnectGatewayAssociationProposal :: AcceptDirectConnectGatewayAssociationProposal -> TestTree
requestAcceptDirectConnectGatewayAssociationProposal =
  req
    "AcceptDirectConnectGatewayAssociationProposal"
    "fixture/AcceptDirectConnectGatewayAssociationProposal.yaml"

requestCreateDirectConnectGatewayAssociation :: CreateDirectConnectGatewayAssociation -> TestTree
requestCreateDirectConnectGatewayAssociation =
  req
    "CreateDirectConnectGatewayAssociation"
    "fixture/CreateDirectConnectGatewayAssociation.yaml"

requestCreateInterconnect :: CreateInterconnect -> TestTree
requestCreateInterconnect =
  req
    "CreateInterconnect"
    "fixture/CreateInterconnect.yaml"

requestConfirmPrivateVirtualInterface :: ConfirmPrivateVirtualInterface -> TestTree
requestConfirmPrivateVirtualInterface =
  req
    "ConfirmPrivateVirtualInterface"
    "fixture/ConfirmPrivateVirtualInterface.yaml"

requestUpdateLag :: UpdateLag -> TestTree
requestUpdateLag =
  req
    "UpdateLag"
    "fixture/UpdateLag.yaml"

requestDeleteInterconnect :: DeleteInterconnect -> TestTree
requestDeleteInterconnect =
  req
    "DeleteInterconnect"
    "fixture/DeleteInterconnect.yaml"

requestDeleteLag :: DeleteLag -> TestTree
requestDeleteLag =
  req
    "DeleteLag"
    "fixture/DeleteLag.yaml"

requestAssociateHostedConnection :: AssociateHostedConnection -> TestTree
requestAssociateHostedConnection =
  req
    "AssociateHostedConnection"
    "fixture/AssociateHostedConnection.yaml"

requestCreateBGPPeer :: CreateBGPPeer -> TestTree
requestCreateBGPPeer =
  req
    "CreateBGPPeer"
    "fixture/CreateBGPPeer.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestDisassociateConnectionFromLag :: DisassociateConnectionFromLag -> TestTree
requestDisassociateConnectionFromLag =
  req
    "DisassociateConnectionFromLag"
    "fixture/DisassociateConnectionFromLag.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestDeleteVirtualInterface :: DeleteVirtualInterface -> TestTree
requestDeleteVirtualInterface =
  req
    "DeleteVirtualInterface"
    "fixture/DeleteVirtualInterface.yaml"

requestDescribeDirectConnectGateways :: DescribeDirectConnectGateways -> TestTree
requestDescribeDirectConnectGateways =
  req
    "DescribeDirectConnectGateways"
    "fixture/DescribeDirectConnectGateways.yaml"

requestUpdateVirtualInterfaceAttributes :: UpdateVirtualInterfaceAttributes -> TestTree
requestUpdateVirtualInterfaceAttributes =
  req
    "UpdateVirtualInterfaceAttributes"
    "fixture/UpdateVirtualInterfaceAttributes.yaml"

requestAssociateConnectionWithLag :: AssociateConnectionWithLag -> TestTree
requestAssociateConnectionWithLag =
  req
    "AssociateConnectionWithLag"
    "fixture/AssociateConnectionWithLag.yaml"

requestCreateConnection :: CreateConnection -> TestTree
requestCreateConnection =
  req
    "CreateConnection"
    "fixture/CreateConnection.yaml"

requestDescribeVirtualInterfaces :: DescribeVirtualInterfaces -> TestTree
requestDescribeVirtualInterfaces =
  req
    "DescribeVirtualInterfaces"
    "fixture/DescribeVirtualInterfaces.yaml"

requestListVirtualInterfaceTestHistory :: ListVirtualInterfaceTestHistory -> TestTree
requestListVirtualInterfaceTestHistory =
  req
    "ListVirtualInterfaceTestHistory"
    "fixture/ListVirtualInterfaceTestHistory.yaml"

requestCreateTransitVirtualInterface :: CreateTransitVirtualInterface -> TestTree
requestCreateTransitVirtualInterface =
  req
    "CreateTransitVirtualInterface"
    "fixture/CreateTransitVirtualInterface.yaml"

requestDescribeLoa :: DescribeLoa -> TestTree
requestDescribeLoa =
  req
    "DescribeLoa"
    "fixture/DescribeLoa.yaml"

requestCreateDirectConnectGateway :: CreateDirectConnectGateway -> TestTree
requestCreateDirectConnectGateway =
  req
    "CreateDirectConnectGateway"
    "fixture/CreateDirectConnectGateway.yaml"

requestDescribeInterconnects :: DescribeInterconnects -> TestTree
requestDescribeInterconnects =
  req
    "DescribeInterconnects"
    "fixture/DescribeInterconnects.yaml"

requestDescribeLags :: DescribeLags -> TestTree
requestDescribeLags =
  req
    "DescribeLags"
    "fixture/DescribeLags.yaml"

requestConfirmTransitVirtualInterface :: ConfirmTransitVirtualInterface -> TestTree
requestConfirmTransitVirtualInterface =
  req
    "ConfirmTransitVirtualInterface"
    "fixture/ConfirmTransitVirtualInterface.yaml"

requestCreateLag :: CreateLag -> TestTree
requestCreateLag =
  req
    "CreateLag"
    "fixture/CreateLag.yaml"

requestDeleteBGPPeer :: DeleteBGPPeer -> TestTree
requestDeleteBGPPeer =
  req
    "DeleteBGPPeer"
    "fixture/DeleteBGPPeer.yaml"

requestAllocateTransitVirtualInterface :: AllocateTransitVirtualInterface -> TestTree
requestAllocateTransitVirtualInterface =
  req
    "AllocateTransitVirtualInterface"
    "fixture/AllocateTransitVirtualInterface.yaml"

requestDescribeLocations :: DescribeLocations -> TestTree
requestDescribeLocations =
  req
    "DescribeLocations"
    "fixture/DescribeLocations.yaml"

requestDeleteDirectConnectGatewayAssociation :: DeleteDirectConnectGatewayAssociation -> TestTree
requestDeleteDirectConnectGatewayAssociation =
  req
    "DeleteDirectConnectGatewayAssociation"
    "fixture/DeleteDirectConnectGatewayAssociation.yaml"

requestUpdateDirectConnectGatewayAssociation :: UpdateDirectConnectGatewayAssociation -> TestTree
requestUpdateDirectConnectGatewayAssociation =
  req
    "UpdateDirectConnectGatewayAssociation"
    "fixture/UpdateDirectConnectGatewayAssociation.yaml"

requestAllocatePublicVirtualInterface :: AllocatePublicVirtualInterface -> TestTree
requestAllocatePublicVirtualInterface =
  req
    "AllocatePublicVirtualInterface"
    "fixture/AllocatePublicVirtualInterface.yaml"

requestDescribeConnections :: DescribeConnections -> TestTree
requestDescribeConnections =
  req
    "DescribeConnections"
    "fixture/DescribeConnections.yaml"

requestAssociateVirtualInterface :: AssociateVirtualInterface -> TestTree
requestAssociateVirtualInterface =
  req
    "AssociateVirtualInterface"
    "fixture/AssociateVirtualInterface.yaml"

requestDescribeDirectConnectGatewayAssociationProposals :: DescribeDirectConnectGatewayAssociationProposals -> TestTree
requestDescribeDirectConnectGatewayAssociationProposals =
  req
    "DescribeDirectConnectGatewayAssociationProposals"
    "fixture/DescribeDirectConnectGatewayAssociationProposals.yaml"

requestCreatePrivateVirtualInterface :: CreatePrivateVirtualInterface -> TestTree
requestCreatePrivateVirtualInterface =
  req
    "CreatePrivateVirtualInterface"
    "fixture/CreatePrivateVirtualInterface.yaml"

requestAllocateHostedConnection :: AllocateHostedConnection -> TestTree
requestAllocateHostedConnection =
  req
    "AllocateHostedConnection"
    "fixture/AllocateHostedConnection.yaml"

requestCreateDirectConnectGatewayAssociationProposal :: CreateDirectConnectGatewayAssociationProposal -> TestTree
requestCreateDirectConnectGatewayAssociationProposal =
  req
    "CreateDirectConnectGatewayAssociationProposal"
    "fixture/CreateDirectConnectGatewayAssociationProposal.yaml"

requestDeleteDirectConnectGateway :: DeleteDirectConnectGateway -> TestTree
requestDeleteDirectConnectGateway =
  req
    "DeleteDirectConnectGateway"
    "fixture/DeleteDirectConnectGateway.yaml"

-- Responses

responseConfirmPublicVirtualInterface :: ConfirmPublicVirtualInterfaceResponse -> TestTree
responseConfirmPublicVirtualInterface =
  res
    "ConfirmPublicVirtualInterfaceResponse"
    "fixture/ConfirmPublicVirtualInterfaceResponse.proto"
    directConnect
    (Proxy :: Proxy ConfirmPublicVirtualInterface)

responseStartBGPFailoverTest :: StartBGPFailoverTestResponse -> TestTree
responseStartBGPFailoverTest =
  res
    "StartBGPFailoverTestResponse"
    "fixture/StartBGPFailoverTestResponse.proto"
    directConnect
    (Proxy :: Proxy StartBGPFailoverTest)

responseDeleteConnection :: Connection -> TestTree
responseDeleteConnection =
  res
    "DeleteConnectionResponse"
    "fixture/DeleteConnectionResponse.proto"
    directConnect
    (Proxy :: Proxy DeleteConnection)

responseDeleteDirectConnectGatewayAssociationProposal :: DeleteDirectConnectGatewayAssociationProposalResponse -> TestTree
responseDeleteDirectConnectGatewayAssociationProposal =
  res
    "DeleteDirectConnectGatewayAssociationProposalResponse"
    "fixture/DeleteDirectConnectGatewayAssociationProposalResponse.proto"
    directConnect
    (Proxy :: Proxy DeleteDirectConnectGatewayAssociationProposal)

responseStopBGPFailoverTest :: StopBGPFailoverTestResponse -> TestTree
responseStopBGPFailoverTest =
  res
    "StopBGPFailoverTestResponse"
    "fixture/StopBGPFailoverTestResponse.proto"
    directConnect
    (Proxy :: Proxy StopBGPFailoverTest)

responseDescribeVirtualGateways :: DescribeVirtualGatewaysResponse -> TestTree
responseDescribeVirtualGateways =
  res
    "DescribeVirtualGatewaysResponse"
    "fixture/DescribeVirtualGatewaysResponse.proto"
    directConnect
    (Proxy :: Proxy DescribeVirtualGateways)

responseAllocatePrivateVirtualInterface :: VirtualInterface -> TestTree
responseAllocatePrivateVirtualInterface =
  res
    "AllocatePrivateVirtualInterfaceResponse"
    "fixture/AllocatePrivateVirtualInterfaceResponse.proto"
    directConnect
    (Proxy :: Proxy AllocatePrivateVirtualInterface)

responseDescribeDirectConnectGatewayAssociations :: DescribeDirectConnectGatewayAssociationsResponse -> TestTree
responseDescribeDirectConnectGatewayAssociations =
  res
    "DescribeDirectConnectGatewayAssociationsResponse"
    "fixture/DescribeDirectConnectGatewayAssociationsResponse.proto"
    directConnect
    (Proxy :: Proxy DescribeDirectConnectGatewayAssociations)

responseConfirmConnection :: ConfirmConnectionResponse -> TestTree
responseConfirmConnection =
  res
    "ConfirmConnectionResponse"
    "fixture/ConfirmConnectionResponse.proto"
    directConnect
    (Proxy :: Proxy ConfirmConnection)

responseDescribeTags :: DescribeTagsResponse -> TestTree
responseDescribeTags =
  res
    "DescribeTagsResponse"
    "fixture/DescribeTagsResponse.proto"
    directConnect
    (Proxy :: Proxy DescribeTags)

responseDescribeDirectConnectGatewayAttachments :: DescribeDirectConnectGatewayAttachmentsResponse -> TestTree
responseDescribeDirectConnectGatewayAttachments =
  res
    "DescribeDirectConnectGatewayAttachmentsResponse"
    "fixture/DescribeDirectConnectGatewayAttachmentsResponse.proto"
    directConnect
    (Proxy :: Proxy DescribeDirectConnectGatewayAttachments)

responseDescribeHostedConnections :: Connections -> TestTree
responseDescribeHostedConnections =
  res
    "DescribeHostedConnectionsResponse"
    "fixture/DescribeHostedConnectionsResponse.proto"
    directConnect
    (Proxy :: Proxy DescribeHostedConnections)

responseCreatePublicVirtualInterface :: VirtualInterface -> TestTree
responseCreatePublicVirtualInterface =
  res
    "CreatePublicVirtualInterfaceResponse"
    "fixture/CreatePublicVirtualInterfaceResponse.proto"
    directConnect
    (Proxy :: Proxy CreatePublicVirtualInterface)

responseAcceptDirectConnectGatewayAssociationProposal :: AcceptDirectConnectGatewayAssociationProposalResponse -> TestTree
responseAcceptDirectConnectGatewayAssociationProposal =
  res
    "AcceptDirectConnectGatewayAssociationProposalResponse"
    "fixture/AcceptDirectConnectGatewayAssociationProposalResponse.proto"
    directConnect
    (Proxy :: Proxy AcceptDirectConnectGatewayAssociationProposal)

responseCreateDirectConnectGatewayAssociation :: CreateDirectConnectGatewayAssociationResponse -> TestTree
responseCreateDirectConnectGatewayAssociation =
  res
    "CreateDirectConnectGatewayAssociationResponse"
    "fixture/CreateDirectConnectGatewayAssociationResponse.proto"
    directConnect
    (Proxy :: Proxy CreateDirectConnectGatewayAssociation)

responseCreateInterconnect :: Interconnect -> TestTree
responseCreateInterconnect =
  res
    "CreateInterconnectResponse"
    "fixture/CreateInterconnectResponse.proto"
    directConnect
    (Proxy :: Proxy CreateInterconnect)

responseConfirmPrivateVirtualInterface :: ConfirmPrivateVirtualInterfaceResponse -> TestTree
responseConfirmPrivateVirtualInterface =
  res
    "ConfirmPrivateVirtualInterfaceResponse"
    "fixture/ConfirmPrivateVirtualInterfaceResponse.proto"
    directConnect
    (Proxy :: Proxy ConfirmPrivateVirtualInterface)

responseUpdateLag :: Lag -> TestTree
responseUpdateLag =
  res
    "UpdateLagResponse"
    "fixture/UpdateLagResponse.proto"
    directConnect
    (Proxy :: Proxy UpdateLag)

responseDeleteInterconnect :: DeleteInterconnectResponse -> TestTree
responseDeleteInterconnect =
  res
    "DeleteInterconnectResponse"
    "fixture/DeleteInterconnectResponse.proto"
    directConnect
    (Proxy :: Proxy DeleteInterconnect)

responseDeleteLag :: Lag -> TestTree
responseDeleteLag =
  res
    "DeleteLagResponse"
    "fixture/DeleteLagResponse.proto"
    directConnect
    (Proxy :: Proxy DeleteLag)

responseAssociateHostedConnection :: Connection -> TestTree
responseAssociateHostedConnection =
  res
    "AssociateHostedConnectionResponse"
    "fixture/AssociateHostedConnectionResponse.proto"
    directConnect
    (Proxy :: Proxy AssociateHostedConnection)

responseCreateBGPPeer :: CreateBGPPeerResponse -> TestTree
responseCreateBGPPeer =
  res
    "CreateBGPPeerResponse"
    "fixture/CreateBGPPeerResponse.proto"
    directConnect
    (Proxy :: Proxy CreateBGPPeer)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    directConnect
    (Proxy :: Proxy UntagResource)

responseDisassociateConnectionFromLag :: Connection -> TestTree
responseDisassociateConnectionFromLag =
  res
    "DisassociateConnectionFromLagResponse"
    "fixture/DisassociateConnectionFromLagResponse.proto"
    directConnect
    (Proxy :: Proxy DisassociateConnectionFromLag)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    directConnect
    (Proxy :: Proxy TagResource)

responseDeleteVirtualInterface :: DeleteVirtualInterfaceResponse -> TestTree
responseDeleteVirtualInterface =
  res
    "DeleteVirtualInterfaceResponse"
    "fixture/DeleteVirtualInterfaceResponse.proto"
    directConnect
    (Proxy :: Proxy DeleteVirtualInterface)

responseDescribeDirectConnectGateways :: DescribeDirectConnectGatewaysResponse -> TestTree
responseDescribeDirectConnectGateways =
  res
    "DescribeDirectConnectGatewaysResponse"
    "fixture/DescribeDirectConnectGatewaysResponse.proto"
    directConnect
    (Proxy :: Proxy DescribeDirectConnectGateways)

responseUpdateVirtualInterfaceAttributes :: VirtualInterface -> TestTree
responseUpdateVirtualInterfaceAttributes =
  res
    "UpdateVirtualInterfaceAttributesResponse"
    "fixture/UpdateVirtualInterfaceAttributesResponse.proto"
    directConnect
    (Proxy :: Proxy UpdateVirtualInterfaceAttributes)

responseAssociateConnectionWithLag :: Connection -> TestTree
responseAssociateConnectionWithLag =
  res
    "AssociateConnectionWithLagResponse"
    "fixture/AssociateConnectionWithLagResponse.proto"
    directConnect
    (Proxy :: Proxy AssociateConnectionWithLag)

responseCreateConnection :: Connection -> TestTree
responseCreateConnection =
  res
    "CreateConnectionResponse"
    "fixture/CreateConnectionResponse.proto"
    directConnect
    (Proxy :: Proxy CreateConnection)

responseDescribeVirtualInterfaces :: DescribeVirtualInterfacesResponse -> TestTree
responseDescribeVirtualInterfaces =
  res
    "DescribeVirtualInterfacesResponse"
    "fixture/DescribeVirtualInterfacesResponse.proto"
    directConnect
    (Proxy :: Proxy DescribeVirtualInterfaces)

responseListVirtualInterfaceTestHistory :: ListVirtualInterfaceTestHistoryResponse -> TestTree
responseListVirtualInterfaceTestHistory =
  res
    "ListVirtualInterfaceTestHistoryResponse"
    "fixture/ListVirtualInterfaceTestHistoryResponse.proto"
    directConnect
    (Proxy :: Proxy ListVirtualInterfaceTestHistory)

responseCreateTransitVirtualInterface :: CreateTransitVirtualInterfaceResponse -> TestTree
responseCreateTransitVirtualInterface =
  res
    "CreateTransitVirtualInterfaceResponse"
    "fixture/CreateTransitVirtualInterfaceResponse.proto"
    directConnect
    (Proxy :: Proxy CreateTransitVirtualInterface)

responseDescribeLoa :: DescribeLoaResponse -> TestTree
responseDescribeLoa =
  res
    "DescribeLoaResponse"
    "fixture/DescribeLoaResponse.proto"
    directConnect
    (Proxy :: Proxy DescribeLoa)

responseCreateDirectConnectGateway :: CreateDirectConnectGatewayResponse -> TestTree
responseCreateDirectConnectGateway =
  res
    "CreateDirectConnectGatewayResponse"
    "fixture/CreateDirectConnectGatewayResponse.proto"
    directConnect
    (Proxy :: Proxy CreateDirectConnectGateway)

responseDescribeInterconnects :: DescribeInterconnectsResponse -> TestTree
responseDescribeInterconnects =
  res
    "DescribeInterconnectsResponse"
    "fixture/DescribeInterconnectsResponse.proto"
    directConnect
    (Proxy :: Proxy DescribeInterconnects)

responseDescribeLags :: DescribeLagsResponse -> TestTree
responseDescribeLags =
  res
    "DescribeLagsResponse"
    "fixture/DescribeLagsResponse.proto"
    directConnect
    (Proxy :: Proxy DescribeLags)

responseConfirmTransitVirtualInterface :: ConfirmTransitVirtualInterfaceResponse -> TestTree
responseConfirmTransitVirtualInterface =
  res
    "ConfirmTransitVirtualInterfaceResponse"
    "fixture/ConfirmTransitVirtualInterfaceResponse.proto"
    directConnect
    (Proxy :: Proxy ConfirmTransitVirtualInterface)

responseCreateLag :: Lag -> TestTree
responseCreateLag =
  res
    "CreateLagResponse"
    "fixture/CreateLagResponse.proto"
    directConnect
    (Proxy :: Proxy CreateLag)

responseDeleteBGPPeer :: DeleteBGPPeerResponse -> TestTree
responseDeleteBGPPeer =
  res
    "DeleteBGPPeerResponse"
    "fixture/DeleteBGPPeerResponse.proto"
    directConnect
    (Proxy :: Proxy DeleteBGPPeer)

responseAllocateTransitVirtualInterface :: AllocateTransitVirtualInterfaceResponse -> TestTree
responseAllocateTransitVirtualInterface =
  res
    "AllocateTransitVirtualInterfaceResponse"
    "fixture/AllocateTransitVirtualInterfaceResponse.proto"
    directConnect
    (Proxy :: Proxy AllocateTransitVirtualInterface)

responseDescribeLocations :: DescribeLocationsResponse -> TestTree
responseDescribeLocations =
  res
    "DescribeLocationsResponse"
    "fixture/DescribeLocationsResponse.proto"
    directConnect
    (Proxy :: Proxy DescribeLocations)

responseDeleteDirectConnectGatewayAssociation :: DeleteDirectConnectGatewayAssociationResponse -> TestTree
responseDeleteDirectConnectGatewayAssociation =
  res
    "DeleteDirectConnectGatewayAssociationResponse"
    "fixture/DeleteDirectConnectGatewayAssociationResponse.proto"
    directConnect
    (Proxy :: Proxy DeleteDirectConnectGatewayAssociation)

responseUpdateDirectConnectGatewayAssociation :: UpdateDirectConnectGatewayAssociationResponse -> TestTree
responseUpdateDirectConnectGatewayAssociation =
  res
    "UpdateDirectConnectGatewayAssociationResponse"
    "fixture/UpdateDirectConnectGatewayAssociationResponse.proto"
    directConnect
    (Proxy :: Proxy UpdateDirectConnectGatewayAssociation)

responseAllocatePublicVirtualInterface :: VirtualInterface -> TestTree
responseAllocatePublicVirtualInterface =
  res
    "AllocatePublicVirtualInterfaceResponse"
    "fixture/AllocatePublicVirtualInterfaceResponse.proto"
    directConnect
    (Proxy :: Proxy AllocatePublicVirtualInterface)

responseDescribeConnections :: Connections -> TestTree
responseDescribeConnections =
  res
    "DescribeConnectionsResponse"
    "fixture/DescribeConnectionsResponse.proto"
    directConnect
    (Proxy :: Proxy DescribeConnections)

responseAssociateVirtualInterface :: VirtualInterface -> TestTree
responseAssociateVirtualInterface =
  res
    "AssociateVirtualInterfaceResponse"
    "fixture/AssociateVirtualInterfaceResponse.proto"
    directConnect
    (Proxy :: Proxy AssociateVirtualInterface)

responseDescribeDirectConnectGatewayAssociationProposals :: DescribeDirectConnectGatewayAssociationProposalsResponse -> TestTree
responseDescribeDirectConnectGatewayAssociationProposals =
  res
    "DescribeDirectConnectGatewayAssociationProposalsResponse"
    "fixture/DescribeDirectConnectGatewayAssociationProposalsResponse.proto"
    directConnect
    (Proxy :: Proxy DescribeDirectConnectGatewayAssociationProposals)

responseCreatePrivateVirtualInterface :: VirtualInterface -> TestTree
responseCreatePrivateVirtualInterface =
  res
    "CreatePrivateVirtualInterfaceResponse"
    "fixture/CreatePrivateVirtualInterfaceResponse.proto"
    directConnect
    (Proxy :: Proxy CreatePrivateVirtualInterface)

responseAllocateHostedConnection :: Connection -> TestTree
responseAllocateHostedConnection =
  res
    "AllocateHostedConnectionResponse"
    "fixture/AllocateHostedConnectionResponse.proto"
    directConnect
    (Proxy :: Proxy AllocateHostedConnection)

responseCreateDirectConnectGatewayAssociationProposal :: CreateDirectConnectGatewayAssociationProposalResponse -> TestTree
responseCreateDirectConnectGatewayAssociationProposal =
  res
    "CreateDirectConnectGatewayAssociationProposalResponse"
    "fixture/CreateDirectConnectGatewayAssociationProposalResponse.proto"
    directConnect
    (Proxy :: Proxy CreateDirectConnectGatewayAssociationProposal)

responseDeleteDirectConnectGateway :: DeleteDirectConnectGatewayResponse -> TestTree
responseDeleteDirectConnectGateway =
  res
    "DeleteDirectConnectGatewayResponse"
    "fixture/DeleteDirectConnectGatewayResponse.proto"
    directConnect
    (Proxy :: Proxy DeleteDirectConnectGateway)
