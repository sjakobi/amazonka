{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.MediaLive
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.MediaLive where

import Data.Proxy
import Network.AWS.MediaLive
import Test.AWS.Fixture
import Test.AWS.MediaLive.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDescribeInputDeviceThumbnail $
--             describeInputDeviceThumbnail
--
--         , requestUpdateInputDevice $
--             updateInputDevice'
--
--         , requestListInputs $
--             listInputs
--
--         , requestCreateChannel $
--             createChannel'
--
--         , requestDeleteInput $
--             deleteInput
--
--         , requestListInputDevices $
--             listInputDevices
--
--         , requestUpdateInput $
--             updateInput'
--
--         , requestListInputDeviceTransfers $
--             listInputDeviceTransfers
--
--         , requestBatchStop $
--             batchStop'
--
--         , requestUpdateChannelClass $
--             updateChannelClass'
--
--         , requestBatchStart $
--             batchStart'
--
--         , requestListOfferings $
--             listOfferings
--
--         , requestUpdateMultiplex $
--             updateMultiplex'
--
--         , requestDeleteMultiplex $
--             deleteMultiplex
--
--         , requestDeleteInputSecurityGroup $
--             deleteInputSecurityGroup
--
--         , requestUpdateInputSecurityGroup $
--             updateInputSecurityGroup
--
--         , requestListInputSecurityGroups $
--             listInputSecurityGroups
--
--         , requestDescribeInput $
--             describeInput
--
--         , requestCreateInputSecurityGroup $
--             createInputSecurityGroup
--
--         , requestStartChannel $
--             startChannel
--
--         , requestDescribeInputDevice $
--             describeInputDevice
--
--         , requestStopChannel $
--             stopChannel
--
--         , requestDeleteTags $
--             deleteTags
--
--         , requestBatchUpdateSchedule $
--             batchUpdateSchedule
--
--         , requestDescribeOffering $
--             describeOffering
--
--         , requestAcceptInputDeviceTransfer $
--             acceptInputDeviceTransfer
--
--         , requestDeleteMultiplexProgram $
--             deleteMultiplexProgram
--
--         , requestUpdateMultiplexProgram $
--             updateMultiplexProgram'
--
--         , requestDescribeReservation $
--             describeReservation
--
--         , requestDescribeInputSecurityGroup $
--             describeInputSecurityGroup
--
--         , requestListChannels $
--             listChannels
--
--         , requestRejectInputDeviceTransfer $
--             rejectInputDeviceTransfer
--
--         , requestCreateMultiplex $
--             createMultiplex'
--
--         , requestCreatePartnerInput $
--             createPartnerInput'
--
--         , requestDeleteSchedule $
--             deleteSchedule
--
--         , requestListMultiplexes $
--             listMultiplexes
--
--         , requestUpdateReservation $
--             updateReservation'
--
--         , requestDeleteReservation $
--             deleteReservation
--
--         , requestDescribeMultiplexProgram $
--             describeMultiplexProgram
--
--         , requestListReservations $
--             listReservations
--
--         , requestDescribeChannel $
--             describeChannel
--
--         , requestCancelInputDeviceTransfer $
--             cancelInputDeviceTransfer
--
--         , requestPurchaseOffering $
--             purchaseOffering'
--
--         , requestStartMultiplex $
--             startMultiplex
--
--         , requestStopMultiplex $
--             stopMultiplex
--
--         , requestDescribeSchedule $
--             describeSchedule
--
--         , requestCreateMultiplexProgram $
--             createMultiplexProgram'
--
--         , requestCreateTags $
--             createTags
--
--         , requestTransferInputDevice $
--             transferInputDevice'
--
--         , requestListMultiplexPrograms $
--             listMultiplexPrograms
--
--         , requestDescribeMultiplex $
--             describeMultiplex
--
--         , requestBatchDelete $
--             batchDelete'
--
--         , requestCreateInput $
--             createInput'
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestDeleteChannel $
--             deleteChannel
--
--         , requestUpdateChannel $
--             updateChannel'
--
--           ]

--     , testGroup "response"
--         [ responseDescribeInputDeviceThumbnail $
--             describeInputDeviceThumbnailResponse
--
--         , responseUpdateInputDevice $
--             updateInputDeviceResponse
--
--         , responseListInputs $
--             listInputsResponse
--
--         , responseCreateChannel $
--             createChannelResponse
--
--         , responseDeleteInput $
--             deleteInputResponse
--
--         , responseListInputDevices $
--             listInputDevicesResponse
--
--         , responseUpdateInput $
--             updateInputResponse
--
--         , responseListInputDeviceTransfers $
--             listInputDeviceTransfersResponse
--
--         , responseBatchStop $
--             batchStopResponse
--
--         , responseUpdateChannelClass $
--             updateChannelClassResponse
--
--         , responseBatchStart $
--             batchStartResponse
--
--         , responseListOfferings $
--             listOfferingsResponse
--
--         , responseUpdateMultiplex $
--             updateMultiplexResponse
--
--         , responseDeleteMultiplex $
--             deleteMultiplexResponse
--
--         , responseDeleteInputSecurityGroup $
--             deleteInputSecurityGroupResponse
--
--         , responseUpdateInputSecurityGroup $
--             updateInputSecurityGroupResponse
--
--         , responseListInputSecurityGroups $
--             listInputSecurityGroupsResponse
--
--         , responseDescribeInput $
--             describeInputResponse
--
--         , responseCreateInputSecurityGroup $
--             createInputSecurityGroupResponse
--
--         , responseStartChannel $
--             startChannelResponse
--
--         , responseDescribeInputDevice $
--             describeInputDeviceResponse
--
--         , responseStopChannel $
--             stopChannelResponse
--
--         , responseDeleteTags $
--             deleteTagsResponse
--
--         , responseBatchUpdateSchedule $
--             batchUpdateScheduleResponse
--
--         , responseDescribeOffering $
--             describeOfferingResponse
--
--         , responseAcceptInputDeviceTransfer $
--             acceptInputDeviceTransferResponse
--
--         , responseDeleteMultiplexProgram $
--             deleteMultiplexProgramResponse
--
--         , responseUpdateMultiplexProgram $
--             updateMultiplexProgramResponse
--
--         , responseDescribeReservation $
--             describeReservationResponse
--
--         , responseDescribeInputSecurityGroup $
--             describeInputSecurityGroupResponse
--
--         , responseListChannels $
--             listChannelsResponse
--
--         , responseRejectInputDeviceTransfer $
--             rejectInputDeviceTransferResponse
--
--         , responseCreateMultiplex $
--             createMultiplexResponse
--
--         , responseCreatePartnerInput $
--             createPartnerInputResponse
--
--         , responseDeleteSchedule $
--             deleteScheduleResponse
--
--         , responseListMultiplexes $
--             listMultiplexesResponse
--
--         , responseUpdateReservation $
--             updateReservationResponse
--
--         , responseDeleteReservation $
--             deleteReservationResponse
--
--         , responseDescribeMultiplexProgram $
--             describeMultiplexProgramResponse
--
--         , responseListReservations $
--             listReservationsResponse
--
--         , responseDescribeChannel $
--             describeChannelResponse
--
--         , responseCancelInputDeviceTransfer $
--             cancelInputDeviceTransferResponse
--
--         , responsePurchaseOffering $
--             purchaseOfferingResponse
--
--         , responseStartMultiplex $
--             startMultiplexResponse
--
--         , responseStopMultiplex $
--             stopMultiplexResponse
--
--         , responseDescribeSchedule $
--             describeScheduleResponse
--
--         , responseCreateMultiplexProgram $
--             createMultiplexProgramResponse
--
--         , responseCreateTags $
--             createTagsResponse
--
--         , responseTransferInputDevice $
--             transferInputDeviceResponse
--
--         , responseListMultiplexPrograms $
--             listMultiplexProgramsResponse
--
--         , responseDescribeMultiplex $
--             describeMultiplexResponse
--
--         , responseBatchDelete $
--             batchDeleteResponse
--
--         , responseCreateInput $
--             createInputResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseDeleteChannel $
--             deleteChannelResponse
--
--         , responseUpdateChannel $
--             updateChannelResponse
--
--           ]
--     ]

-- Requests

requestDescribeInputDeviceThumbnail :: DescribeInputDeviceThumbnail -> TestTree
requestDescribeInputDeviceThumbnail =
  req
    "DescribeInputDeviceThumbnail"
    "fixture/DescribeInputDeviceThumbnail.yaml"

requestUpdateInputDevice :: UpdateInputDevice' -> TestTree
requestUpdateInputDevice =
  req
    "UpdateInputDevice"
    "fixture/UpdateInputDevice.yaml"

requestListInputs :: ListInputs -> TestTree
requestListInputs =
  req
    "ListInputs"
    "fixture/ListInputs.yaml"

requestCreateChannel :: CreateChannel' -> TestTree
requestCreateChannel =
  req
    "CreateChannel"
    "fixture/CreateChannel.yaml"

requestDeleteInput :: DeleteInput -> TestTree
requestDeleteInput =
  req
    "DeleteInput"
    "fixture/DeleteInput.yaml"

requestListInputDevices :: ListInputDevices -> TestTree
requestListInputDevices =
  req
    "ListInputDevices"
    "fixture/ListInputDevices.yaml"

requestUpdateInput :: UpdateInput' -> TestTree
requestUpdateInput =
  req
    "UpdateInput"
    "fixture/UpdateInput.yaml"

requestListInputDeviceTransfers :: ListInputDeviceTransfers -> TestTree
requestListInputDeviceTransfers =
  req
    "ListInputDeviceTransfers"
    "fixture/ListInputDeviceTransfers.yaml"

requestBatchStop :: BatchStop' -> TestTree
requestBatchStop =
  req
    "BatchStop"
    "fixture/BatchStop.yaml"

requestUpdateChannelClass :: UpdateChannelClass' -> TestTree
requestUpdateChannelClass =
  req
    "UpdateChannelClass"
    "fixture/UpdateChannelClass.yaml"

requestBatchStart :: BatchStart' -> TestTree
requestBatchStart =
  req
    "BatchStart"
    "fixture/BatchStart.yaml"

requestListOfferings :: ListOfferings -> TestTree
requestListOfferings =
  req
    "ListOfferings"
    "fixture/ListOfferings.yaml"

requestUpdateMultiplex :: UpdateMultiplex' -> TestTree
requestUpdateMultiplex =
  req
    "UpdateMultiplex"
    "fixture/UpdateMultiplex.yaml"

requestDeleteMultiplex :: DeleteMultiplex -> TestTree
requestDeleteMultiplex =
  req
    "DeleteMultiplex"
    "fixture/DeleteMultiplex.yaml"

requestDeleteInputSecurityGroup :: DeleteInputSecurityGroup -> TestTree
requestDeleteInputSecurityGroup =
  req
    "DeleteInputSecurityGroup"
    "fixture/DeleteInputSecurityGroup.yaml"

requestUpdateInputSecurityGroup :: UpdateInputSecurityGroup -> TestTree
requestUpdateInputSecurityGroup =
  req
    "UpdateInputSecurityGroup"
    "fixture/UpdateInputSecurityGroup.yaml"

requestListInputSecurityGroups :: ListInputSecurityGroups -> TestTree
requestListInputSecurityGroups =
  req
    "ListInputSecurityGroups"
    "fixture/ListInputSecurityGroups.yaml"

requestDescribeInput :: DescribeInput -> TestTree
requestDescribeInput =
  req
    "DescribeInput"
    "fixture/DescribeInput.yaml"

requestCreateInputSecurityGroup :: CreateInputSecurityGroup -> TestTree
requestCreateInputSecurityGroup =
  req
    "CreateInputSecurityGroup"
    "fixture/CreateInputSecurityGroup.yaml"

requestStartChannel :: StartChannel -> TestTree
requestStartChannel =
  req
    "StartChannel"
    "fixture/StartChannel.yaml"

requestDescribeInputDevice :: DescribeInputDevice -> TestTree
requestDescribeInputDevice =
  req
    "DescribeInputDevice"
    "fixture/DescribeInputDevice.yaml"

requestStopChannel :: StopChannel -> TestTree
requestStopChannel =
  req
    "StopChannel"
    "fixture/StopChannel.yaml"

requestDeleteTags :: DeleteTags -> TestTree
requestDeleteTags =
  req
    "DeleteTags"
    "fixture/DeleteTags.yaml"

requestBatchUpdateSchedule :: BatchUpdateSchedule -> TestTree
requestBatchUpdateSchedule =
  req
    "BatchUpdateSchedule"
    "fixture/BatchUpdateSchedule.yaml"

requestDescribeOffering :: DescribeOffering -> TestTree
requestDescribeOffering =
  req
    "DescribeOffering"
    "fixture/DescribeOffering.yaml"

requestAcceptInputDeviceTransfer :: AcceptInputDeviceTransfer -> TestTree
requestAcceptInputDeviceTransfer =
  req
    "AcceptInputDeviceTransfer"
    "fixture/AcceptInputDeviceTransfer.yaml"

requestDeleteMultiplexProgram :: DeleteMultiplexProgram -> TestTree
requestDeleteMultiplexProgram =
  req
    "DeleteMultiplexProgram"
    "fixture/DeleteMultiplexProgram.yaml"

requestUpdateMultiplexProgram :: UpdateMultiplexProgram' -> TestTree
requestUpdateMultiplexProgram =
  req
    "UpdateMultiplexProgram"
    "fixture/UpdateMultiplexProgram.yaml"

requestDescribeReservation :: DescribeReservation -> TestTree
requestDescribeReservation =
  req
    "DescribeReservation"
    "fixture/DescribeReservation.yaml"

requestDescribeInputSecurityGroup :: DescribeInputSecurityGroup -> TestTree
requestDescribeInputSecurityGroup =
  req
    "DescribeInputSecurityGroup"
    "fixture/DescribeInputSecurityGroup.yaml"

requestListChannels :: ListChannels -> TestTree
requestListChannels =
  req
    "ListChannels"
    "fixture/ListChannels.yaml"

requestRejectInputDeviceTransfer :: RejectInputDeviceTransfer -> TestTree
requestRejectInputDeviceTransfer =
  req
    "RejectInputDeviceTransfer"
    "fixture/RejectInputDeviceTransfer.yaml"

requestCreateMultiplex :: CreateMultiplex' -> TestTree
requestCreateMultiplex =
  req
    "CreateMultiplex"
    "fixture/CreateMultiplex.yaml"

requestCreatePartnerInput :: CreatePartnerInput' -> TestTree
requestCreatePartnerInput =
  req
    "CreatePartnerInput"
    "fixture/CreatePartnerInput.yaml"

requestDeleteSchedule :: DeleteSchedule -> TestTree
requestDeleteSchedule =
  req
    "DeleteSchedule"
    "fixture/DeleteSchedule.yaml"

requestListMultiplexes :: ListMultiplexes -> TestTree
requestListMultiplexes =
  req
    "ListMultiplexes"
    "fixture/ListMultiplexes.yaml"

requestUpdateReservation :: UpdateReservation' -> TestTree
requestUpdateReservation =
  req
    "UpdateReservation"
    "fixture/UpdateReservation.yaml"

requestDeleteReservation :: DeleteReservation -> TestTree
requestDeleteReservation =
  req
    "DeleteReservation"
    "fixture/DeleteReservation.yaml"

requestDescribeMultiplexProgram :: DescribeMultiplexProgram -> TestTree
requestDescribeMultiplexProgram =
  req
    "DescribeMultiplexProgram"
    "fixture/DescribeMultiplexProgram.yaml"

requestListReservations :: ListReservations -> TestTree
requestListReservations =
  req
    "ListReservations"
    "fixture/ListReservations.yaml"

requestDescribeChannel :: DescribeChannel -> TestTree
requestDescribeChannel =
  req
    "DescribeChannel"
    "fixture/DescribeChannel.yaml"

requestCancelInputDeviceTransfer :: CancelInputDeviceTransfer -> TestTree
requestCancelInputDeviceTransfer =
  req
    "CancelInputDeviceTransfer"
    "fixture/CancelInputDeviceTransfer.yaml"

requestPurchaseOffering :: PurchaseOffering' -> TestTree
requestPurchaseOffering =
  req
    "PurchaseOffering"
    "fixture/PurchaseOffering.yaml"

requestStartMultiplex :: StartMultiplex -> TestTree
requestStartMultiplex =
  req
    "StartMultiplex"
    "fixture/StartMultiplex.yaml"

requestStopMultiplex :: StopMultiplex -> TestTree
requestStopMultiplex =
  req
    "StopMultiplex"
    "fixture/StopMultiplex.yaml"

requestDescribeSchedule :: DescribeSchedule -> TestTree
requestDescribeSchedule =
  req
    "DescribeSchedule"
    "fixture/DescribeSchedule.yaml"

requestCreateMultiplexProgram :: CreateMultiplexProgram' -> TestTree
requestCreateMultiplexProgram =
  req
    "CreateMultiplexProgram"
    "fixture/CreateMultiplexProgram.yaml"

requestCreateTags :: CreateTags -> TestTree
requestCreateTags =
  req
    "CreateTags"
    "fixture/CreateTags.yaml"

requestTransferInputDevice :: TransferInputDevice' -> TestTree
requestTransferInputDevice =
  req
    "TransferInputDevice"
    "fixture/TransferInputDevice.yaml"

requestListMultiplexPrograms :: ListMultiplexPrograms -> TestTree
requestListMultiplexPrograms =
  req
    "ListMultiplexPrograms"
    "fixture/ListMultiplexPrograms.yaml"

requestDescribeMultiplex :: DescribeMultiplex -> TestTree
requestDescribeMultiplex =
  req
    "DescribeMultiplex"
    "fixture/DescribeMultiplex.yaml"

requestBatchDelete :: BatchDelete' -> TestTree
requestBatchDelete =
  req
    "BatchDelete"
    "fixture/BatchDelete.yaml"

requestCreateInput :: CreateInput' -> TestTree
requestCreateInput =
  req
    "CreateInput"
    "fixture/CreateInput.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestDeleteChannel :: DeleteChannel -> TestTree
requestDeleteChannel =
  req
    "DeleteChannel"
    "fixture/DeleteChannel.yaml"

requestUpdateChannel :: UpdateChannel' -> TestTree
requestUpdateChannel =
  req
    "UpdateChannel"
    "fixture/UpdateChannel.yaml"

-- Responses

responseUpdateInputDevice :: UpdateInputDeviceResponse -> TestTree
responseUpdateInputDevice =
  res
    "UpdateInputDeviceResponse"
    "fixture/UpdateInputDeviceResponse.proto"
    mediaLive
    (Proxy :: Proxy UpdateInputDevice')

responseListInputs :: ListInputsResponse -> TestTree
responseListInputs =
  res
    "ListInputsResponse"
    "fixture/ListInputsResponse.proto"
    mediaLive
    (Proxy :: Proxy ListInputs)

responseCreateChannel :: CreateChannelResponse -> TestTree
responseCreateChannel =
  res
    "CreateChannelResponse"
    "fixture/CreateChannelResponse.proto"
    mediaLive
    (Proxy :: Proxy CreateChannel')

responseDeleteInput :: DeleteInputResponse -> TestTree
responseDeleteInput =
  res
    "DeleteInputResponse"
    "fixture/DeleteInputResponse.proto"
    mediaLive
    (Proxy :: Proxy DeleteInput)

responseListInputDevices :: ListInputDevicesResponse -> TestTree
responseListInputDevices =
  res
    "ListInputDevicesResponse"
    "fixture/ListInputDevicesResponse.proto"
    mediaLive
    (Proxy :: Proxy ListInputDevices)

responseUpdateInput :: UpdateInputResponse -> TestTree
responseUpdateInput =
  res
    "UpdateInputResponse"
    "fixture/UpdateInputResponse.proto"
    mediaLive
    (Proxy :: Proxy UpdateInput')

responseListInputDeviceTransfers :: ListInputDeviceTransfersResponse -> TestTree
responseListInputDeviceTransfers =
  res
    "ListInputDeviceTransfersResponse"
    "fixture/ListInputDeviceTransfersResponse.proto"
    mediaLive
    (Proxy :: Proxy ListInputDeviceTransfers)

responseBatchStop :: BatchStopResponse -> TestTree
responseBatchStop =
  res
    "BatchStopResponse"
    "fixture/BatchStopResponse.proto"
    mediaLive
    (Proxy :: Proxy BatchStop')

responseUpdateChannelClass :: UpdateChannelClassResponse -> TestTree
responseUpdateChannelClass =
  res
    "UpdateChannelClassResponse"
    "fixture/UpdateChannelClassResponse.proto"
    mediaLive
    (Proxy :: Proxy UpdateChannelClass')

responseBatchStart :: BatchStartResponse -> TestTree
responseBatchStart =
  res
    "BatchStartResponse"
    "fixture/BatchStartResponse.proto"
    mediaLive
    (Proxy :: Proxy BatchStart')

responseListOfferings :: ListOfferingsResponse -> TestTree
responseListOfferings =
  res
    "ListOfferingsResponse"
    "fixture/ListOfferingsResponse.proto"
    mediaLive
    (Proxy :: Proxy ListOfferings)

responseUpdateMultiplex :: UpdateMultiplexResponse -> TestTree
responseUpdateMultiplex =
  res
    "UpdateMultiplexResponse"
    "fixture/UpdateMultiplexResponse.proto"
    mediaLive
    (Proxy :: Proxy UpdateMultiplex')

responseDeleteMultiplex :: DeleteMultiplexResponse -> TestTree
responseDeleteMultiplex =
  res
    "DeleteMultiplexResponse"
    "fixture/DeleteMultiplexResponse.proto"
    mediaLive
    (Proxy :: Proxy DeleteMultiplex)

responseDeleteInputSecurityGroup :: DeleteInputSecurityGroupResponse -> TestTree
responseDeleteInputSecurityGroup =
  res
    "DeleteInputSecurityGroupResponse"
    "fixture/DeleteInputSecurityGroupResponse.proto"
    mediaLive
    (Proxy :: Proxy DeleteInputSecurityGroup)

responseUpdateInputSecurityGroup :: UpdateInputSecurityGroupResponse -> TestTree
responseUpdateInputSecurityGroup =
  res
    "UpdateInputSecurityGroupResponse"
    "fixture/UpdateInputSecurityGroupResponse.proto"
    mediaLive
    (Proxy :: Proxy UpdateInputSecurityGroup)

responseListInputSecurityGroups :: ListInputSecurityGroupsResponse -> TestTree
responseListInputSecurityGroups =
  res
    "ListInputSecurityGroupsResponse"
    "fixture/ListInputSecurityGroupsResponse.proto"
    mediaLive
    (Proxy :: Proxy ListInputSecurityGroups)

responseDescribeInput :: DescribeInputResponse -> TestTree
responseDescribeInput =
  res
    "DescribeInputResponse"
    "fixture/DescribeInputResponse.proto"
    mediaLive
    (Proxy :: Proxy DescribeInput)

responseCreateInputSecurityGroup :: CreateInputSecurityGroupResponse -> TestTree
responseCreateInputSecurityGroup =
  res
    "CreateInputSecurityGroupResponse"
    "fixture/CreateInputSecurityGroupResponse.proto"
    mediaLive
    (Proxy :: Proxy CreateInputSecurityGroup)

responseStartChannel :: StartChannelResponse -> TestTree
responseStartChannel =
  res
    "StartChannelResponse"
    "fixture/StartChannelResponse.proto"
    mediaLive
    (Proxy :: Proxy StartChannel)

responseDescribeInputDevice :: DescribeInputDeviceResponse -> TestTree
responseDescribeInputDevice =
  res
    "DescribeInputDeviceResponse"
    "fixture/DescribeInputDeviceResponse.proto"
    mediaLive
    (Proxy :: Proxy DescribeInputDevice)

responseStopChannel :: StopChannelResponse -> TestTree
responseStopChannel =
  res
    "StopChannelResponse"
    "fixture/StopChannelResponse.proto"
    mediaLive
    (Proxy :: Proxy StopChannel)

responseDeleteTags :: DeleteTagsResponse -> TestTree
responseDeleteTags =
  res
    "DeleteTagsResponse"
    "fixture/DeleteTagsResponse.proto"
    mediaLive
    (Proxy :: Proxy DeleteTags)

responseBatchUpdateSchedule :: BatchUpdateScheduleResponse -> TestTree
responseBatchUpdateSchedule =
  res
    "BatchUpdateScheduleResponse"
    "fixture/BatchUpdateScheduleResponse.proto"
    mediaLive
    (Proxy :: Proxy BatchUpdateSchedule)

responseDescribeOffering :: DescribeOfferingResponse -> TestTree
responseDescribeOffering =
  res
    "DescribeOfferingResponse"
    "fixture/DescribeOfferingResponse.proto"
    mediaLive
    (Proxy :: Proxy DescribeOffering)

responseAcceptInputDeviceTransfer :: AcceptInputDeviceTransferResponse -> TestTree
responseAcceptInputDeviceTransfer =
  res
    "AcceptInputDeviceTransferResponse"
    "fixture/AcceptInputDeviceTransferResponse.proto"
    mediaLive
    (Proxy :: Proxy AcceptInputDeviceTransfer)

responseDeleteMultiplexProgram :: DeleteMultiplexProgramResponse -> TestTree
responseDeleteMultiplexProgram =
  res
    "DeleteMultiplexProgramResponse"
    "fixture/DeleteMultiplexProgramResponse.proto"
    mediaLive
    (Proxy :: Proxy DeleteMultiplexProgram)

responseUpdateMultiplexProgram :: UpdateMultiplexProgramResponse -> TestTree
responseUpdateMultiplexProgram =
  res
    "UpdateMultiplexProgramResponse"
    "fixture/UpdateMultiplexProgramResponse.proto"
    mediaLive
    (Proxy :: Proxy UpdateMultiplexProgram')

responseDescribeReservation :: DescribeReservationResponse -> TestTree
responseDescribeReservation =
  res
    "DescribeReservationResponse"
    "fixture/DescribeReservationResponse.proto"
    mediaLive
    (Proxy :: Proxy DescribeReservation)

responseDescribeInputSecurityGroup :: DescribeInputSecurityGroupResponse -> TestTree
responseDescribeInputSecurityGroup =
  res
    "DescribeInputSecurityGroupResponse"
    "fixture/DescribeInputSecurityGroupResponse.proto"
    mediaLive
    (Proxy :: Proxy DescribeInputSecurityGroup)

responseListChannels :: ListChannelsResponse -> TestTree
responseListChannels =
  res
    "ListChannelsResponse"
    "fixture/ListChannelsResponse.proto"
    mediaLive
    (Proxy :: Proxy ListChannels)

responseRejectInputDeviceTransfer :: RejectInputDeviceTransferResponse -> TestTree
responseRejectInputDeviceTransfer =
  res
    "RejectInputDeviceTransferResponse"
    "fixture/RejectInputDeviceTransferResponse.proto"
    mediaLive
    (Proxy :: Proxy RejectInputDeviceTransfer)

responseCreateMultiplex :: CreateMultiplexResponse -> TestTree
responseCreateMultiplex =
  res
    "CreateMultiplexResponse"
    "fixture/CreateMultiplexResponse.proto"
    mediaLive
    (Proxy :: Proxy CreateMultiplex')

responseCreatePartnerInput :: CreatePartnerInputResponse -> TestTree
responseCreatePartnerInput =
  res
    "CreatePartnerInputResponse"
    "fixture/CreatePartnerInputResponse.proto"
    mediaLive
    (Proxy :: Proxy CreatePartnerInput')

responseDeleteSchedule :: DeleteScheduleResponse -> TestTree
responseDeleteSchedule =
  res
    "DeleteScheduleResponse"
    "fixture/DeleteScheduleResponse.proto"
    mediaLive
    (Proxy :: Proxy DeleteSchedule)

responseListMultiplexes :: ListMultiplexesResponse -> TestTree
responseListMultiplexes =
  res
    "ListMultiplexesResponse"
    "fixture/ListMultiplexesResponse.proto"
    mediaLive
    (Proxy :: Proxy ListMultiplexes)

responseUpdateReservation :: UpdateReservationResponse -> TestTree
responseUpdateReservation =
  res
    "UpdateReservationResponse"
    "fixture/UpdateReservationResponse.proto"
    mediaLive
    (Proxy :: Proxy UpdateReservation')

responseDeleteReservation :: DeleteReservationResponse -> TestTree
responseDeleteReservation =
  res
    "DeleteReservationResponse"
    "fixture/DeleteReservationResponse.proto"
    mediaLive
    (Proxy :: Proxy DeleteReservation)

responseDescribeMultiplexProgram :: DescribeMultiplexProgramResponse -> TestTree
responseDescribeMultiplexProgram =
  res
    "DescribeMultiplexProgramResponse"
    "fixture/DescribeMultiplexProgramResponse.proto"
    mediaLive
    (Proxy :: Proxy DescribeMultiplexProgram)

responseListReservations :: ListReservationsResponse -> TestTree
responseListReservations =
  res
    "ListReservationsResponse"
    "fixture/ListReservationsResponse.proto"
    mediaLive
    (Proxy :: Proxy ListReservations)

responseDescribeChannel :: DescribeChannelResponse -> TestTree
responseDescribeChannel =
  res
    "DescribeChannelResponse"
    "fixture/DescribeChannelResponse.proto"
    mediaLive
    (Proxy :: Proxy DescribeChannel)

responseCancelInputDeviceTransfer :: CancelInputDeviceTransferResponse -> TestTree
responseCancelInputDeviceTransfer =
  res
    "CancelInputDeviceTransferResponse"
    "fixture/CancelInputDeviceTransferResponse.proto"
    mediaLive
    (Proxy :: Proxy CancelInputDeviceTransfer)

responsePurchaseOffering :: PurchaseOfferingResponse -> TestTree
responsePurchaseOffering =
  res
    "PurchaseOfferingResponse"
    "fixture/PurchaseOfferingResponse.proto"
    mediaLive
    (Proxy :: Proxy PurchaseOffering')

responseStartMultiplex :: StartMultiplexResponse -> TestTree
responseStartMultiplex =
  res
    "StartMultiplexResponse"
    "fixture/StartMultiplexResponse.proto"
    mediaLive
    (Proxy :: Proxy StartMultiplex)

responseStopMultiplex :: StopMultiplexResponse -> TestTree
responseStopMultiplex =
  res
    "StopMultiplexResponse"
    "fixture/StopMultiplexResponse.proto"
    mediaLive
    (Proxy :: Proxy StopMultiplex)

responseDescribeSchedule :: DescribeScheduleResponse -> TestTree
responseDescribeSchedule =
  res
    "DescribeScheduleResponse"
    "fixture/DescribeScheduleResponse.proto"
    mediaLive
    (Proxy :: Proxy DescribeSchedule)

responseCreateMultiplexProgram :: CreateMultiplexProgramResponse -> TestTree
responseCreateMultiplexProgram =
  res
    "CreateMultiplexProgramResponse"
    "fixture/CreateMultiplexProgramResponse.proto"
    mediaLive
    (Proxy :: Proxy CreateMultiplexProgram')

responseCreateTags :: CreateTagsResponse -> TestTree
responseCreateTags =
  res
    "CreateTagsResponse"
    "fixture/CreateTagsResponse.proto"
    mediaLive
    (Proxy :: Proxy CreateTags)

responseTransferInputDevice :: TransferInputDeviceResponse -> TestTree
responseTransferInputDevice =
  res
    "TransferInputDeviceResponse"
    "fixture/TransferInputDeviceResponse.proto"
    mediaLive
    (Proxy :: Proxy TransferInputDevice')

responseListMultiplexPrograms :: ListMultiplexProgramsResponse -> TestTree
responseListMultiplexPrograms =
  res
    "ListMultiplexProgramsResponse"
    "fixture/ListMultiplexProgramsResponse.proto"
    mediaLive
    (Proxy :: Proxy ListMultiplexPrograms)

responseDescribeMultiplex :: DescribeMultiplexResponse -> TestTree
responseDescribeMultiplex =
  res
    "DescribeMultiplexResponse"
    "fixture/DescribeMultiplexResponse.proto"
    mediaLive
    (Proxy :: Proxy DescribeMultiplex)

responseBatchDelete :: BatchDeleteResponse -> TestTree
responseBatchDelete =
  res
    "BatchDeleteResponse"
    "fixture/BatchDeleteResponse.proto"
    mediaLive
    (Proxy :: Proxy BatchDelete')

responseCreateInput :: CreateInputResponse -> TestTree
responseCreateInput =
  res
    "CreateInputResponse"
    "fixture/CreateInputResponse.proto"
    mediaLive
    (Proxy :: Proxy CreateInput')

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    mediaLive
    (Proxy :: Proxy ListTagsForResource)

responseDeleteChannel :: DeleteChannelResponse -> TestTree
responseDeleteChannel =
  res
    "DeleteChannelResponse"
    "fixture/DeleteChannelResponse.proto"
    mediaLive
    (Proxy :: Proxy DeleteChannel)

responseUpdateChannel :: UpdateChannelResponse -> TestTree
responseUpdateChannel =
  res
    "UpdateChannelResponse"
    "fixture/UpdateChannelResponse.proto"
    mediaLive
    (Proxy :: Proxy UpdateChannel')
