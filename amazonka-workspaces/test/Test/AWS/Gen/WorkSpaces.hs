{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.WorkSpaces
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.WorkSpaces where

import Data.Proxy
import Network.AWS.WorkSpaces
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.WorkSpaces.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDescribeWorkspaceDirectories $
--             describeWorkspaceDirectories
--
--         , requestTerminateWorkspaces $
--             terminateWorkspaces
--
--         , requestDisassociateIPGroups $
--             disassociateIPGroups
--
--         , requestDescribeWorkspaceBundles $
--             describeWorkspaceBundles
--
--         , requestAuthorizeIPRules $
--             authorizeIPRules
--
--         , requestImportWorkspaceImage $
--             importWorkspaceImage
--
--         , requestDeleteIPGroup $
--             deleteIPGroup
--
--         , requestDeregisterWorkspaceDirectory $
--             deregisterWorkspaceDirectory
--
--         , requestAssociateConnectionAlias $
--             associateConnectionAlias
--
--         , requestDescribeTags $
--             describeTags
--
--         , requestCreateConnectionAlias $
--             createConnectionAlias
--
--         , requestMigrateWorkspace $
--             migrateWorkspace
--
--         , requestModifyAccount $
--             modifyAccount
--
--         , requestDescribeWorkspacesConnectionStatus $
--             describeWorkspacesConnectionStatus
--
--         , requestModifySelfservicePermissions $
--             modifySelfservicePermissions
--
--         , requestUpdateRulesOfIPGroup $
--             updateRulesOfIPGroup
--
--         , requestDescribeConnectionAliases $
--             describeConnectionAliases
--
--         , requestDeleteWorkspaceImage $
--             deleteWorkspaceImage
--
--         , requestDeleteTags $
--             deleteTags
--
--         , requestListAvailableManagementCidrRanges $
--             listAvailableManagementCidrRanges
--
--         , requestModifyWorkspaceCreationProperties $
--             modifyWorkspaceCreationProperties
--
--         , requestDescribeClientProperties $
--             describeClientProperties
--
--         , requestModifyWorkspaceState $
--             modifyWorkspaceState
--
--         , requestUpdateConnectionAliasPermission $
--             updateConnectionAliasPermission
--
--         , requestCopyWorkspaceImage $
--             copyWorkspaceImage
--
--         , requestDescribeWorkspaceImagePermissions $
--             describeWorkspaceImagePermissions
--
--         , requestRebuildWorkspaces $
--             rebuildWorkspaces
--
--         , requestRebootWorkspaces $
--             rebootWorkspaces
--
--         , requestDescribeWorkspaceSnapshots $
--             describeWorkspaceSnapshots
--
--         , requestDescribeAccount $
--             describeAccount
--
--         , requestModifyWorkspaceProperties $
--             modifyWorkspaceProperties
--
--         , requestRevokeIPRules $
--             revokeIPRules
--
--         , requestDescribeWorkspaceImages $
--             describeWorkspaceImages
--
--         , requestDescribeAccountModifications $
--             describeAccountModifications
--
--         , requestDeleteConnectionAlias $
--             deleteConnectionAlias
--
--         , requestAssociateIPGroups $
--             associateIPGroups
--
--         , requestStopWorkspaces $
--             stopWorkspaces
--
--         , requestStartWorkspaces $
--             startWorkspaces
--
--         , requestDescribeWorkspaces $
--             describeWorkspaces
--
--         , requestUpdateWorkspaceImagePermission $
--             updateWorkspaceImagePermission
--
--         , requestModifyClientProperties $
--             modifyClientProperties
--
--         , requestModifyWorkspaceAccessProperties $
--             modifyWorkspaceAccessProperties
--
--         , requestDescribeIPGroups $
--             describeIPGroups
--
--         , requestRestoreWorkspace $
--             restoreWorkspace
--
--         , requestCreateTags $
--             createTags
--
--         , requestDescribeConnectionAliasPermissions $
--             describeConnectionAliasPermissions
--
--         , requestRegisterWorkspaceDirectory $
--             registerWorkspaceDirectory
--
--         , requestCreateWorkspaces $
--             createWorkspaces
--
--         , requestCreateIPGroup $
--             createIPGroup
--
--         , requestDisassociateConnectionAlias $
--             disassociateConnectionAlias
--
--           ]

--     , testGroup "response"
--         [ responseDescribeWorkspaceDirectories $
--             describeWorkspaceDirectoriesResponse
--
--         , responseTerminateWorkspaces $
--             terminateWorkspacesResponse
--
--         , responseDisassociateIPGroups $
--             disassociateIPGroupsResponse
--
--         , responseDescribeWorkspaceBundles $
--             describeWorkspaceBundlesResponse
--
--         , responseAuthorizeIPRules $
--             authorizeIPRulesResponse
--
--         , responseImportWorkspaceImage $
--             importWorkspaceImageResponse
--
--         , responseDeleteIPGroup $
--             deleteIPGroupResponse
--
--         , responseDeregisterWorkspaceDirectory $
--             deregisterWorkspaceDirectoryResponse
--
--         , responseAssociateConnectionAlias $
--             associateConnectionAliasResponse
--
--         , responseDescribeTags $
--             describeTagsResponse
--
--         , responseCreateConnectionAlias $
--             createConnectionAliasResponse
--
--         , responseMigrateWorkspace $
--             migrateWorkspaceResponse
--
--         , responseModifyAccount $
--             modifyAccountResponse
--
--         , responseDescribeWorkspacesConnectionStatus $
--             describeWorkspacesConnectionStatusResponse
--
--         , responseModifySelfservicePermissions $
--             modifySelfservicePermissionsResponse
--
--         , responseUpdateRulesOfIPGroup $
--             updateRulesOfIPGroupResponse
--
--         , responseDescribeConnectionAliases $
--             describeConnectionAliasesResponse
--
--         , responseDeleteWorkspaceImage $
--             deleteWorkspaceImageResponse
--
--         , responseDeleteTags $
--             deleteTagsResponse
--
--         , responseListAvailableManagementCidrRanges $
--             listAvailableManagementCidrRangesResponse
--
--         , responseModifyWorkspaceCreationProperties $
--             modifyWorkspaceCreationPropertiesResponse
--
--         , responseDescribeClientProperties $
--             describeClientPropertiesResponse
--
--         , responseModifyWorkspaceState $
--             modifyWorkspaceStateResponse
--
--         , responseUpdateConnectionAliasPermission $
--             updateConnectionAliasPermissionResponse
--
--         , responseCopyWorkspaceImage $
--             copyWorkspaceImageResponse
--
--         , responseDescribeWorkspaceImagePermissions $
--             describeWorkspaceImagePermissionsResponse
--
--         , responseRebuildWorkspaces $
--             rebuildWorkspacesResponse
--
--         , responseRebootWorkspaces $
--             rebootWorkspacesResponse
--
--         , responseDescribeWorkspaceSnapshots $
--             describeWorkspaceSnapshotsResponse
--
--         , responseDescribeAccount $
--             describeAccountResponse
--
--         , responseModifyWorkspaceProperties $
--             modifyWorkspacePropertiesResponse
--
--         , responseRevokeIPRules $
--             revokeIPRulesResponse
--
--         , responseDescribeWorkspaceImages $
--             describeWorkspaceImagesResponse
--
--         , responseDescribeAccountModifications $
--             describeAccountModificationsResponse
--
--         , responseDeleteConnectionAlias $
--             deleteConnectionAliasResponse
--
--         , responseAssociateIPGroups $
--             associateIPGroupsResponse
--
--         , responseStopWorkspaces $
--             stopWorkspacesResponse
--
--         , responseStartWorkspaces $
--             startWorkspacesResponse
--
--         , responseDescribeWorkspaces $
--             describeWorkspacesResponse
--
--         , responseUpdateWorkspaceImagePermission $
--             updateWorkspaceImagePermissionResponse
--
--         , responseModifyClientProperties $
--             modifyClientPropertiesResponse
--
--         , responseModifyWorkspaceAccessProperties $
--             modifyWorkspaceAccessPropertiesResponse
--
--         , responseDescribeIPGroups $
--             describeIPGroupsResponse
--
--         , responseRestoreWorkspace $
--             restoreWorkspaceResponse
--
--         , responseCreateTags $
--             createTagsResponse
--
--         , responseDescribeConnectionAliasPermissions $
--             describeConnectionAliasPermissionsResponse
--
--         , responseRegisterWorkspaceDirectory $
--             registerWorkspaceDirectoryResponse
--
--         , responseCreateWorkspaces $
--             createWorkspacesResponse
--
--         , responseCreateIPGroup $
--             createIPGroupResponse
--
--         , responseDisassociateConnectionAlias $
--             disassociateConnectionAliasResponse
--
--           ]
--     ]

-- Requests

requestDescribeWorkspaceDirectories :: DescribeWorkspaceDirectories -> TestTree
requestDescribeWorkspaceDirectories =
  req
    "DescribeWorkspaceDirectories"
    "fixture/DescribeWorkspaceDirectories.yaml"

requestTerminateWorkspaces :: TerminateWorkspaces -> TestTree
requestTerminateWorkspaces =
  req
    "TerminateWorkspaces"
    "fixture/TerminateWorkspaces.yaml"

requestDisassociateIPGroups :: DisassociateIPGroups -> TestTree
requestDisassociateIPGroups =
  req
    "DisassociateIPGroups"
    "fixture/DisassociateIPGroups.yaml"

requestDescribeWorkspaceBundles :: DescribeWorkspaceBundles -> TestTree
requestDescribeWorkspaceBundles =
  req
    "DescribeWorkspaceBundles"
    "fixture/DescribeWorkspaceBundles.yaml"

requestAuthorizeIPRules :: AuthorizeIPRules -> TestTree
requestAuthorizeIPRules =
  req
    "AuthorizeIPRules"
    "fixture/AuthorizeIPRules.yaml"

requestImportWorkspaceImage :: ImportWorkspaceImage -> TestTree
requestImportWorkspaceImage =
  req
    "ImportWorkspaceImage"
    "fixture/ImportWorkspaceImage.yaml"

requestDeleteIPGroup :: DeleteIPGroup -> TestTree
requestDeleteIPGroup =
  req
    "DeleteIPGroup"
    "fixture/DeleteIPGroup.yaml"

requestDeregisterWorkspaceDirectory :: DeregisterWorkspaceDirectory -> TestTree
requestDeregisterWorkspaceDirectory =
  req
    "DeregisterWorkspaceDirectory"
    "fixture/DeregisterWorkspaceDirectory.yaml"

requestAssociateConnectionAlias :: AssociateConnectionAlias -> TestTree
requestAssociateConnectionAlias =
  req
    "AssociateConnectionAlias"
    "fixture/AssociateConnectionAlias.yaml"

requestDescribeTags :: DescribeTags -> TestTree
requestDescribeTags =
  req
    "DescribeTags"
    "fixture/DescribeTags.yaml"

requestCreateConnectionAlias :: CreateConnectionAlias -> TestTree
requestCreateConnectionAlias =
  req
    "CreateConnectionAlias"
    "fixture/CreateConnectionAlias.yaml"

requestMigrateWorkspace :: MigrateWorkspace -> TestTree
requestMigrateWorkspace =
  req
    "MigrateWorkspace"
    "fixture/MigrateWorkspace.yaml"

requestModifyAccount :: ModifyAccount -> TestTree
requestModifyAccount =
  req
    "ModifyAccount"
    "fixture/ModifyAccount.yaml"

requestDescribeWorkspacesConnectionStatus :: DescribeWorkspacesConnectionStatus -> TestTree
requestDescribeWorkspacesConnectionStatus =
  req
    "DescribeWorkspacesConnectionStatus"
    "fixture/DescribeWorkspacesConnectionStatus.yaml"

requestModifySelfservicePermissions :: ModifySelfservicePermissions -> TestTree
requestModifySelfservicePermissions =
  req
    "ModifySelfservicePermissions"
    "fixture/ModifySelfservicePermissions.yaml"

requestUpdateRulesOfIPGroup :: UpdateRulesOfIPGroup -> TestTree
requestUpdateRulesOfIPGroup =
  req
    "UpdateRulesOfIPGroup"
    "fixture/UpdateRulesOfIPGroup.yaml"

requestDescribeConnectionAliases :: DescribeConnectionAliases -> TestTree
requestDescribeConnectionAliases =
  req
    "DescribeConnectionAliases"
    "fixture/DescribeConnectionAliases.yaml"

requestDeleteWorkspaceImage :: DeleteWorkspaceImage -> TestTree
requestDeleteWorkspaceImage =
  req
    "DeleteWorkspaceImage"
    "fixture/DeleteWorkspaceImage.yaml"

requestDeleteTags :: DeleteTags -> TestTree
requestDeleteTags =
  req
    "DeleteTags"
    "fixture/DeleteTags.yaml"

requestListAvailableManagementCidrRanges :: ListAvailableManagementCidrRanges -> TestTree
requestListAvailableManagementCidrRanges =
  req
    "ListAvailableManagementCidrRanges"
    "fixture/ListAvailableManagementCidrRanges.yaml"

requestModifyWorkspaceCreationProperties :: ModifyWorkspaceCreationProperties -> TestTree
requestModifyWorkspaceCreationProperties =
  req
    "ModifyWorkspaceCreationProperties"
    "fixture/ModifyWorkspaceCreationProperties.yaml"

requestDescribeClientProperties :: DescribeClientProperties -> TestTree
requestDescribeClientProperties =
  req
    "DescribeClientProperties"
    "fixture/DescribeClientProperties.yaml"

requestModifyWorkspaceState :: ModifyWorkspaceState -> TestTree
requestModifyWorkspaceState =
  req
    "ModifyWorkspaceState"
    "fixture/ModifyWorkspaceState.yaml"

requestUpdateConnectionAliasPermission :: UpdateConnectionAliasPermission -> TestTree
requestUpdateConnectionAliasPermission =
  req
    "UpdateConnectionAliasPermission"
    "fixture/UpdateConnectionAliasPermission.yaml"

requestCopyWorkspaceImage :: CopyWorkspaceImage -> TestTree
requestCopyWorkspaceImage =
  req
    "CopyWorkspaceImage"
    "fixture/CopyWorkspaceImage.yaml"

requestDescribeWorkspaceImagePermissions :: DescribeWorkspaceImagePermissions -> TestTree
requestDescribeWorkspaceImagePermissions =
  req
    "DescribeWorkspaceImagePermissions"
    "fixture/DescribeWorkspaceImagePermissions.yaml"

requestRebuildWorkspaces :: RebuildWorkspaces -> TestTree
requestRebuildWorkspaces =
  req
    "RebuildWorkspaces"
    "fixture/RebuildWorkspaces.yaml"

requestRebootWorkspaces :: RebootWorkspaces -> TestTree
requestRebootWorkspaces =
  req
    "RebootWorkspaces"
    "fixture/RebootWorkspaces.yaml"

requestDescribeWorkspaceSnapshots :: DescribeWorkspaceSnapshots -> TestTree
requestDescribeWorkspaceSnapshots =
  req
    "DescribeWorkspaceSnapshots"
    "fixture/DescribeWorkspaceSnapshots.yaml"

requestDescribeAccount :: DescribeAccount -> TestTree
requestDescribeAccount =
  req
    "DescribeAccount"
    "fixture/DescribeAccount.yaml"

requestModifyWorkspaceProperties :: ModifyWorkspaceProperties -> TestTree
requestModifyWorkspaceProperties =
  req
    "ModifyWorkspaceProperties"
    "fixture/ModifyWorkspaceProperties.yaml"

requestRevokeIPRules :: RevokeIPRules -> TestTree
requestRevokeIPRules =
  req
    "RevokeIPRules"
    "fixture/RevokeIPRules.yaml"

requestDescribeWorkspaceImages :: DescribeWorkspaceImages -> TestTree
requestDescribeWorkspaceImages =
  req
    "DescribeWorkspaceImages"
    "fixture/DescribeWorkspaceImages.yaml"

requestDescribeAccountModifications :: DescribeAccountModifications -> TestTree
requestDescribeAccountModifications =
  req
    "DescribeAccountModifications"
    "fixture/DescribeAccountModifications.yaml"

requestDeleteConnectionAlias :: DeleteConnectionAlias -> TestTree
requestDeleteConnectionAlias =
  req
    "DeleteConnectionAlias"
    "fixture/DeleteConnectionAlias.yaml"

requestAssociateIPGroups :: AssociateIPGroups -> TestTree
requestAssociateIPGroups =
  req
    "AssociateIPGroups"
    "fixture/AssociateIPGroups.yaml"

requestStopWorkspaces :: StopWorkspaces -> TestTree
requestStopWorkspaces =
  req
    "StopWorkspaces"
    "fixture/StopWorkspaces.yaml"

requestStartWorkspaces :: StartWorkspaces -> TestTree
requestStartWorkspaces =
  req
    "StartWorkspaces"
    "fixture/StartWorkspaces.yaml"

requestDescribeWorkspaces :: DescribeWorkspaces -> TestTree
requestDescribeWorkspaces =
  req
    "DescribeWorkspaces"
    "fixture/DescribeWorkspaces.yaml"

requestUpdateWorkspaceImagePermission :: UpdateWorkspaceImagePermission -> TestTree
requestUpdateWorkspaceImagePermission =
  req
    "UpdateWorkspaceImagePermission"
    "fixture/UpdateWorkspaceImagePermission.yaml"

requestModifyClientProperties :: ModifyClientProperties -> TestTree
requestModifyClientProperties =
  req
    "ModifyClientProperties"
    "fixture/ModifyClientProperties.yaml"

requestModifyWorkspaceAccessProperties :: ModifyWorkspaceAccessProperties -> TestTree
requestModifyWorkspaceAccessProperties =
  req
    "ModifyWorkspaceAccessProperties"
    "fixture/ModifyWorkspaceAccessProperties.yaml"

requestDescribeIPGroups :: DescribeIPGroups -> TestTree
requestDescribeIPGroups =
  req
    "DescribeIPGroups"
    "fixture/DescribeIPGroups.yaml"

requestRestoreWorkspace :: RestoreWorkspace -> TestTree
requestRestoreWorkspace =
  req
    "RestoreWorkspace"
    "fixture/RestoreWorkspace.yaml"

requestCreateTags :: CreateTags -> TestTree
requestCreateTags =
  req
    "CreateTags"
    "fixture/CreateTags.yaml"

requestDescribeConnectionAliasPermissions :: DescribeConnectionAliasPermissions -> TestTree
requestDescribeConnectionAliasPermissions =
  req
    "DescribeConnectionAliasPermissions"
    "fixture/DescribeConnectionAliasPermissions.yaml"

requestRegisterWorkspaceDirectory :: RegisterWorkspaceDirectory -> TestTree
requestRegisterWorkspaceDirectory =
  req
    "RegisterWorkspaceDirectory"
    "fixture/RegisterWorkspaceDirectory.yaml"

requestCreateWorkspaces :: CreateWorkspaces -> TestTree
requestCreateWorkspaces =
  req
    "CreateWorkspaces"
    "fixture/CreateWorkspaces.yaml"

requestCreateIPGroup :: CreateIPGroup -> TestTree
requestCreateIPGroup =
  req
    "CreateIPGroup"
    "fixture/CreateIPGroup.yaml"

requestDisassociateConnectionAlias :: DisassociateConnectionAlias -> TestTree
requestDisassociateConnectionAlias =
  req
    "DisassociateConnectionAlias"
    "fixture/DisassociateConnectionAlias.yaml"

-- Responses

responseDescribeWorkspaceDirectories :: DescribeWorkspaceDirectoriesResponse -> TestTree
responseDescribeWorkspaceDirectories =
  res
    "DescribeWorkspaceDirectoriesResponse"
    "fixture/DescribeWorkspaceDirectoriesResponse.proto"
    workSpaces
    (Proxy :: Proxy DescribeWorkspaceDirectories)

responseTerminateWorkspaces :: TerminateWorkspacesResponse -> TestTree
responseTerminateWorkspaces =
  res
    "TerminateWorkspacesResponse"
    "fixture/TerminateWorkspacesResponse.proto"
    workSpaces
    (Proxy :: Proxy TerminateWorkspaces)

responseDisassociateIPGroups :: DisassociateIPGroupsResponse -> TestTree
responseDisassociateIPGroups =
  res
    "DisassociateIPGroupsResponse"
    "fixture/DisassociateIPGroupsResponse.proto"
    workSpaces
    (Proxy :: Proxy DisassociateIPGroups)

responseDescribeWorkspaceBundles :: DescribeWorkspaceBundlesResponse -> TestTree
responseDescribeWorkspaceBundles =
  res
    "DescribeWorkspaceBundlesResponse"
    "fixture/DescribeWorkspaceBundlesResponse.proto"
    workSpaces
    (Proxy :: Proxy DescribeWorkspaceBundles)

responseAuthorizeIPRules :: AuthorizeIPRulesResponse -> TestTree
responseAuthorizeIPRules =
  res
    "AuthorizeIPRulesResponse"
    "fixture/AuthorizeIPRulesResponse.proto"
    workSpaces
    (Proxy :: Proxy AuthorizeIPRules)

responseImportWorkspaceImage :: ImportWorkspaceImageResponse -> TestTree
responseImportWorkspaceImage =
  res
    "ImportWorkspaceImageResponse"
    "fixture/ImportWorkspaceImageResponse.proto"
    workSpaces
    (Proxy :: Proxy ImportWorkspaceImage)

responseDeleteIPGroup :: DeleteIPGroupResponse -> TestTree
responseDeleteIPGroup =
  res
    "DeleteIPGroupResponse"
    "fixture/DeleteIPGroupResponse.proto"
    workSpaces
    (Proxy :: Proxy DeleteIPGroup)

responseDeregisterWorkspaceDirectory :: DeregisterWorkspaceDirectoryResponse -> TestTree
responseDeregisterWorkspaceDirectory =
  res
    "DeregisterWorkspaceDirectoryResponse"
    "fixture/DeregisterWorkspaceDirectoryResponse.proto"
    workSpaces
    (Proxy :: Proxy DeregisterWorkspaceDirectory)

responseAssociateConnectionAlias :: AssociateConnectionAliasResponse -> TestTree
responseAssociateConnectionAlias =
  res
    "AssociateConnectionAliasResponse"
    "fixture/AssociateConnectionAliasResponse.proto"
    workSpaces
    (Proxy :: Proxy AssociateConnectionAlias)

responseDescribeTags :: DescribeTagsResponse -> TestTree
responseDescribeTags =
  res
    "DescribeTagsResponse"
    "fixture/DescribeTagsResponse.proto"
    workSpaces
    (Proxy :: Proxy DescribeTags)

responseCreateConnectionAlias :: CreateConnectionAliasResponse -> TestTree
responseCreateConnectionAlias =
  res
    "CreateConnectionAliasResponse"
    "fixture/CreateConnectionAliasResponse.proto"
    workSpaces
    (Proxy :: Proxy CreateConnectionAlias)

responseMigrateWorkspace :: MigrateWorkspaceResponse -> TestTree
responseMigrateWorkspace =
  res
    "MigrateWorkspaceResponse"
    "fixture/MigrateWorkspaceResponse.proto"
    workSpaces
    (Proxy :: Proxy MigrateWorkspace)

responseModifyAccount :: ModifyAccountResponse -> TestTree
responseModifyAccount =
  res
    "ModifyAccountResponse"
    "fixture/ModifyAccountResponse.proto"
    workSpaces
    (Proxy :: Proxy ModifyAccount)

responseDescribeWorkspacesConnectionStatus :: DescribeWorkspacesConnectionStatusResponse -> TestTree
responseDescribeWorkspacesConnectionStatus =
  res
    "DescribeWorkspacesConnectionStatusResponse"
    "fixture/DescribeWorkspacesConnectionStatusResponse.proto"
    workSpaces
    (Proxy :: Proxy DescribeWorkspacesConnectionStatus)

responseModifySelfservicePermissions :: ModifySelfservicePermissionsResponse -> TestTree
responseModifySelfservicePermissions =
  res
    "ModifySelfservicePermissionsResponse"
    "fixture/ModifySelfservicePermissionsResponse.proto"
    workSpaces
    (Proxy :: Proxy ModifySelfservicePermissions)

responseUpdateRulesOfIPGroup :: UpdateRulesOfIPGroupResponse -> TestTree
responseUpdateRulesOfIPGroup =
  res
    "UpdateRulesOfIPGroupResponse"
    "fixture/UpdateRulesOfIPGroupResponse.proto"
    workSpaces
    (Proxy :: Proxy UpdateRulesOfIPGroup)

responseDescribeConnectionAliases :: DescribeConnectionAliasesResponse -> TestTree
responseDescribeConnectionAliases =
  res
    "DescribeConnectionAliasesResponse"
    "fixture/DescribeConnectionAliasesResponse.proto"
    workSpaces
    (Proxy :: Proxy DescribeConnectionAliases)

responseDeleteWorkspaceImage :: DeleteWorkspaceImageResponse -> TestTree
responseDeleteWorkspaceImage =
  res
    "DeleteWorkspaceImageResponse"
    "fixture/DeleteWorkspaceImageResponse.proto"
    workSpaces
    (Proxy :: Proxy DeleteWorkspaceImage)

responseDeleteTags :: DeleteTagsResponse -> TestTree
responseDeleteTags =
  res
    "DeleteTagsResponse"
    "fixture/DeleteTagsResponse.proto"
    workSpaces
    (Proxy :: Proxy DeleteTags)

responseListAvailableManagementCidrRanges :: ListAvailableManagementCidrRangesResponse -> TestTree
responseListAvailableManagementCidrRanges =
  res
    "ListAvailableManagementCidrRangesResponse"
    "fixture/ListAvailableManagementCidrRangesResponse.proto"
    workSpaces
    (Proxy :: Proxy ListAvailableManagementCidrRanges)

responseModifyWorkspaceCreationProperties :: ModifyWorkspaceCreationPropertiesResponse -> TestTree
responseModifyWorkspaceCreationProperties =
  res
    "ModifyWorkspaceCreationPropertiesResponse"
    "fixture/ModifyWorkspaceCreationPropertiesResponse.proto"
    workSpaces
    (Proxy :: Proxy ModifyWorkspaceCreationProperties)

responseDescribeClientProperties :: DescribeClientPropertiesResponse -> TestTree
responseDescribeClientProperties =
  res
    "DescribeClientPropertiesResponse"
    "fixture/DescribeClientPropertiesResponse.proto"
    workSpaces
    (Proxy :: Proxy DescribeClientProperties)

responseModifyWorkspaceState :: ModifyWorkspaceStateResponse -> TestTree
responseModifyWorkspaceState =
  res
    "ModifyWorkspaceStateResponse"
    "fixture/ModifyWorkspaceStateResponse.proto"
    workSpaces
    (Proxy :: Proxy ModifyWorkspaceState)

responseUpdateConnectionAliasPermission :: UpdateConnectionAliasPermissionResponse -> TestTree
responseUpdateConnectionAliasPermission =
  res
    "UpdateConnectionAliasPermissionResponse"
    "fixture/UpdateConnectionAliasPermissionResponse.proto"
    workSpaces
    (Proxy :: Proxy UpdateConnectionAliasPermission)

responseCopyWorkspaceImage :: CopyWorkspaceImageResponse -> TestTree
responseCopyWorkspaceImage =
  res
    "CopyWorkspaceImageResponse"
    "fixture/CopyWorkspaceImageResponse.proto"
    workSpaces
    (Proxy :: Proxy CopyWorkspaceImage)

responseDescribeWorkspaceImagePermissions :: DescribeWorkspaceImagePermissionsResponse -> TestTree
responseDescribeWorkspaceImagePermissions =
  res
    "DescribeWorkspaceImagePermissionsResponse"
    "fixture/DescribeWorkspaceImagePermissionsResponse.proto"
    workSpaces
    (Proxy :: Proxy DescribeWorkspaceImagePermissions)

responseRebuildWorkspaces :: RebuildWorkspacesResponse -> TestTree
responseRebuildWorkspaces =
  res
    "RebuildWorkspacesResponse"
    "fixture/RebuildWorkspacesResponse.proto"
    workSpaces
    (Proxy :: Proxy RebuildWorkspaces)

responseRebootWorkspaces :: RebootWorkspacesResponse -> TestTree
responseRebootWorkspaces =
  res
    "RebootWorkspacesResponse"
    "fixture/RebootWorkspacesResponse.proto"
    workSpaces
    (Proxy :: Proxy RebootWorkspaces)

responseDescribeWorkspaceSnapshots :: DescribeWorkspaceSnapshotsResponse -> TestTree
responseDescribeWorkspaceSnapshots =
  res
    "DescribeWorkspaceSnapshotsResponse"
    "fixture/DescribeWorkspaceSnapshotsResponse.proto"
    workSpaces
    (Proxy :: Proxy DescribeWorkspaceSnapshots)

responseDescribeAccount :: DescribeAccountResponse -> TestTree
responseDescribeAccount =
  res
    "DescribeAccountResponse"
    "fixture/DescribeAccountResponse.proto"
    workSpaces
    (Proxy :: Proxy DescribeAccount)

responseModifyWorkspaceProperties :: ModifyWorkspacePropertiesResponse -> TestTree
responseModifyWorkspaceProperties =
  res
    "ModifyWorkspacePropertiesResponse"
    "fixture/ModifyWorkspacePropertiesResponse.proto"
    workSpaces
    (Proxy :: Proxy ModifyWorkspaceProperties)

responseRevokeIPRules :: RevokeIPRulesResponse -> TestTree
responseRevokeIPRules =
  res
    "RevokeIPRulesResponse"
    "fixture/RevokeIPRulesResponse.proto"
    workSpaces
    (Proxy :: Proxy RevokeIPRules)

responseDescribeWorkspaceImages :: DescribeWorkspaceImagesResponse -> TestTree
responseDescribeWorkspaceImages =
  res
    "DescribeWorkspaceImagesResponse"
    "fixture/DescribeWorkspaceImagesResponse.proto"
    workSpaces
    (Proxy :: Proxy DescribeWorkspaceImages)

responseDescribeAccountModifications :: DescribeAccountModificationsResponse -> TestTree
responseDescribeAccountModifications =
  res
    "DescribeAccountModificationsResponse"
    "fixture/DescribeAccountModificationsResponse.proto"
    workSpaces
    (Proxy :: Proxy DescribeAccountModifications)

responseDeleteConnectionAlias :: DeleteConnectionAliasResponse -> TestTree
responseDeleteConnectionAlias =
  res
    "DeleteConnectionAliasResponse"
    "fixture/DeleteConnectionAliasResponse.proto"
    workSpaces
    (Proxy :: Proxy DeleteConnectionAlias)

responseAssociateIPGroups :: AssociateIPGroupsResponse -> TestTree
responseAssociateIPGroups =
  res
    "AssociateIPGroupsResponse"
    "fixture/AssociateIPGroupsResponse.proto"
    workSpaces
    (Proxy :: Proxy AssociateIPGroups)

responseStopWorkspaces :: StopWorkspacesResponse -> TestTree
responseStopWorkspaces =
  res
    "StopWorkspacesResponse"
    "fixture/StopWorkspacesResponse.proto"
    workSpaces
    (Proxy :: Proxy StopWorkspaces)

responseStartWorkspaces :: StartWorkspacesResponse -> TestTree
responseStartWorkspaces =
  res
    "StartWorkspacesResponse"
    "fixture/StartWorkspacesResponse.proto"
    workSpaces
    (Proxy :: Proxy StartWorkspaces)

responseDescribeWorkspaces :: DescribeWorkspacesResponse -> TestTree
responseDescribeWorkspaces =
  res
    "DescribeWorkspacesResponse"
    "fixture/DescribeWorkspacesResponse.proto"
    workSpaces
    (Proxy :: Proxy DescribeWorkspaces)

responseUpdateWorkspaceImagePermission :: UpdateWorkspaceImagePermissionResponse -> TestTree
responseUpdateWorkspaceImagePermission =
  res
    "UpdateWorkspaceImagePermissionResponse"
    "fixture/UpdateWorkspaceImagePermissionResponse.proto"
    workSpaces
    (Proxy :: Proxy UpdateWorkspaceImagePermission)

responseModifyClientProperties :: ModifyClientPropertiesResponse -> TestTree
responseModifyClientProperties =
  res
    "ModifyClientPropertiesResponse"
    "fixture/ModifyClientPropertiesResponse.proto"
    workSpaces
    (Proxy :: Proxy ModifyClientProperties)

responseModifyWorkspaceAccessProperties :: ModifyWorkspaceAccessPropertiesResponse -> TestTree
responseModifyWorkspaceAccessProperties =
  res
    "ModifyWorkspaceAccessPropertiesResponse"
    "fixture/ModifyWorkspaceAccessPropertiesResponse.proto"
    workSpaces
    (Proxy :: Proxy ModifyWorkspaceAccessProperties)

responseDescribeIPGroups :: DescribeIPGroupsResponse -> TestTree
responseDescribeIPGroups =
  res
    "DescribeIPGroupsResponse"
    "fixture/DescribeIPGroupsResponse.proto"
    workSpaces
    (Proxy :: Proxy DescribeIPGroups)

responseRestoreWorkspace :: RestoreWorkspaceResponse -> TestTree
responseRestoreWorkspace =
  res
    "RestoreWorkspaceResponse"
    "fixture/RestoreWorkspaceResponse.proto"
    workSpaces
    (Proxy :: Proxy RestoreWorkspace)

responseCreateTags :: CreateTagsResponse -> TestTree
responseCreateTags =
  res
    "CreateTagsResponse"
    "fixture/CreateTagsResponse.proto"
    workSpaces
    (Proxy :: Proxy CreateTags)

responseDescribeConnectionAliasPermissions :: DescribeConnectionAliasPermissionsResponse -> TestTree
responseDescribeConnectionAliasPermissions =
  res
    "DescribeConnectionAliasPermissionsResponse"
    "fixture/DescribeConnectionAliasPermissionsResponse.proto"
    workSpaces
    (Proxy :: Proxy DescribeConnectionAliasPermissions)

responseRegisterWorkspaceDirectory :: RegisterWorkspaceDirectoryResponse -> TestTree
responseRegisterWorkspaceDirectory =
  res
    "RegisterWorkspaceDirectoryResponse"
    "fixture/RegisterWorkspaceDirectoryResponse.proto"
    workSpaces
    (Proxy :: Proxy RegisterWorkspaceDirectory)

responseCreateWorkspaces :: CreateWorkspacesResponse -> TestTree
responseCreateWorkspaces =
  res
    "CreateWorkspacesResponse"
    "fixture/CreateWorkspacesResponse.proto"
    workSpaces
    (Proxy :: Proxy CreateWorkspaces)

responseCreateIPGroup :: CreateIPGroupResponse -> TestTree
responseCreateIPGroup =
  res
    "CreateIPGroupResponse"
    "fixture/CreateIPGroupResponse.proto"
    workSpaces
    (Proxy :: Proxy CreateIPGroup)

responseDisassociateConnectionAlias :: DisassociateConnectionAliasResponse -> TestTree
responseDisassociateConnectionAlias =
  res
    "DisassociateConnectionAliasResponse"
    "fixture/DisassociateConnectionAliasResponse.proto"
    workSpaces
    (Proxy :: Proxy DisassociateConnectionAlias)
