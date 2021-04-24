{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.AppStream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.AppStream where

import Data.Proxy
import Network.AWS.AppStream
import Test.AWS.AppStream.Internal
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
--         [ requestDeleteImageBuilder $
--             deleteImageBuilder
--
--         , requestListAssociatedFleets $
--             listAssociatedFleets
--
--         , requestBatchAssociateUserStack $
--             batchAssociateUserStack
--
--         , requestListAssociatedStacks $
--             listAssociatedStacks
--
--         , requestDeleteUsageReportSubscription $
--             deleteUsageReportSubscription
--
--         , requestStopImageBuilder $
--             stopImageBuilder
--
--         , requestStartFleet $
--             startFleet
--
--         , requestStartImageBuilder $
--             startImageBuilder
--
--         , requestStopFleet $
--             stopFleet
--
--         , requestUntagResource $
--             untagResource
--
--         , requestEnableUser $
--             enableUser
--
--         , requestDescribeSessions $
--             describeSessions
--
--         , requestDescribeFleets $
--             describeFleets
--
--         , requestDescribeStacks $
--             describeStacks
--
--         , requestTagResource $
--             tagResource
--
--         , requestCreateUser $
--             createUser
--
--         , requestUpdateDirectoryConfig $
--             updateDirectoryConfig
--
--         , requestCreateStack $
--             createStack
--
--         , requestDeleteDirectoryConfig $
--             deleteDirectoryConfig
--
--         , requestCopyImage $
--             copyImage
--
--         , requestCreateFleet $
--             createFleet
--
--         , requestCreateImageBuilder $
--             createImageBuilder
--
--         , requestAssociateFleet $
--             associateFleet
--
--         , requestCreateDirectoryConfig $
--             createDirectoryConfig
--
--         , requestUpdateFleet $
--             updateFleet
--
--         , requestDeleteStack $
--             deleteStack
--
--         , requestDeleteFleet $
--             deleteFleet
--
--         , requestDescribeUsers $
--             describeUsers
--
--         , requestUpdateStack $
--             updateStack
--
--         , requestCreateUsageReportSubscription $
--             createUsageReportSubscription
--
--         , requestDisassociateFleet $
--             disassociateFleet
--
--         , requestDescribeImages $
--             describeImages
--
--         , requestBatchDisassociateUserStack $
--             batchDisassociateUserStack
--
--         , requestDescribeUsageReportSubscriptions $
--             describeUsageReportSubscriptions
--
--         , requestDeleteImage $
--             deleteImage
--
--         , requestDeleteImagePermissions $
--             deleteImagePermissions
--
--         , requestUpdateImagePermissions $
--             updateImagePermissions
--
--         , requestCreateStreamingURL $
--             createStreamingURL
--
--         , requestDeleteUser $
--             deleteUser
--
--         , requestDescribeUserStackAssociations $
--             describeUserStackAssociations
--
--         , requestDescribeImageBuilders $
--             describeImageBuilders
--
--         , requestDescribeDirectoryConfigs $
--             describeDirectoryConfigs
--
--         , requestDisableUser $
--             disableUser
--
--         , requestExpireSession $
--             expireSession
--
--         , requestCreateImageBuilderStreamingURL $
--             createImageBuilderStreamingURL
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestDescribeImagePermissions $
--             describeImagePermissions
--
--           ]

--     , testGroup "response"
--         [ responseDeleteImageBuilder $
--             deleteImageBuilderResponse
--
--         , responseListAssociatedFleets $
--             listAssociatedFleetsResponse
--
--         , responseBatchAssociateUserStack $
--             batchAssociateUserStackResponse
--
--         , responseListAssociatedStacks $
--             listAssociatedStacksResponse
--
--         , responseDeleteUsageReportSubscription $
--             deleteUsageReportSubscriptionResponse
--
--         , responseStopImageBuilder $
--             stopImageBuilderResponse
--
--         , responseStartFleet $
--             startFleetResponse
--
--         , responseStartImageBuilder $
--             startImageBuilderResponse
--
--         , responseStopFleet $
--             stopFleetResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseEnableUser $
--             enableUserResponse
--
--         , responseDescribeSessions $
--             describeSessionsResponse
--
--         , responseDescribeFleets $
--             describeFleetsResponse
--
--         , responseDescribeStacks $
--             describeStacksResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseCreateUser $
--             createUserResponse
--
--         , responseUpdateDirectoryConfig $
--             updateDirectoryConfigResponse
--
--         , responseCreateStack $
--             createStackResponse
--
--         , responseDeleteDirectoryConfig $
--             deleteDirectoryConfigResponse
--
--         , responseCopyImage $
--             copyImageResponse
--
--         , responseCreateFleet $
--             createFleetResponse
--
--         , responseCreateImageBuilder $
--             createImageBuilderResponse
--
--         , responseAssociateFleet $
--             associateFleetResponse
--
--         , responseCreateDirectoryConfig $
--             createDirectoryConfigResponse
--
--         , responseUpdateFleet $
--             updateFleetResponse
--
--         , responseDeleteStack $
--             deleteStackResponse
--
--         , responseDeleteFleet $
--             deleteFleetResponse
--
--         , responseDescribeUsers $
--             describeUsersResponse
--
--         , responseUpdateStack $
--             updateStackResponse
--
--         , responseCreateUsageReportSubscription $
--             createUsageReportSubscriptionResponse
--
--         , responseDisassociateFleet $
--             disassociateFleetResponse
--
--         , responseDescribeImages $
--             describeImagesResponse
--
--         , responseBatchDisassociateUserStack $
--             batchDisassociateUserStackResponse
--
--         , responseDescribeUsageReportSubscriptions $
--             describeUsageReportSubscriptionsResponse
--
--         , responseDeleteImage $
--             deleteImageResponse
--
--         , responseDeleteImagePermissions $
--             deleteImagePermissionsResponse
--
--         , responseUpdateImagePermissions $
--             updateImagePermissionsResponse
--
--         , responseCreateStreamingURL $
--             createStreamingURLResponse
--
--         , responseDeleteUser $
--             deleteUserResponse
--
--         , responseDescribeUserStackAssociations $
--             describeUserStackAssociationsResponse
--
--         , responseDescribeImageBuilders $
--             describeImageBuildersResponse
--
--         , responseDescribeDirectoryConfigs $
--             describeDirectoryConfigsResponse
--
--         , responseDisableUser $
--             disableUserResponse
--
--         , responseExpireSession $
--             expireSessionResponse
--
--         , responseCreateImageBuilderStreamingURL $
--             createImageBuilderStreamingURLResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseDescribeImagePermissions $
--             describeImagePermissionsResponse
--
--           ]
--     ]

-- Requests

requestDeleteImageBuilder :: DeleteImageBuilder -> TestTree
requestDeleteImageBuilder =
  req
    "DeleteImageBuilder"
    "fixture/DeleteImageBuilder.yaml"

requestListAssociatedFleets :: ListAssociatedFleets -> TestTree
requestListAssociatedFleets =
  req
    "ListAssociatedFleets"
    "fixture/ListAssociatedFleets.yaml"

requestBatchAssociateUserStack :: BatchAssociateUserStack -> TestTree
requestBatchAssociateUserStack =
  req
    "BatchAssociateUserStack"
    "fixture/BatchAssociateUserStack.yaml"

requestListAssociatedStacks :: ListAssociatedStacks -> TestTree
requestListAssociatedStacks =
  req
    "ListAssociatedStacks"
    "fixture/ListAssociatedStacks.yaml"

requestDeleteUsageReportSubscription :: DeleteUsageReportSubscription -> TestTree
requestDeleteUsageReportSubscription =
  req
    "DeleteUsageReportSubscription"
    "fixture/DeleteUsageReportSubscription.yaml"

requestStopImageBuilder :: StopImageBuilder -> TestTree
requestStopImageBuilder =
  req
    "StopImageBuilder"
    "fixture/StopImageBuilder.yaml"

requestStartFleet :: StartFleet -> TestTree
requestStartFleet =
  req
    "StartFleet"
    "fixture/StartFleet.yaml"

requestStartImageBuilder :: StartImageBuilder -> TestTree
requestStartImageBuilder =
  req
    "StartImageBuilder"
    "fixture/StartImageBuilder.yaml"

requestStopFleet :: StopFleet -> TestTree
requestStopFleet =
  req
    "StopFleet"
    "fixture/StopFleet.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestEnableUser :: EnableUser -> TestTree
requestEnableUser =
  req
    "EnableUser"
    "fixture/EnableUser.yaml"

requestDescribeSessions :: DescribeSessions -> TestTree
requestDescribeSessions =
  req
    "DescribeSessions"
    "fixture/DescribeSessions.yaml"

requestDescribeFleets :: DescribeFleets -> TestTree
requestDescribeFleets =
  req
    "DescribeFleets"
    "fixture/DescribeFleets.yaml"

requestDescribeStacks :: DescribeStacks -> TestTree
requestDescribeStacks =
  req
    "DescribeStacks"
    "fixture/DescribeStacks.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestCreateUser :: CreateUser -> TestTree
requestCreateUser =
  req
    "CreateUser"
    "fixture/CreateUser.yaml"

requestUpdateDirectoryConfig :: UpdateDirectoryConfig -> TestTree
requestUpdateDirectoryConfig =
  req
    "UpdateDirectoryConfig"
    "fixture/UpdateDirectoryConfig.yaml"

requestCreateStack :: CreateStack -> TestTree
requestCreateStack =
  req
    "CreateStack"
    "fixture/CreateStack.yaml"

requestDeleteDirectoryConfig :: DeleteDirectoryConfig -> TestTree
requestDeleteDirectoryConfig =
  req
    "DeleteDirectoryConfig"
    "fixture/DeleteDirectoryConfig.yaml"

requestCopyImage :: CopyImage -> TestTree
requestCopyImage =
  req
    "CopyImage"
    "fixture/CopyImage.yaml"

requestCreateFleet :: CreateFleet -> TestTree
requestCreateFleet =
  req
    "CreateFleet"
    "fixture/CreateFleet.yaml"

requestCreateImageBuilder :: CreateImageBuilder -> TestTree
requestCreateImageBuilder =
  req
    "CreateImageBuilder"
    "fixture/CreateImageBuilder.yaml"

requestAssociateFleet :: AssociateFleet -> TestTree
requestAssociateFleet =
  req
    "AssociateFleet"
    "fixture/AssociateFleet.yaml"

requestCreateDirectoryConfig :: CreateDirectoryConfig -> TestTree
requestCreateDirectoryConfig =
  req
    "CreateDirectoryConfig"
    "fixture/CreateDirectoryConfig.yaml"

requestUpdateFleet :: UpdateFleet -> TestTree
requestUpdateFleet =
  req
    "UpdateFleet"
    "fixture/UpdateFleet.yaml"

requestDeleteStack :: DeleteStack -> TestTree
requestDeleteStack =
  req
    "DeleteStack"
    "fixture/DeleteStack.yaml"

requestDeleteFleet :: DeleteFleet -> TestTree
requestDeleteFleet =
  req
    "DeleteFleet"
    "fixture/DeleteFleet.yaml"

requestDescribeUsers :: DescribeUsers -> TestTree
requestDescribeUsers =
  req
    "DescribeUsers"
    "fixture/DescribeUsers.yaml"

requestUpdateStack :: UpdateStack -> TestTree
requestUpdateStack =
  req
    "UpdateStack"
    "fixture/UpdateStack.yaml"

requestCreateUsageReportSubscription :: CreateUsageReportSubscription -> TestTree
requestCreateUsageReportSubscription =
  req
    "CreateUsageReportSubscription"
    "fixture/CreateUsageReportSubscription.yaml"

requestDisassociateFleet :: DisassociateFleet -> TestTree
requestDisassociateFleet =
  req
    "DisassociateFleet"
    "fixture/DisassociateFleet.yaml"

requestDescribeImages :: DescribeImages -> TestTree
requestDescribeImages =
  req
    "DescribeImages"
    "fixture/DescribeImages.yaml"

requestBatchDisassociateUserStack :: BatchDisassociateUserStack -> TestTree
requestBatchDisassociateUserStack =
  req
    "BatchDisassociateUserStack"
    "fixture/BatchDisassociateUserStack.yaml"

requestDescribeUsageReportSubscriptions :: DescribeUsageReportSubscriptions -> TestTree
requestDescribeUsageReportSubscriptions =
  req
    "DescribeUsageReportSubscriptions"
    "fixture/DescribeUsageReportSubscriptions.yaml"

requestDeleteImage :: DeleteImage -> TestTree
requestDeleteImage =
  req
    "DeleteImage"
    "fixture/DeleteImage.yaml"

requestDeleteImagePermissions :: DeleteImagePermissions -> TestTree
requestDeleteImagePermissions =
  req
    "DeleteImagePermissions"
    "fixture/DeleteImagePermissions.yaml"

requestUpdateImagePermissions :: UpdateImagePermissions -> TestTree
requestUpdateImagePermissions =
  req
    "UpdateImagePermissions"
    "fixture/UpdateImagePermissions.yaml"

requestCreateStreamingURL :: CreateStreamingURL -> TestTree
requestCreateStreamingURL =
  req
    "CreateStreamingURL"
    "fixture/CreateStreamingURL.yaml"

requestDeleteUser :: DeleteUser -> TestTree
requestDeleteUser =
  req
    "DeleteUser"
    "fixture/DeleteUser.yaml"

requestDescribeUserStackAssociations :: DescribeUserStackAssociations -> TestTree
requestDescribeUserStackAssociations =
  req
    "DescribeUserStackAssociations"
    "fixture/DescribeUserStackAssociations.yaml"

requestDescribeImageBuilders :: DescribeImageBuilders -> TestTree
requestDescribeImageBuilders =
  req
    "DescribeImageBuilders"
    "fixture/DescribeImageBuilders.yaml"

requestDescribeDirectoryConfigs :: DescribeDirectoryConfigs -> TestTree
requestDescribeDirectoryConfigs =
  req
    "DescribeDirectoryConfigs"
    "fixture/DescribeDirectoryConfigs.yaml"

requestDisableUser :: DisableUser -> TestTree
requestDisableUser =
  req
    "DisableUser"
    "fixture/DisableUser.yaml"

requestExpireSession :: ExpireSession -> TestTree
requestExpireSession =
  req
    "ExpireSession"
    "fixture/ExpireSession.yaml"

requestCreateImageBuilderStreamingURL :: CreateImageBuilderStreamingURL -> TestTree
requestCreateImageBuilderStreamingURL =
  req
    "CreateImageBuilderStreamingURL"
    "fixture/CreateImageBuilderStreamingURL.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestDescribeImagePermissions :: DescribeImagePermissions -> TestTree
requestDescribeImagePermissions =
  req
    "DescribeImagePermissions"
    "fixture/DescribeImagePermissions.yaml"

-- Responses

responseDeleteImageBuilder :: DeleteImageBuilderResponse -> TestTree
responseDeleteImageBuilder =
  res
    "DeleteImageBuilderResponse"
    "fixture/DeleteImageBuilderResponse.proto"
    appStream
    (Proxy :: Proxy DeleteImageBuilder)

responseListAssociatedFleets :: ListAssociatedFleetsResponse -> TestTree
responseListAssociatedFleets =
  res
    "ListAssociatedFleetsResponse"
    "fixture/ListAssociatedFleetsResponse.proto"
    appStream
    (Proxy :: Proxy ListAssociatedFleets)

responseBatchAssociateUserStack :: BatchAssociateUserStackResponse -> TestTree
responseBatchAssociateUserStack =
  res
    "BatchAssociateUserStackResponse"
    "fixture/BatchAssociateUserStackResponse.proto"
    appStream
    (Proxy :: Proxy BatchAssociateUserStack)

responseListAssociatedStacks :: ListAssociatedStacksResponse -> TestTree
responseListAssociatedStacks =
  res
    "ListAssociatedStacksResponse"
    "fixture/ListAssociatedStacksResponse.proto"
    appStream
    (Proxy :: Proxy ListAssociatedStacks)

responseDeleteUsageReportSubscription :: DeleteUsageReportSubscriptionResponse -> TestTree
responseDeleteUsageReportSubscription =
  res
    "DeleteUsageReportSubscriptionResponse"
    "fixture/DeleteUsageReportSubscriptionResponse.proto"
    appStream
    (Proxy :: Proxy DeleteUsageReportSubscription)

responseStopImageBuilder :: StopImageBuilderResponse -> TestTree
responseStopImageBuilder =
  res
    "StopImageBuilderResponse"
    "fixture/StopImageBuilderResponse.proto"
    appStream
    (Proxy :: Proxy StopImageBuilder)

responseStartFleet :: StartFleetResponse -> TestTree
responseStartFleet =
  res
    "StartFleetResponse"
    "fixture/StartFleetResponse.proto"
    appStream
    (Proxy :: Proxy StartFleet)

responseStartImageBuilder :: StartImageBuilderResponse -> TestTree
responseStartImageBuilder =
  res
    "StartImageBuilderResponse"
    "fixture/StartImageBuilderResponse.proto"
    appStream
    (Proxy :: Proxy StartImageBuilder)

responseStopFleet :: StopFleetResponse -> TestTree
responseStopFleet =
  res
    "StopFleetResponse"
    "fixture/StopFleetResponse.proto"
    appStream
    (Proxy :: Proxy StopFleet)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    appStream
    (Proxy :: Proxy UntagResource)

responseEnableUser :: EnableUserResponse -> TestTree
responseEnableUser =
  res
    "EnableUserResponse"
    "fixture/EnableUserResponse.proto"
    appStream
    (Proxy :: Proxy EnableUser)

responseDescribeSessions :: DescribeSessionsResponse -> TestTree
responseDescribeSessions =
  res
    "DescribeSessionsResponse"
    "fixture/DescribeSessionsResponse.proto"
    appStream
    (Proxy :: Proxy DescribeSessions)

responseDescribeFleets :: DescribeFleetsResponse -> TestTree
responseDescribeFleets =
  res
    "DescribeFleetsResponse"
    "fixture/DescribeFleetsResponse.proto"
    appStream
    (Proxy :: Proxy DescribeFleets)

responseDescribeStacks :: DescribeStacksResponse -> TestTree
responseDescribeStacks =
  res
    "DescribeStacksResponse"
    "fixture/DescribeStacksResponse.proto"
    appStream
    (Proxy :: Proxy DescribeStacks)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    appStream
    (Proxy :: Proxy TagResource)

responseCreateUser :: CreateUserResponse -> TestTree
responseCreateUser =
  res
    "CreateUserResponse"
    "fixture/CreateUserResponse.proto"
    appStream
    (Proxy :: Proxy CreateUser)

responseUpdateDirectoryConfig :: UpdateDirectoryConfigResponse -> TestTree
responseUpdateDirectoryConfig =
  res
    "UpdateDirectoryConfigResponse"
    "fixture/UpdateDirectoryConfigResponse.proto"
    appStream
    (Proxy :: Proxy UpdateDirectoryConfig)

responseCreateStack :: CreateStackResponse -> TestTree
responseCreateStack =
  res
    "CreateStackResponse"
    "fixture/CreateStackResponse.proto"
    appStream
    (Proxy :: Proxy CreateStack)

responseDeleteDirectoryConfig :: DeleteDirectoryConfigResponse -> TestTree
responseDeleteDirectoryConfig =
  res
    "DeleteDirectoryConfigResponse"
    "fixture/DeleteDirectoryConfigResponse.proto"
    appStream
    (Proxy :: Proxy DeleteDirectoryConfig)

responseCopyImage :: CopyImageResponse -> TestTree
responseCopyImage =
  res
    "CopyImageResponse"
    "fixture/CopyImageResponse.proto"
    appStream
    (Proxy :: Proxy CopyImage)

responseCreateFleet :: CreateFleetResponse -> TestTree
responseCreateFleet =
  res
    "CreateFleetResponse"
    "fixture/CreateFleetResponse.proto"
    appStream
    (Proxy :: Proxy CreateFleet)

responseCreateImageBuilder :: CreateImageBuilderResponse -> TestTree
responseCreateImageBuilder =
  res
    "CreateImageBuilderResponse"
    "fixture/CreateImageBuilderResponse.proto"
    appStream
    (Proxy :: Proxy CreateImageBuilder)

responseAssociateFleet :: AssociateFleetResponse -> TestTree
responseAssociateFleet =
  res
    "AssociateFleetResponse"
    "fixture/AssociateFleetResponse.proto"
    appStream
    (Proxy :: Proxy AssociateFleet)

responseCreateDirectoryConfig :: CreateDirectoryConfigResponse -> TestTree
responseCreateDirectoryConfig =
  res
    "CreateDirectoryConfigResponse"
    "fixture/CreateDirectoryConfigResponse.proto"
    appStream
    (Proxy :: Proxy CreateDirectoryConfig)

responseUpdateFleet :: UpdateFleetResponse -> TestTree
responseUpdateFleet =
  res
    "UpdateFleetResponse"
    "fixture/UpdateFleetResponse.proto"
    appStream
    (Proxy :: Proxy UpdateFleet)

responseDeleteStack :: DeleteStackResponse -> TestTree
responseDeleteStack =
  res
    "DeleteStackResponse"
    "fixture/DeleteStackResponse.proto"
    appStream
    (Proxy :: Proxy DeleteStack)

responseDeleteFleet :: DeleteFleetResponse -> TestTree
responseDeleteFleet =
  res
    "DeleteFleetResponse"
    "fixture/DeleteFleetResponse.proto"
    appStream
    (Proxy :: Proxy DeleteFleet)

responseDescribeUsers :: DescribeUsersResponse -> TestTree
responseDescribeUsers =
  res
    "DescribeUsersResponse"
    "fixture/DescribeUsersResponse.proto"
    appStream
    (Proxy :: Proxy DescribeUsers)

responseUpdateStack :: UpdateStackResponse -> TestTree
responseUpdateStack =
  res
    "UpdateStackResponse"
    "fixture/UpdateStackResponse.proto"
    appStream
    (Proxy :: Proxy UpdateStack)

responseCreateUsageReportSubscription :: CreateUsageReportSubscriptionResponse -> TestTree
responseCreateUsageReportSubscription =
  res
    "CreateUsageReportSubscriptionResponse"
    "fixture/CreateUsageReportSubscriptionResponse.proto"
    appStream
    (Proxy :: Proxy CreateUsageReportSubscription)

responseDisassociateFleet :: DisassociateFleetResponse -> TestTree
responseDisassociateFleet =
  res
    "DisassociateFleetResponse"
    "fixture/DisassociateFleetResponse.proto"
    appStream
    (Proxy :: Proxy DisassociateFleet)

responseDescribeImages :: DescribeImagesResponse -> TestTree
responseDescribeImages =
  res
    "DescribeImagesResponse"
    "fixture/DescribeImagesResponse.proto"
    appStream
    (Proxy :: Proxy DescribeImages)

responseBatchDisassociateUserStack :: BatchDisassociateUserStackResponse -> TestTree
responseBatchDisassociateUserStack =
  res
    "BatchDisassociateUserStackResponse"
    "fixture/BatchDisassociateUserStackResponse.proto"
    appStream
    (Proxy :: Proxy BatchDisassociateUserStack)

responseDescribeUsageReportSubscriptions :: DescribeUsageReportSubscriptionsResponse -> TestTree
responseDescribeUsageReportSubscriptions =
  res
    "DescribeUsageReportSubscriptionsResponse"
    "fixture/DescribeUsageReportSubscriptionsResponse.proto"
    appStream
    (Proxy :: Proxy DescribeUsageReportSubscriptions)

responseDeleteImage :: DeleteImageResponse -> TestTree
responseDeleteImage =
  res
    "DeleteImageResponse"
    "fixture/DeleteImageResponse.proto"
    appStream
    (Proxy :: Proxy DeleteImage)

responseDeleteImagePermissions :: DeleteImagePermissionsResponse -> TestTree
responseDeleteImagePermissions =
  res
    "DeleteImagePermissionsResponse"
    "fixture/DeleteImagePermissionsResponse.proto"
    appStream
    (Proxy :: Proxy DeleteImagePermissions)

responseUpdateImagePermissions :: UpdateImagePermissionsResponse -> TestTree
responseUpdateImagePermissions =
  res
    "UpdateImagePermissionsResponse"
    "fixture/UpdateImagePermissionsResponse.proto"
    appStream
    (Proxy :: Proxy UpdateImagePermissions)

responseCreateStreamingURL :: CreateStreamingURLResponse -> TestTree
responseCreateStreamingURL =
  res
    "CreateStreamingURLResponse"
    "fixture/CreateStreamingURLResponse.proto"
    appStream
    (Proxy :: Proxy CreateStreamingURL)

responseDeleteUser :: DeleteUserResponse -> TestTree
responseDeleteUser =
  res
    "DeleteUserResponse"
    "fixture/DeleteUserResponse.proto"
    appStream
    (Proxy :: Proxy DeleteUser)

responseDescribeUserStackAssociations :: DescribeUserStackAssociationsResponse -> TestTree
responseDescribeUserStackAssociations =
  res
    "DescribeUserStackAssociationsResponse"
    "fixture/DescribeUserStackAssociationsResponse.proto"
    appStream
    (Proxy :: Proxy DescribeUserStackAssociations)

responseDescribeImageBuilders :: DescribeImageBuildersResponse -> TestTree
responseDescribeImageBuilders =
  res
    "DescribeImageBuildersResponse"
    "fixture/DescribeImageBuildersResponse.proto"
    appStream
    (Proxy :: Proxy DescribeImageBuilders)

responseDescribeDirectoryConfigs :: DescribeDirectoryConfigsResponse -> TestTree
responseDescribeDirectoryConfigs =
  res
    "DescribeDirectoryConfigsResponse"
    "fixture/DescribeDirectoryConfigsResponse.proto"
    appStream
    (Proxy :: Proxy DescribeDirectoryConfigs)

responseDisableUser :: DisableUserResponse -> TestTree
responseDisableUser =
  res
    "DisableUserResponse"
    "fixture/DisableUserResponse.proto"
    appStream
    (Proxy :: Proxy DisableUser)

responseExpireSession :: ExpireSessionResponse -> TestTree
responseExpireSession =
  res
    "ExpireSessionResponse"
    "fixture/ExpireSessionResponse.proto"
    appStream
    (Proxy :: Proxy ExpireSession)

responseCreateImageBuilderStreamingURL :: CreateImageBuilderStreamingURLResponse -> TestTree
responseCreateImageBuilderStreamingURL =
  res
    "CreateImageBuilderStreamingURLResponse"
    "fixture/CreateImageBuilderStreamingURLResponse.proto"
    appStream
    (Proxy :: Proxy CreateImageBuilderStreamingURL)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    appStream
    (Proxy :: Proxy ListTagsForResource)

responseDescribeImagePermissions :: DescribeImagePermissionsResponse -> TestTree
responseDescribeImagePermissions =
  res
    "DescribeImagePermissionsResponse"
    "fixture/DescribeImagePermissionsResponse.proto"
    appStream
    (Proxy :: Proxy DescribeImagePermissions)
