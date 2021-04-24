{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.WorkDocs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.WorkDocs where

import Data.Proxy
import Network.AWS.WorkDocs
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.WorkDocs.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDeleteFolder $
--             deleteFolder
--
--         , requestUpdateFolder $
--             updateFolder
--
--         , requestDeleteCustomMetadata $
--             deleteCustomMetadata
--
--         , requestDeleteNotificationSubscription $
--             deleteNotificationSubscription
--
--         , requestUpdateDocumentVersion $
--             updateDocumentVersion
--
--         , requestDeleteLabels $
--             deleteLabels
--
--         , requestAbortDocumentVersionUpload $
--             abortDocumentVersionUpload
--
--         , requestDescribeFolderContents $
--             describeFolderContents
--
--         , requestCreateLabels $
--             createLabels
--
--         , requestDeactivateUser $
--             deactivateUser
--
--         , requestDescribeRootFolders $
--             describeRootFolders
--
--         , requestUpdateDocument $
--             updateDocument
--
--         , requestDeleteDocument $
--             deleteDocument
--
--         , requestGetDocumentVersion $
--             getDocumentVersion
--
--         , requestDescribeDocumentVersions $
--             describeDocumentVersions
--
--         , requestActivateUser $
--             activateUser
--
--         , requestGetFolderPath $
--             getFolderPath
--
--         , requestCreateUser $
--             createUser
--
--         , requestCreateCustomMetadata $
--             createCustomMetadata
--
--         , requestDeleteComment $
--             deleteComment
--
--         , requestCreateFolder $
--             createFolder
--
--         , requestCreateNotificationSubscription $
--             createNotificationSubscription
--
--         , requestCreateComment $
--             createComment
--
--         , requestDescribeResourcePermissions $
--             describeResourcePermissions
--
--         , requestRemoveResourcePermission $
--             removeResourcePermission
--
--         , requestDescribeUsers $
--             describeUsers
--
--         , requestGetResources $
--             getResources
--
--         , requestGetDocumentPath $
--             getDocumentPath
--
--         , requestDescribeGroups $
--             describeGroups
--
--         , requestGetDocument $
--             getDocument
--
--         , requestDescribeActivities $
--             describeActivities
--
--         , requestGetCurrentUser $
--             getCurrentUser
--
--         , requestAddResourcePermissions $
--             addResourcePermissions
--
--         , requestDeleteUser $
--             deleteUser
--
--         , requestGetFolder $
--             getFolder
--
--         , requestUpdateUser $
--             updateUser
--
--         , requestDescribeNotificationSubscriptions $
--             describeNotificationSubscriptions
--
--         , requestRemoveAllResourcePermissions $
--             removeAllResourcePermissions
--
--         , requestDeleteFolderContents $
--             deleteFolderContents
--
--         , requestDescribeComments $
--             describeComments
--
--         , requestInitiateDocumentVersionUpload $
--             initiateDocumentVersionUpload
--
--           ]

--     , testGroup "response"
--         [ responseDeleteFolder $
--             deleteFolderResponse
--
--         , responseUpdateFolder $
--             updateFolderResponse
--
--         , responseDeleteCustomMetadata $
--             deleteCustomMetadataResponse
--
--         , responseDeleteNotificationSubscription $
--             deleteNotificationSubscriptionResponse
--
--         , responseUpdateDocumentVersion $
--             updateDocumentVersionResponse
--
--         , responseDeleteLabels $
--             deleteLabelsResponse
--
--         , responseAbortDocumentVersionUpload $
--             abortDocumentVersionUploadResponse
--
--         , responseDescribeFolderContents $
--             describeFolderContentsResponse
--
--         , responseCreateLabels $
--             createLabelsResponse
--
--         , responseDeactivateUser $
--             deactivateUserResponse
--
--         , responseDescribeRootFolders $
--             describeRootFoldersResponse
--
--         , responseUpdateDocument $
--             updateDocumentResponse
--
--         , responseDeleteDocument $
--             deleteDocumentResponse
--
--         , responseGetDocumentVersion $
--             getDocumentVersionResponse
--
--         , responseDescribeDocumentVersions $
--             describeDocumentVersionsResponse
--
--         , responseActivateUser $
--             activateUserResponse
--
--         , responseGetFolderPath $
--             getFolderPathResponse
--
--         , responseCreateUser $
--             createUserResponse
--
--         , responseCreateCustomMetadata $
--             createCustomMetadataResponse
--
--         , responseDeleteComment $
--             deleteCommentResponse
--
--         , responseCreateFolder $
--             createFolderResponse
--
--         , responseCreateNotificationSubscription $
--             createNotificationSubscriptionResponse
--
--         , responseCreateComment $
--             createCommentResponse
--
--         , responseDescribeResourcePermissions $
--             describeResourcePermissionsResponse
--
--         , responseRemoveResourcePermission $
--             removeResourcePermissionResponse
--
--         , responseDescribeUsers $
--             describeUsersResponse
--
--         , responseGetResources $
--             getResourcesResponse
--
--         , responseGetDocumentPath $
--             getDocumentPathResponse
--
--         , responseDescribeGroups $
--             describeGroupsResponse
--
--         , responseGetDocument $
--             getDocumentResponse
--
--         , responseDescribeActivities $
--             describeActivitiesResponse
--
--         , responseGetCurrentUser $
--             getCurrentUserResponse
--
--         , responseAddResourcePermissions $
--             addResourcePermissionsResponse
--
--         , responseDeleteUser $
--             deleteUserResponse
--
--         , responseGetFolder $
--             getFolderResponse
--
--         , responseUpdateUser $
--             updateUserResponse
--
--         , responseDescribeNotificationSubscriptions $
--             describeNotificationSubscriptionsResponse
--
--         , responseRemoveAllResourcePermissions $
--             removeAllResourcePermissionsResponse
--
--         , responseDeleteFolderContents $
--             deleteFolderContentsResponse
--
--         , responseDescribeComments $
--             describeCommentsResponse
--
--         , responseInitiateDocumentVersionUpload $
--             initiateDocumentVersionUploadResponse
--
--           ]
--     ]

-- Requests

requestDeleteFolder :: DeleteFolder -> TestTree
requestDeleteFolder =
  req
    "DeleteFolder"
    "fixture/DeleteFolder.yaml"

requestUpdateFolder :: UpdateFolder -> TestTree
requestUpdateFolder =
  req
    "UpdateFolder"
    "fixture/UpdateFolder.yaml"

requestDeleteCustomMetadata :: DeleteCustomMetadata -> TestTree
requestDeleteCustomMetadata =
  req
    "DeleteCustomMetadata"
    "fixture/DeleteCustomMetadata.yaml"

requestDeleteNotificationSubscription :: DeleteNotificationSubscription -> TestTree
requestDeleteNotificationSubscription =
  req
    "DeleteNotificationSubscription"
    "fixture/DeleteNotificationSubscription.yaml"

requestUpdateDocumentVersion :: UpdateDocumentVersion -> TestTree
requestUpdateDocumentVersion =
  req
    "UpdateDocumentVersion"
    "fixture/UpdateDocumentVersion.yaml"

requestDeleteLabels :: DeleteLabels -> TestTree
requestDeleteLabels =
  req
    "DeleteLabels"
    "fixture/DeleteLabels.yaml"

requestAbortDocumentVersionUpload :: AbortDocumentVersionUpload -> TestTree
requestAbortDocumentVersionUpload =
  req
    "AbortDocumentVersionUpload"
    "fixture/AbortDocumentVersionUpload.yaml"

requestDescribeFolderContents :: DescribeFolderContents -> TestTree
requestDescribeFolderContents =
  req
    "DescribeFolderContents"
    "fixture/DescribeFolderContents.yaml"

requestCreateLabels :: CreateLabels -> TestTree
requestCreateLabels =
  req
    "CreateLabels"
    "fixture/CreateLabels.yaml"

requestDeactivateUser :: DeactivateUser -> TestTree
requestDeactivateUser =
  req
    "DeactivateUser"
    "fixture/DeactivateUser.yaml"

requestDescribeRootFolders :: DescribeRootFolders -> TestTree
requestDescribeRootFolders =
  req
    "DescribeRootFolders"
    "fixture/DescribeRootFolders.yaml"

requestUpdateDocument :: UpdateDocument -> TestTree
requestUpdateDocument =
  req
    "UpdateDocument"
    "fixture/UpdateDocument.yaml"

requestDeleteDocument :: DeleteDocument -> TestTree
requestDeleteDocument =
  req
    "DeleteDocument"
    "fixture/DeleteDocument.yaml"

requestGetDocumentVersion :: GetDocumentVersion -> TestTree
requestGetDocumentVersion =
  req
    "GetDocumentVersion"
    "fixture/GetDocumentVersion.yaml"

requestDescribeDocumentVersions :: DescribeDocumentVersions -> TestTree
requestDescribeDocumentVersions =
  req
    "DescribeDocumentVersions"
    "fixture/DescribeDocumentVersions.yaml"

requestActivateUser :: ActivateUser -> TestTree
requestActivateUser =
  req
    "ActivateUser"
    "fixture/ActivateUser.yaml"

requestGetFolderPath :: GetFolderPath -> TestTree
requestGetFolderPath =
  req
    "GetFolderPath"
    "fixture/GetFolderPath.yaml"

requestCreateUser :: CreateUser -> TestTree
requestCreateUser =
  req
    "CreateUser"
    "fixture/CreateUser.yaml"

requestCreateCustomMetadata :: CreateCustomMetadata -> TestTree
requestCreateCustomMetadata =
  req
    "CreateCustomMetadata"
    "fixture/CreateCustomMetadata.yaml"

requestDeleteComment :: DeleteComment -> TestTree
requestDeleteComment =
  req
    "DeleteComment"
    "fixture/DeleteComment.yaml"

requestCreateFolder :: CreateFolder -> TestTree
requestCreateFolder =
  req
    "CreateFolder"
    "fixture/CreateFolder.yaml"

requestCreateNotificationSubscription :: CreateNotificationSubscription -> TestTree
requestCreateNotificationSubscription =
  req
    "CreateNotificationSubscription"
    "fixture/CreateNotificationSubscription.yaml"

requestCreateComment :: CreateComment -> TestTree
requestCreateComment =
  req
    "CreateComment"
    "fixture/CreateComment.yaml"

requestDescribeResourcePermissions :: DescribeResourcePermissions -> TestTree
requestDescribeResourcePermissions =
  req
    "DescribeResourcePermissions"
    "fixture/DescribeResourcePermissions.yaml"

requestRemoveResourcePermission :: RemoveResourcePermission -> TestTree
requestRemoveResourcePermission =
  req
    "RemoveResourcePermission"
    "fixture/RemoveResourcePermission.yaml"

requestDescribeUsers :: DescribeUsers -> TestTree
requestDescribeUsers =
  req
    "DescribeUsers"
    "fixture/DescribeUsers.yaml"

requestGetResources :: GetResources -> TestTree
requestGetResources =
  req
    "GetResources"
    "fixture/GetResources.yaml"

requestGetDocumentPath :: GetDocumentPath -> TestTree
requestGetDocumentPath =
  req
    "GetDocumentPath"
    "fixture/GetDocumentPath.yaml"

requestDescribeGroups :: DescribeGroups -> TestTree
requestDescribeGroups =
  req
    "DescribeGroups"
    "fixture/DescribeGroups.yaml"

requestGetDocument :: GetDocument -> TestTree
requestGetDocument =
  req
    "GetDocument"
    "fixture/GetDocument.yaml"

requestDescribeActivities :: DescribeActivities -> TestTree
requestDescribeActivities =
  req
    "DescribeActivities"
    "fixture/DescribeActivities.yaml"

requestGetCurrentUser :: GetCurrentUser -> TestTree
requestGetCurrentUser =
  req
    "GetCurrentUser"
    "fixture/GetCurrentUser.yaml"

requestAddResourcePermissions :: AddResourcePermissions -> TestTree
requestAddResourcePermissions =
  req
    "AddResourcePermissions"
    "fixture/AddResourcePermissions.yaml"

requestDeleteUser :: DeleteUser -> TestTree
requestDeleteUser =
  req
    "DeleteUser"
    "fixture/DeleteUser.yaml"

requestGetFolder :: GetFolder -> TestTree
requestGetFolder =
  req
    "GetFolder"
    "fixture/GetFolder.yaml"

requestUpdateUser :: UpdateUser -> TestTree
requestUpdateUser =
  req
    "UpdateUser"
    "fixture/UpdateUser.yaml"

requestDescribeNotificationSubscriptions :: DescribeNotificationSubscriptions -> TestTree
requestDescribeNotificationSubscriptions =
  req
    "DescribeNotificationSubscriptions"
    "fixture/DescribeNotificationSubscriptions.yaml"

requestRemoveAllResourcePermissions :: RemoveAllResourcePermissions -> TestTree
requestRemoveAllResourcePermissions =
  req
    "RemoveAllResourcePermissions"
    "fixture/RemoveAllResourcePermissions.yaml"

requestDeleteFolderContents :: DeleteFolderContents -> TestTree
requestDeleteFolderContents =
  req
    "DeleteFolderContents"
    "fixture/DeleteFolderContents.yaml"

requestDescribeComments :: DescribeComments -> TestTree
requestDescribeComments =
  req
    "DescribeComments"
    "fixture/DescribeComments.yaml"

requestInitiateDocumentVersionUpload :: InitiateDocumentVersionUpload -> TestTree
requestInitiateDocumentVersionUpload =
  req
    "InitiateDocumentVersionUpload"
    "fixture/InitiateDocumentVersionUpload.yaml"

-- Responses

responseDeleteFolder :: DeleteFolderResponse -> TestTree
responseDeleteFolder =
  res
    "DeleteFolderResponse"
    "fixture/DeleteFolderResponse.proto"
    workDocs
    (Proxy :: Proxy DeleteFolder)

responseUpdateFolder :: UpdateFolderResponse -> TestTree
responseUpdateFolder =
  res
    "UpdateFolderResponse"
    "fixture/UpdateFolderResponse.proto"
    workDocs
    (Proxy :: Proxy UpdateFolder)

responseDeleteCustomMetadata :: DeleteCustomMetadataResponse -> TestTree
responseDeleteCustomMetadata =
  res
    "DeleteCustomMetadataResponse"
    "fixture/DeleteCustomMetadataResponse.proto"
    workDocs
    (Proxy :: Proxy DeleteCustomMetadata)

responseDeleteNotificationSubscription :: DeleteNotificationSubscriptionResponse -> TestTree
responseDeleteNotificationSubscription =
  res
    "DeleteNotificationSubscriptionResponse"
    "fixture/DeleteNotificationSubscriptionResponse.proto"
    workDocs
    (Proxy :: Proxy DeleteNotificationSubscription)

responseUpdateDocumentVersion :: UpdateDocumentVersionResponse -> TestTree
responseUpdateDocumentVersion =
  res
    "UpdateDocumentVersionResponse"
    "fixture/UpdateDocumentVersionResponse.proto"
    workDocs
    (Proxy :: Proxy UpdateDocumentVersion)

responseDeleteLabels :: DeleteLabelsResponse -> TestTree
responseDeleteLabels =
  res
    "DeleteLabelsResponse"
    "fixture/DeleteLabelsResponse.proto"
    workDocs
    (Proxy :: Proxy DeleteLabels)

responseAbortDocumentVersionUpload :: AbortDocumentVersionUploadResponse -> TestTree
responseAbortDocumentVersionUpload =
  res
    "AbortDocumentVersionUploadResponse"
    "fixture/AbortDocumentVersionUploadResponse.proto"
    workDocs
    (Proxy :: Proxy AbortDocumentVersionUpload)

responseDescribeFolderContents :: DescribeFolderContentsResponse -> TestTree
responseDescribeFolderContents =
  res
    "DescribeFolderContentsResponse"
    "fixture/DescribeFolderContentsResponse.proto"
    workDocs
    (Proxy :: Proxy DescribeFolderContents)

responseCreateLabels :: CreateLabelsResponse -> TestTree
responseCreateLabels =
  res
    "CreateLabelsResponse"
    "fixture/CreateLabelsResponse.proto"
    workDocs
    (Proxy :: Proxy CreateLabels)

responseDeactivateUser :: DeactivateUserResponse -> TestTree
responseDeactivateUser =
  res
    "DeactivateUserResponse"
    "fixture/DeactivateUserResponse.proto"
    workDocs
    (Proxy :: Proxy DeactivateUser)

responseDescribeRootFolders :: DescribeRootFoldersResponse -> TestTree
responseDescribeRootFolders =
  res
    "DescribeRootFoldersResponse"
    "fixture/DescribeRootFoldersResponse.proto"
    workDocs
    (Proxy :: Proxy DescribeRootFolders)

responseUpdateDocument :: UpdateDocumentResponse -> TestTree
responseUpdateDocument =
  res
    "UpdateDocumentResponse"
    "fixture/UpdateDocumentResponse.proto"
    workDocs
    (Proxy :: Proxy UpdateDocument)

responseDeleteDocument :: DeleteDocumentResponse -> TestTree
responseDeleteDocument =
  res
    "DeleteDocumentResponse"
    "fixture/DeleteDocumentResponse.proto"
    workDocs
    (Proxy :: Proxy DeleteDocument)

responseGetDocumentVersion :: GetDocumentVersionResponse -> TestTree
responseGetDocumentVersion =
  res
    "GetDocumentVersionResponse"
    "fixture/GetDocumentVersionResponse.proto"
    workDocs
    (Proxy :: Proxy GetDocumentVersion)

responseDescribeDocumentVersions :: DescribeDocumentVersionsResponse -> TestTree
responseDescribeDocumentVersions =
  res
    "DescribeDocumentVersionsResponse"
    "fixture/DescribeDocumentVersionsResponse.proto"
    workDocs
    (Proxy :: Proxy DescribeDocumentVersions)

responseActivateUser :: ActivateUserResponse -> TestTree
responseActivateUser =
  res
    "ActivateUserResponse"
    "fixture/ActivateUserResponse.proto"
    workDocs
    (Proxy :: Proxy ActivateUser)

responseGetFolderPath :: GetFolderPathResponse -> TestTree
responseGetFolderPath =
  res
    "GetFolderPathResponse"
    "fixture/GetFolderPathResponse.proto"
    workDocs
    (Proxy :: Proxy GetFolderPath)

responseCreateUser :: CreateUserResponse -> TestTree
responseCreateUser =
  res
    "CreateUserResponse"
    "fixture/CreateUserResponse.proto"
    workDocs
    (Proxy :: Proxy CreateUser)

responseCreateCustomMetadata :: CreateCustomMetadataResponse -> TestTree
responseCreateCustomMetadata =
  res
    "CreateCustomMetadataResponse"
    "fixture/CreateCustomMetadataResponse.proto"
    workDocs
    (Proxy :: Proxy CreateCustomMetadata)

responseDeleteComment :: DeleteCommentResponse -> TestTree
responseDeleteComment =
  res
    "DeleteCommentResponse"
    "fixture/DeleteCommentResponse.proto"
    workDocs
    (Proxy :: Proxy DeleteComment)

responseCreateFolder :: CreateFolderResponse -> TestTree
responseCreateFolder =
  res
    "CreateFolderResponse"
    "fixture/CreateFolderResponse.proto"
    workDocs
    (Proxy :: Proxy CreateFolder)

responseCreateNotificationSubscription :: CreateNotificationSubscriptionResponse -> TestTree
responseCreateNotificationSubscription =
  res
    "CreateNotificationSubscriptionResponse"
    "fixture/CreateNotificationSubscriptionResponse.proto"
    workDocs
    (Proxy :: Proxy CreateNotificationSubscription)

responseCreateComment :: CreateCommentResponse -> TestTree
responseCreateComment =
  res
    "CreateCommentResponse"
    "fixture/CreateCommentResponse.proto"
    workDocs
    (Proxy :: Proxy CreateComment)

responseDescribeResourcePermissions :: DescribeResourcePermissionsResponse -> TestTree
responseDescribeResourcePermissions =
  res
    "DescribeResourcePermissionsResponse"
    "fixture/DescribeResourcePermissionsResponse.proto"
    workDocs
    (Proxy :: Proxy DescribeResourcePermissions)

responseRemoveResourcePermission :: RemoveResourcePermissionResponse -> TestTree
responseRemoveResourcePermission =
  res
    "RemoveResourcePermissionResponse"
    "fixture/RemoveResourcePermissionResponse.proto"
    workDocs
    (Proxy :: Proxy RemoveResourcePermission)

responseDescribeUsers :: DescribeUsersResponse -> TestTree
responseDescribeUsers =
  res
    "DescribeUsersResponse"
    "fixture/DescribeUsersResponse.proto"
    workDocs
    (Proxy :: Proxy DescribeUsers)

responseGetResources :: GetResourcesResponse -> TestTree
responseGetResources =
  res
    "GetResourcesResponse"
    "fixture/GetResourcesResponse.proto"
    workDocs
    (Proxy :: Proxy GetResources)

responseGetDocumentPath :: GetDocumentPathResponse -> TestTree
responseGetDocumentPath =
  res
    "GetDocumentPathResponse"
    "fixture/GetDocumentPathResponse.proto"
    workDocs
    (Proxy :: Proxy GetDocumentPath)

responseDescribeGroups :: DescribeGroupsResponse -> TestTree
responseDescribeGroups =
  res
    "DescribeGroupsResponse"
    "fixture/DescribeGroupsResponse.proto"
    workDocs
    (Proxy :: Proxy DescribeGroups)

responseGetDocument :: GetDocumentResponse -> TestTree
responseGetDocument =
  res
    "GetDocumentResponse"
    "fixture/GetDocumentResponse.proto"
    workDocs
    (Proxy :: Proxy GetDocument)

responseDescribeActivities :: DescribeActivitiesResponse -> TestTree
responseDescribeActivities =
  res
    "DescribeActivitiesResponse"
    "fixture/DescribeActivitiesResponse.proto"
    workDocs
    (Proxy :: Proxy DescribeActivities)

responseGetCurrentUser :: GetCurrentUserResponse -> TestTree
responseGetCurrentUser =
  res
    "GetCurrentUserResponse"
    "fixture/GetCurrentUserResponse.proto"
    workDocs
    (Proxy :: Proxy GetCurrentUser)

responseAddResourcePermissions :: AddResourcePermissionsResponse -> TestTree
responseAddResourcePermissions =
  res
    "AddResourcePermissionsResponse"
    "fixture/AddResourcePermissionsResponse.proto"
    workDocs
    (Proxy :: Proxy AddResourcePermissions)

responseDeleteUser :: DeleteUserResponse -> TestTree
responseDeleteUser =
  res
    "DeleteUserResponse"
    "fixture/DeleteUserResponse.proto"
    workDocs
    (Proxy :: Proxy DeleteUser)

responseGetFolder :: GetFolderResponse -> TestTree
responseGetFolder =
  res
    "GetFolderResponse"
    "fixture/GetFolderResponse.proto"
    workDocs
    (Proxy :: Proxy GetFolder)

responseUpdateUser :: UpdateUserResponse -> TestTree
responseUpdateUser =
  res
    "UpdateUserResponse"
    "fixture/UpdateUserResponse.proto"
    workDocs
    (Proxy :: Proxy UpdateUser)

responseDescribeNotificationSubscriptions :: DescribeNotificationSubscriptionsResponse -> TestTree
responseDescribeNotificationSubscriptions =
  res
    "DescribeNotificationSubscriptionsResponse"
    "fixture/DescribeNotificationSubscriptionsResponse.proto"
    workDocs
    (Proxy :: Proxy DescribeNotificationSubscriptions)

responseRemoveAllResourcePermissions :: RemoveAllResourcePermissionsResponse -> TestTree
responseRemoveAllResourcePermissions =
  res
    "RemoveAllResourcePermissionsResponse"
    "fixture/RemoveAllResourcePermissionsResponse.proto"
    workDocs
    (Proxy :: Proxy RemoveAllResourcePermissions)

responseDeleteFolderContents :: DeleteFolderContentsResponse -> TestTree
responseDeleteFolderContents =
  res
    "DeleteFolderContentsResponse"
    "fixture/DeleteFolderContentsResponse.proto"
    workDocs
    (Proxy :: Proxy DeleteFolderContents)

responseDescribeComments :: DescribeCommentsResponse -> TestTree
responseDescribeComments =
  res
    "DescribeCommentsResponse"
    "fixture/DescribeCommentsResponse.proto"
    workDocs
    (Proxy :: Proxy DescribeComments)

responseInitiateDocumentVersionUpload :: InitiateDocumentVersionUploadResponse -> TestTree
responseInitiateDocumentVersionUpload =
  res
    "InitiateDocumentVersionUploadResponse"
    "fixture/InitiateDocumentVersionUploadResponse.proto"
    workDocs
    (Proxy :: Proxy InitiateDocumentVersionUpload)
