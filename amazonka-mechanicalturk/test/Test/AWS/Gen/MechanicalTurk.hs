{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.MechanicalTurk
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.MechanicalTurk where

import Data.Proxy
import Network.AWS.MechanicalTurk
import Test.AWS.Fixture
import Test.AWS.MechanicalTurk.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestGetQualificationScore $
--             getQualificationScore
--
--         , requestListReviewableHITs $
--             listReviewableHITs
--
--         , requestListHITs $
--             listHITs
--
--         , requestListAssignmentsForHIT $
--             listAssignmentsForHIT
--
--         , requestListWorkersWithQualificationType $
--             listWorkersWithQualificationType
--
--         , requestGetAccountBalance $
--             getAccountBalance
--
--         , requestCreateHIT $
--             createHIT
--
--         , requestNotifyWorkers $
--             notifyWorkers
--
--         , requestListWorkerBlocks $
--             listWorkerBlocks
--
--         , requestListHITsForQualificationType $
--             listHITsForQualificationType
--
--         , requestCreateWorkerBlock $
--             createWorkerBlock
--
--         , requestCreateAdditionalAssignmentsForHIT $
--             createAdditionalAssignmentsForHIT
--
--         , requestListQualificationTypes $
--             listQualificationTypes
--
--         , requestUpdateHITTypeOfHIT $
--             updateHITTypeOfHIT
--
--         , requestGetAssignment $
--             getAssignment
--
--         , requestUpdateHITReviewStatus $
--             updateHITReviewStatus
--
--         , requestRejectQualificationRequest $
--             rejectQualificationRequest
--
--         , requestGetQualificationType $
--             getQualificationType
--
--         , requestRejectAssignment $
--             rejectAssignment
--
--         , requestUpdateExpirationForHIT $
--             updateExpirationForHIT
--
--         , requestApproveAssignment $
--             approveAssignment
--
--         , requestDeleteHIT $
--             deleteHIT
--
--         , requestListReviewPolicyResultsForHIT $
--             listReviewPolicyResultsForHIT
--
--         , requestCreateHITType $
--             createHITType
--
--         , requestUpdateNotificationSettings $
--             updateNotificationSettings
--
--         , requestSendBonus $
--             sendBonus
--
--         , requestListQualificationRequests $
--             listQualificationRequests
--
--         , requestAssociateQualificationWithWorker $
--             associateQualificationWithWorker
--
--         , requestCreateHITWithHITType $
--             createHITWithHITType
--
--         , requestDeleteWorkerBlock $
--             deleteWorkerBlock
--
--         , requestListBonusPayments $
--             listBonusPayments
--
--         , requestDisassociateQualificationFromWorker $
--             disassociateQualificationFromWorker
--
--         , requestSendTestEventNotification $
--             sendTestEventNotification
--
--         , requestGetHIT $
--             getHIT
--
--         , requestUpdateQualificationType $
--             updateQualificationType
--
--         , requestAcceptQualificationRequest $
--             acceptQualificationRequest
--
--         , requestDeleteQualificationType $
--             deleteQualificationType
--
--         , requestGetFileUploadURL $
--             getFileUploadURL
--
--         , requestCreateQualificationType $
--             createQualificationType
--
--           ]

--     , testGroup "response"
--         [ responseGetQualificationScore $
--             getQualificationScoreResponse
--
--         , responseListReviewableHITs $
--             listReviewableHITsResponse
--
--         , responseListHITs $
--             listHITsResponse
--
--         , responseListAssignmentsForHIT $
--             listAssignmentsForHITResponse
--
--         , responseListWorkersWithQualificationType $
--             listWorkersWithQualificationTypeResponse
--
--         , responseGetAccountBalance $
--             getAccountBalanceResponse
--
--         , responseCreateHIT $
--             createHITResponse
--
--         , responseNotifyWorkers $
--             notifyWorkersResponse
--
--         , responseListWorkerBlocks $
--             listWorkerBlocksResponse
--
--         , responseListHITsForQualificationType $
--             listHITsForQualificationTypeResponse
--
--         , responseCreateWorkerBlock $
--             createWorkerBlockResponse
--
--         , responseCreateAdditionalAssignmentsForHIT $
--             createAdditionalAssignmentsForHITResponse
--
--         , responseListQualificationTypes $
--             listQualificationTypesResponse
--
--         , responseUpdateHITTypeOfHIT $
--             updateHITTypeOfHITResponse
--
--         , responseGetAssignment $
--             getAssignmentResponse
--
--         , responseUpdateHITReviewStatus $
--             updateHITReviewStatusResponse
--
--         , responseRejectQualificationRequest $
--             rejectQualificationRequestResponse
--
--         , responseGetQualificationType $
--             getQualificationTypeResponse
--
--         , responseRejectAssignment $
--             rejectAssignmentResponse
--
--         , responseUpdateExpirationForHIT $
--             updateExpirationForHITResponse
--
--         , responseApproveAssignment $
--             approveAssignmentResponse
--
--         , responseDeleteHIT $
--             deleteHITResponse
--
--         , responseListReviewPolicyResultsForHIT $
--             listReviewPolicyResultsForHITResponse
--
--         , responseCreateHITType $
--             createHITTypeResponse
--
--         , responseUpdateNotificationSettings $
--             updateNotificationSettingsResponse
--
--         , responseSendBonus $
--             sendBonusResponse
--
--         , responseListQualificationRequests $
--             listQualificationRequestsResponse
--
--         , responseAssociateQualificationWithWorker $
--             associateQualificationWithWorkerResponse
--
--         , responseCreateHITWithHITType $
--             createHITWithHITTypeResponse
--
--         , responseDeleteWorkerBlock $
--             deleteWorkerBlockResponse
--
--         , responseListBonusPayments $
--             listBonusPaymentsResponse
--
--         , responseDisassociateQualificationFromWorker $
--             disassociateQualificationFromWorkerResponse
--
--         , responseSendTestEventNotification $
--             sendTestEventNotificationResponse
--
--         , responseGetHIT $
--             getHITResponse
--
--         , responseUpdateQualificationType $
--             updateQualificationTypeResponse
--
--         , responseAcceptQualificationRequest $
--             acceptQualificationRequestResponse
--
--         , responseDeleteQualificationType $
--             deleteQualificationTypeResponse
--
--         , responseGetFileUploadURL $
--             getFileUploadURLResponse
--
--         , responseCreateQualificationType $
--             createQualificationTypeResponse
--
--           ]
--     ]

-- Requests

requestGetQualificationScore :: GetQualificationScore -> TestTree
requestGetQualificationScore =
  req
    "GetQualificationScore"
    "fixture/GetQualificationScore.yaml"

requestListReviewableHITs :: ListReviewableHITs -> TestTree
requestListReviewableHITs =
  req
    "ListReviewableHITs"
    "fixture/ListReviewableHITs.yaml"

requestListHITs :: ListHITs -> TestTree
requestListHITs =
  req
    "ListHITs"
    "fixture/ListHITs.yaml"

requestListAssignmentsForHIT :: ListAssignmentsForHIT -> TestTree
requestListAssignmentsForHIT =
  req
    "ListAssignmentsForHIT"
    "fixture/ListAssignmentsForHIT.yaml"

requestListWorkersWithQualificationType :: ListWorkersWithQualificationType -> TestTree
requestListWorkersWithQualificationType =
  req
    "ListWorkersWithQualificationType"
    "fixture/ListWorkersWithQualificationType.yaml"

requestGetAccountBalance :: GetAccountBalance -> TestTree
requestGetAccountBalance =
  req
    "GetAccountBalance"
    "fixture/GetAccountBalance.yaml"

requestCreateHIT :: CreateHIT -> TestTree
requestCreateHIT =
  req
    "CreateHIT"
    "fixture/CreateHIT.yaml"

requestNotifyWorkers :: NotifyWorkers -> TestTree
requestNotifyWorkers =
  req
    "NotifyWorkers"
    "fixture/NotifyWorkers.yaml"

requestListWorkerBlocks :: ListWorkerBlocks -> TestTree
requestListWorkerBlocks =
  req
    "ListWorkerBlocks"
    "fixture/ListWorkerBlocks.yaml"

requestListHITsForQualificationType :: ListHITsForQualificationType -> TestTree
requestListHITsForQualificationType =
  req
    "ListHITsForQualificationType"
    "fixture/ListHITsForQualificationType.yaml"

requestCreateWorkerBlock :: CreateWorkerBlock -> TestTree
requestCreateWorkerBlock =
  req
    "CreateWorkerBlock"
    "fixture/CreateWorkerBlock.yaml"

requestCreateAdditionalAssignmentsForHIT :: CreateAdditionalAssignmentsForHIT -> TestTree
requestCreateAdditionalAssignmentsForHIT =
  req
    "CreateAdditionalAssignmentsForHIT"
    "fixture/CreateAdditionalAssignmentsForHIT.yaml"

requestListQualificationTypes :: ListQualificationTypes -> TestTree
requestListQualificationTypes =
  req
    "ListQualificationTypes"
    "fixture/ListQualificationTypes.yaml"

requestUpdateHITTypeOfHIT :: UpdateHITTypeOfHIT -> TestTree
requestUpdateHITTypeOfHIT =
  req
    "UpdateHITTypeOfHIT"
    "fixture/UpdateHITTypeOfHIT.yaml"

requestGetAssignment :: GetAssignment -> TestTree
requestGetAssignment =
  req
    "GetAssignment"
    "fixture/GetAssignment.yaml"

requestUpdateHITReviewStatus :: UpdateHITReviewStatus -> TestTree
requestUpdateHITReviewStatus =
  req
    "UpdateHITReviewStatus"
    "fixture/UpdateHITReviewStatus.yaml"

requestRejectQualificationRequest :: RejectQualificationRequest -> TestTree
requestRejectQualificationRequest =
  req
    "RejectQualificationRequest"
    "fixture/RejectQualificationRequest.yaml"

requestGetQualificationType :: GetQualificationType -> TestTree
requestGetQualificationType =
  req
    "GetQualificationType"
    "fixture/GetQualificationType.yaml"

requestRejectAssignment :: RejectAssignment -> TestTree
requestRejectAssignment =
  req
    "RejectAssignment"
    "fixture/RejectAssignment.yaml"

requestUpdateExpirationForHIT :: UpdateExpirationForHIT -> TestTree
requestUpdateExpirationForHIT =
  req
    "UpdateExpirationForHIT"
    "fixture/UpdateExpirationForHIT.yaml"

requestApproveAssignment :: ApproveAssignment -> TestTree
requestApproveAssignment =
  req
    "ApproveAssignment"
    "fixture/ApproveAssignment.yaml"

requestDeleteHIT :: DeleteHIT -> TestTree
requestDeleteHIT =
  req
    "DeleteHIT"
    "fixture/DeleteHIT.yaml"

requestListReviewPolicyResultsForHIT :: ListReviewPolicyResultsForHIT -> TestTree
requestListReviewPolicyResultsForHIT =
  req
    "ListReviewPolicyResultsForHIT"
    "fixture/ListReviewPolicyResultsForHIT.yaml"

requestCreateHITType :: CreateHITType -> TestTree
requestCreateHITType =
  req
    "CreateHITType"
    "fixture/CreateHITType.yaml"

requestUpdateNotificationSettings :: UpdateNotificationSettings -> TestTree
requestUpdateNotificationSettings =
  req
    "UpdateNotificationSettings"
    "fixture/UpdateNotificationSettings.yaml"

requestSendBonus :: SendBonus -> TestTree
requestSendBonus =
  req
    "SendBonus"
    "fixture/SendBonus.yaml"

requestListQualificationRequests :: ListQualificationRequests -> TestTree
requestListQualificationRequests =
  req
    "ListQualificationRequests"
    "fixture/ListQualificationRequests.yaml"

requestAssociateQualificationWithWorker :: AssociateQualificationWithWorker -> TestTree
requestAssociateQualificationWithWorker =
  req
    "AssociateQualificationWithWorker"
    "fixture/AssociateQualificationWithWorker.yaml"

requestCreateHITWithHITType :: CreateHITWithHITType -> TestTree
requestCreateHITWithHITType =
  req
    "CreateHITWithHITType"
    "fixture/CreateHITWithHITType.yaml"

requestDeleteWorkerBlock :: DeleteWorkerBlock -> TestTree
requestDeleteWorkerBlock =
  req
    "DeleteWorkerBlock"
    "fixture/DeleteWorkerBlock.yaml"

requestListBonusPayments :: ListBonusPayments -> TestTree
requestListBonusPayments =
  req
    "ListBonusPayments"
    "fixture/ListBonusPayments.yaml"

requestDisassociateQualificationFromWorker :: DisassociateQualificationFromWorker -> TestTree
requestDisassociateQualificationFromWorker =
  req
    "DisassociateQualificationFromWorker"
    "fixture/DisassociateQualificationFromWorker.yaml"

requestSendTestEventNotification :: SendTestEventNotification -> TestTree
requestSendTestEventNotification =
  req
    "SendTestEventNotification"
    "fixture/SendTestEventNotification.yaml"

requestGetHIT :: GetHIT -> TestTree
requestGetHIT =
  req
    "GetHIT"
    "fixture/GetHIT.yaml"

requestUpdateQualificationType :: UpdateQualificationType -> TestTree
requestUpdateQualificationType =
  req
    "UpdateQualificationType"
    "fixture/UpdateQualificationType.yaml"

requestAcceptQualificationRequest :: AcceptQualificationRequest -> TestTree
requestAcceptQualificationRequest =
  req
    "AcceptQualificationRequest"
    "fixture/AcceptQualificationRequest.yaml"

requestDeleteQualificationType :: DeleteQualificationType -> TestTree
requestDeleteQualificationType =
  req
    "DeleteQualificationType"
    "fixture/DeleteQualificationType.yaml"

requestGetFileUploadURL :: GetFileUploadURL -> TestTree
requestGetFileUploadURL =
  req
    "GetFileUploadURL"
    "fixture/GetFileUploadURL.yaml"

requestCreateQualificationType :: CreateQualificationType -> TestTree
requestCreateQualificationType =
  req
    "CreateQualificationType"
    "fixture/CreateQualificationType.yaml"

-- Responses

responseGetQualificationScore :: GetQualificationScoreResponse -> TestTree
responseGetQualificationScore =
  res
    "GetQualificationScoreResponse"
    "fixture/GetQualificationScoreResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy GetQualificationScore)

responseListReviewableHITs :: ListReviewableHITsResponse -> TestTree
responseListReviewableHITs =
  res
    "ListReviewableHITsResponse"
    "fixture/ListReviewableHITsResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy ListReviewableHITs)

responseListHITs :: ListHITsResponse -> TestTree
responseListHITs =
  res
    "ListHITsResponse"
    "fixture/ListHITsResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy ListHITs)

responseListAssignmentsForHIT :: ListAssignmentsForHITResponse -> TestTree
responseListAssignmentsForHIT =
  res
    "ListAssignmentsForHITResponse"
    "fixture/ListAssignmentsForHITResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy ListAssignmentsForHIT)

responseListWorkersWithQualificationType :: ListWorkersWithQualificationTypeResponse -> TestTree
responseListWorkersWithQualificationType =
  res
    "ListWorkersWithQualificationTypeResponse"
    "fixture/ListWorkersWithQualificationTypeResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy ListWorkersWithQualificationType)

responseGetAccountBalance :: GetAccountBalanceResponse -> TestTree
responseGetAccountBalance =
  res
    "GetAccountBalanceResponse"
    "fixture/GetAccountBalanceResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy GetAccountBalance)

responseCreateHIT :: CreateHITResponse -> TestTree
responseCreateHIT =
  res
    "CreateHITResponse"
    "fixture/CreateHITResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy CreateHIT)

responseNotifyWorkers :: NotifyWorkersResponse -> TestTree
responseNotifyWorkers =
  res
    "NotifyWorkersResponse"
    "fixture/NotifyWorkersResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy NotifyWorkers)

responseListWorkerBlocks :: ListWorkerBlocksResponse -> TestTree
responseListWorkerBlocks =
  res
    "ListWorkerBlocksResponse"
    "fixture/ListWorkerBlocksResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy ListWorkerBlocks)

responseListHITsForQualificationType :: ListHITsForQualificationTypeResponse -> TestTree
responseListHITsForQualificationType =
  res
    "ListHITsForQualificationTypeResponse"
    "fixture/ListHITsForQualificationTypeResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy ListHITsForQualificationType)

responseCreateWorkerBlock :: CreateWorkerBlockResponse -> TestTree
responseCreateWorkerBlock =
  res
    "CreateWorkerBlockResponse"
    "fixture/CreateWorkerBlockResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy CreateWorkerBlock)

responseCreateAdditionalAssignmentsForHIT :: CreateAdditionalAssignmentsForHITResponse -> TestTree
responseCreateAdditionalAssignmentsForHIT =
  res
    "CreateAdditionalAssignmentsForHITResponse"
    "fixture/CreateAdditionalAssignmentsForHITResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy CreateAdditionalAssignmentsForHIT)

responseListQualificationTypes :: ListQualificationTypesResponse -> TestTree
responseListQualificationTypes =
  res
    "ListQualificationTypesResponse"
    "fixture/ListQualificationTypesResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy ListQualificationTypes)

responseUpdateHITTypeOfHIT :: UpdateHITTypeOfHITResponse -> TestTree
responseUpdateHITTypeOfHIT =
  res
    "UpdateHITTypeOfHITResponse"
    "fixture/UpdateHITTypeOfHITResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy UpdateHITTypeOfHIT)

responseGetAssignment :: GetAssignmentResponse -> TestTree
responseGetAssignment =
  res
    "GetAssignmentResponse"
    "fixture/GetAssignmentResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy GetAssignment)

responseUpdateHITReviewStatus :: UpdateHITReviewStatusResponse -> TestTree
responseUpdateHITReviewStatus =
  res
    "UpdateHITReviewStatusResponse"
    "fixture/UpdateHITReviewStatusResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy UpdateHITReviewStatus)

responseRejectQualificationRequest :: RejectQualificationRequestResponse -> TestTree
responseRejectQualificationRequest =
  res
    "RejectQualificationRequestResponse"
    "fixture/RejectQualificationRequestResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy RejectQualificationRequest)

responseGetQualificationType :: GetQualificationTypeResponse -> TestTree
responseGetQualificationType =
  res
    "GetQualificationTypeResponse"
    "fixture/GetQualificationTypeResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy GetQualificationType)

responseRejectAssignment :: RejectAssignmentResponse -> TestTree
responseRejectAssignment =
  res
    "RejectAssignmentResponse"
    "fixture/RejectAssignmentResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy RejectAssignment)

responseUpdateExpirationForHIT :: UpdateExpirationForHITResponse -> TestTree
responseUpdateExpirationForHIT =
  res
    "UpdateExpirationForHITResponse"
    "fixture/UpdateExpirationForHITResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy UpdateExpirationForHIT)

responseApproveAssignment :: ApproveAssignmentResponse -> TestTree
responseApproveAssignment =
  res
    "ApproveAssignmentResponse"
    "fixture/ApproveAssignmentResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy ApproveAssignment)

responseDeleteHIT :: DeleteHITResponse -> TestTree
responseDeleteHIT =
  res
    "DeleteHITResponse"
    "fixture/DeleteHITResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy DeleteHIT)

responseListReviewPolicyResultsForHIT :: ListReviewPolicyResultsForHITResponse -> TestTree
responseListReviewPolicyResultsForHIT =
  res
    "ListReviewPolicyResultsForHITResponse"
    "fixture/ListReviewPolicyResultsForHITResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy ListReviewPolicyResultsForHIT)

responseCreateHITType :: CreateHITTypeResponse -> TestTree
responseCreateHITType =
  res
    "CreateHITTypeResponse"
    "fixture/CreateHITTypeResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy CreateHITType)

responseUpdateNotificationSettings :: UpdateNotificationSettingsResponse -> TestTree
responseUpdateNotificationSettings =
  res
    "UpdateNotificationSettingsResponse"
    "fixture/UpdateNotificationSettingsResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy UpdateNotificationSettings)

responseSendBonus :: SendBonusResponse -> TestTree
responseSendBonus =
  res
    "SendBonusResponse"
    "fixture/SendBonusResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy SendBonus)

responseListQualificationRequests :: ListQualificationRequestsResponse -> TestTree
responseListQualificationRequests =
  res
    "ListQualificationRequestsResponse"
    "fixture/ListQualificationRequestsResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy ListQualificationRequests)

responseAssociateQualificationWithWorker :: AssociateQualificationWithWorkerResponse -> TestTree
responseAssociateQualificationWithWorker =
  res
    "AssociateQualificationWithWorkerResponse"
    "fixture/AssociateQualificationWithWorkerResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy AssociateQualificationWithWorker)

responseCreateHITWithHITType :: CreateHITWithHITTypeResponse -> TestTree
responseCreateHITWithHITType =
  res
    "CreateHITWithHITTypeResponse"
    "fixture/CreateHITWithHITTypeResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy CreateHITWithHITType)

responseDeleteWorkerBlock :: DeleteWorkerBlockResponse -> TestTree
responseDeleteWorkerBlock =
  res
    "DeleteWorkerBlockResponse"
    "fixture/DeleteWorkerBlockResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy DeleteWorkerBlock)

responseListBonusPayments :: ListBonusPaymentsResponse -> TestTree
responseListBonusPayments =
  res
    "ListBonusPaymentsResponse"
    "fixture/ListBonusPaymentsResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy ListBonusPayments)

responseDisassociateQualificationFromWorker :: DisassociateQualificationFromWorkerResponse -> TestTree
responseDisassociateQualificationFromWorker =
  res
    "DisassociateQualificationFromWorkerResponse"
    "fixture/DisassociateQualificationFromWorkerResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy DisassociateQualificationFromWorker)

responseSendTestEventNotification :: SendTestEventNotificationResponse -> TestTree
responseSendTestEventNotification =
  res
    "SendTestEventNotificationResponse"
    "fixture/SendTestEventNotificationResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy SendTestEventNotification)

responseGetHIT :: GetHITResponse -> TestTree
responseGetHIT =
  res
    "GetHITResponse"
    "fixture/GetHITResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy GetHIT)

responseUpdateQualificationType :: UpdateQualificationTypeResponse -> TestTree
responseUpdateQualificationType =
  res
    "UpdateQualificationTypeResponse"
    "fixture/UpdateQualificationTypeResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy UpdateQualificationType)

responseAcceptQualificationRequest :: AcceptQualificationRequestResponse -> TestTree
responseAcceptQualificationRequest =
  res
    "AcceptQualificationRequestResponse"
    "fixture/AcceptQualificationRequestResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy AcceptQualificationRequest)

responseDeleteQualificationType :: DeleteQualificationTypeResponse -> TestTree
responseDeleteQualificationType =
  res
    "DeleteQualificationTypeResponse"
    "fixture/DeleteQualificationTypeResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy DeleteQualificationType)

responseGetFileUploadURL :: GetFileUploadURLResponse -> TestTree
responseGetFileUploadURL =
  res
    "GetFileUploadURLResponse"
    "fixture/GetFileUploadURLResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy GetFileUploadURL)

responseCreateQualificationType :: CreateQualificationTypeResponse -> TestTree
responseCreateQualificationType =
  res
    "CreateQualificationTypeResponse"
    "fixture/CreateQualificationTypeResponse.proto"
    mechanicalTurk
    (Proxy :: Proxy CreateQualificationType)
