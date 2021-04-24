{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.OpsWorksCM
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.OpsWorksCM where

import Data.Proxy
import Network.AWS.OpsWorksCM
import Test.AWS.Fixture
import Test.AWS.OpsWorksCM.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDeleteBackup $
--             deleteBackup
--
--         , requestUpdateServer $
--             updateServer
--
--         , requestDeleteServer $
--             deleteServer
--
--         , requestCreateServer $
--             createServer
--
--         , requestDescribeAccountAttributes $
--             describeAccountAttributes
--
--         , requestExportServerEngineAttribute $
--             exportServerEngineAttribute
--
--         , requestDescribeServers $
--             describeServers
--
--         , requestUntagResource $
--             untagResource
--
--         , requestDescribeNodeAssociationStatus $
--             describeNodeAssociationStatus
--
--         , requestTagResource $
--             tagResource
--
--         , requestDisassociateNode $
--             disassociateNode
--
--         , requestDescribeEvents $
--             describeEvents
--
--         , requestCreateBackup $
--             createBackup
--
--         , requestAssociateNode $
--             associateNode
--
--         , requestDescribeBackups $
--             describeBackups
--
--         , requestUpdateServerEngineAttributes $
--             updateServerEngineAttributes
--
--         , requestStartMaintenance $
--             startMaintenance
--
--         , requestRestoreServer $
--             restoreServer
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--           ]

--     , testGroup "response"
--         [ responseDeleteBackup $
--             deleteBackupResponse
--
--         , responseUpdateServer $
--             updateServerResponse
--
--         , responseDeleteServer $
--             deleteServerResponse
--
--         , responseCreateServer $
--             createServerResponse
--
--         , responseDescribeAccountAttributes $
--             describeAccountAttributesResponse
--
--         , responseExportServerEngineAttribute $
--             exportServerEngineAttributeResponse
--
--         , responseDescribeServers $
--             describeServersResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseDescribeNodeAssociationStatus $
--             describeNodeAssociationStatusResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseDisassociateNode $
--             disassociateNodeResponse
--
--         , responseDescribeEvents $
--             describeEventsResponse
--
--         , responseCreateBackup $
--             createBackupResponse
--
--         , responseAssociateNode $
--             associateNodeResponse
--
--         , responseDescribeBackups $
--             describeBackupsResponse
--
--         , responseUpdateServerEngineAttributes $
--             updateServerEngineAttributesResponse
--
--         , responseStartMaintenance $
--             startMaintenanceResponse
--
--         , responseRestoreServer $
--             restoreServerResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--           ]
--     ]

-- Requests

requestDeleteBackup :: DeleteBackup -> TestTree
requestDeleteBackup =
  req
    "DeleteBackup"
    "fixture/DeleteBackup.yaml"

requestUpdateServer :: UpdateServer -> TestTree
requestUpdateServer =
  req
    "UpdateServer"
    "fixture/UpdateServer.yaml"

requestDeleteServer :: DeleteServer -> TestTree
requestDeleteServer =
  req
    "DeleteServer"
    "fixture/DeleteServer.yaml"

requestCreateServer :: CreateServer -> TestTree
requestCreateServer =
  req
    "CreateServer"
    "fixture/CreateServer.yaml"

requestDescribeAccountAttributes :: DescribeAccountAttributes -> TestTree
requestDescribeAccountAttributes =
  req
    "DescribeAccountAttributes"
    "fixture/DescribeAccountAttributes.yaml"

requestExportServerEngineAttribute :: ExportServerEngineAttribute -> TestTree
requestExportServerEngineAttribute =
  req
    "ExportServerEngineAttribute"
    "fixture/ExportServerEngineAttribute.yaml"

requestDescribeServers :: DescribeServers -> TestTree
requestDescribeServers =
  req
    "DescribeServers"
    "fixture/DescribeServers.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestDescribeNodeAssociationStatus :: DescribeNodeAssociationStatus -> TestTree
requestDescribeNodeAssociationStatus =
  req
    "DescribeNodeAssociationStatus"
    "fixture/DescribeNodeAssociationStatus.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestDisassociateNode :: DisassociateNode -> TestTree
requestDisassociateNode =
  req
    "DisassociateNode"
    "fixture/DisassociateNode.yaml"

requestDescribeEvents :: DescribeEvents -> TestTree
requestDescribeEvents =
  req
    "DescribeEvents"
    "fixture/DescribeEvents.yaml"

requestCreateBackup :: CreateBackup -> TestTree
requestCreateBackup =
  req
    "CreateBackup"
    "fixture/CreateBackup.yaml"

requestAssociateNode :: AssociateNode -> TestTree
requestAssociateNode =
  req
    "AssociateNode"
    "fixture/AssociateNode.yaml"

requestDescribeBackups :: DescribeBackups -> TestTree
requestDescribeBackups =
  req
    "DescribeBackups"
    "fixture/DescribeBackups.yaml"

requestUpdateServerEngineAttributes :: UpdateServerEngineAttributes -> TestTree
requestUpdateServerEngineAttributes =
  req
    "UpdateServerEngineAttributes"
    "fixture/UpdateServerEngineAttributes.yaml"

requestStartMaintenance :: StartMaintenance -> TestTree
requestStartMaintenance =
  req
    "StartMaintenance"
    "fixture/StartMaintenance.yaml"

requestRestoreServer :: RestoreServer -> TestTree
requestRestoreServer =
  req
    "RestoreServer"
    "fixture/RestoreServer.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

-- Responses

responseDeleteBackup :: DeleteBackupResponse -> TestTree
responseDeleteBackup =
  res
    "DeleteBackupResponse"
    "fixture/DeleteBackupResponse.proto"
    opsWorksCM
    (Proxy :: Proxy DeleteBackup)

responseUpdateServer :: UpdateServerResponse -> TestTree
responseUpdateServer =
  res
    "UpdateServerResponse"
    "fixture/UpdateServerResponse.proto"
    opsWorksCM
    (Proxy :: Proxy UpdateServer)

responseDeleteServer :: DeleteServerResponse -> TestTree
responseDeleteServer =
  res
    "DeleteServerResponse"
    "fixture/DeleteServerResponse.proto"
    opsWorksCM
    (Proxy :: Proxy DeleteServer)

responseCreateServer :: CreateServerResponse -> TestTree
responseCreateServer =
  res
    "CreateServerResponse"
    "fixture/CreateServerResponse.proto"
    opsWorksCM
    (Proxy :: Proxy CreateServer)

responseDescribeAccountAttributes :: DescribeAccountAttributesResponse -> TestTree
responseDescribeAccountAttributes =
  res
    "DescribeAccountAttributesResponse"
    "fixture/DescribeAccountAttributesResponse.proto"
    opsWorksCM
    (Proxy :: Proxy DescribeAccountAttributes)

responseExportServerEngineAttribute :: ExportServerEngineAttributeResponse -> TestTree
responseExportServerEngineAttribute =
  res
    "ExportServerEngineAttributeResponse"
    "fixture/ExportServerEngineAttributeResponse.proto"
    opsWorksCM
    (Proxy :: Proxy ExportServerEngineAttribute)

responseDescribeServers :: DescribeServersResponse -> TestTree
responseDescribeServers =
  res
    "DescribeServersResponse"
    "fixture/DescribeServersResponse.proto"
    opsWorksCM
    (Proxy :: Proxy DescribeServers)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    opsWorksCM
    (Proxy :: Proxy UntagResource)

responseDescribeNodeAssociationStatus :: DescribeNodeAssociationStatusResponse -> TestTree
responseDescribeNodeAssociationStatus =
  res
    "DescribeNodeAssociationStatusResponse"
    "fixture/DescribeNodeAssociationStatusResponse.proto"
    opsWorksCM
    (Proxy :: Proxy DescribeNodeAssociationStatus)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    opsWorksCM
    (Proxy :: Proxy TagResource)

responseDisassociateNode :: DisassociateNodeResponse -> TestTree
responseDisassociateNode =
  res
    "DisassociateNodeResponse"
    "fixture/DisassociateNodeResponse.proto"
    opsWorksCM
    (Proxy :: Proxy DisassociateNode)

responseDescribeEvents :: DescribeEventsResponse -> TestTree
responseDescribeEvents =
  res
    "DescribeEventsResponse"
    "fixture/DescribeEventsResponse.proto"
    opsWorksCM
    (Proxy :: Proxy DescribeEvents)

responseCreateBackup :: CreateBackupResponse -> TestTree
responseCreateBackup =
  res
    "CreateBackupResponse"
    "fixture/CreateBackupResponse.proto"
    opsWorksCM
    (Proxy :: Proxy CreateBackup)

responseAssociateNode :: AssociateNodeResponse -> TestTree
responseAssociateNode =
  res
    "AssociateNodeResponse"
    "fixture/AssociateNodeResponse.proto"
    opsWorksCM
    (Proxy :: Proxy AssociateNode)

responseDescribeBackups :: DescribeBackupsResponse -> TestTree
responseDescribeBackups =
  res
    "DescribeBackupsResponse"
    "fixture/DescribeBackupsResponse.proto"
    opsWorksCM
    (Proxy :: Proxy DescribeBackups)

responseUpdateServerEngineAttributes :: UpdateServerEngineAttributesResponse -> TestTree
responseUpdateServerEngineAttributes =
  res
    "UpdateServerEngineAttributesResponse"
    "fixture/UpdateServerEngineAttributesResponse.proto"
    opsWorksCM
    (Proxy :: Proxy UpdateServerEngineAttributes)

responseStartMaintenance :: StartMaintenanceResponse -> TestTree
responseStartMaintenance =
  res
    "StartMaintenanceResponse"
    "fixture/StartMaintenanceResponse.proto"
    opsWorksCM
    (Proxy :: Proxy StartMaintenance)

responseRestoreServer :: RestoreServerResponse -> TestTree
responseRestoreServer =
  res
    "RestoreServerResponse"
    "fixture/RestoreServerResponse.proto"
    opsWorksCM
    (Proxy :: Proxy RestoreServer)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    opsWorksCM
    (Proxy :: Proxy ListTagsForResource)
