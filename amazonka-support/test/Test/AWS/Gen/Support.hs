{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Support
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Support where

import Data.Proxy
import Network.AWS.Support
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.Support.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDescribeTrustedAdvisorChecks $
--             describeTrustedAdvisorChecks
--
--         , requestAddCommunicationToCase $
--             addCommunicationToCase
--
--         , requestDescribeCommunications $
--             describeCommunications
--
--         , requestDescribeTrustedAdvisorCheckResult $
--             describeTrustedAdvisorCheckResult
--
--         , requestDescribeSeverityLevels $
--             describeSeverityLevels
--
--         , requestCreateCase $
--             createCase
--
--         , requestDescribeTrustedAdvisorCheckSummaries $
--             describeTrustedAdvisorCheckSummaries
--
--         , requestRefreshTrustedAdvisorCheck $
--             refreshTrustedAdvisorCheck
--
--         , requestAddAttachmentsToSet $
--             addAttachmentsToSet
--
--         , requestDescribeAttachment $
--             describeAttachment
--
--         , requestDescribeServices $
--             describeServices
--
--         , requestResolveCase $
--             resolveCase
--
--         , requestDescribeTrustedAdvisorCheckRefreshStatuses $
--             describeTrustedAdvisorCheckRefreshStatuses
--
--         , requestDescribeCases $
--             describeCases
--
--           ]

--     , testGroup "response"
--         [ responseDescribeTrustedAdvisorChecks $
--             describeTrustedAdvisorChecksResponse
--
--         , responseAddCommunicationToCase $
--             addCommunicationToCaseResponse
--
--         , responseDescribeCommunications $
--             describeCommunicationsResponse
--
--         , responseDescribeTrustedAdvisorCheckResult $
--             describeTrustedAdvisorCheckResultResponse
--
--         , responseDescribeSeverityLevels $
--             describeSeverityLevelsResponse
--
--         , responseCreateCase $
--             createCaseResponse
--
--         , responseDescribeTrustedAdvisorCheckSummaries $
--             describeTrustedAdvisorCheckSummariesResponse
--
--         , responseRefreshTrustedAdvisorCheck $
--             refreshTrustedAdvisorCheckResponse
--
--         , responseAddAttachmentsToSet $
--             addAttachmentsToSetResponse
--
--         , responseDescribeAttachment $
--             describeAttachmentResponse
--
--         , responseDescribeServices $
--             describeServicesResponse
--
--         , responseResolveCase $
--             resolveCaseResponse
--
--         , responseDescribeTrustedAdvisorCheckRefreshStatuses $
--             describeTrustedAdvisorCheckRefreshStatusesResponse
--
--         , responseDescribeCases $
--             describeCasesResponse
--
--           ]
--     ]

-- Requests

requestDescribeTrustedAdvisorChecks :: DescribeTrustedAdvisorChecks -> TestTree
requestDescribeTrustedAdvisorChecks =
  req
    "DescribeTrustedAdvisorChecks"
    "fixture/DescribeTrustedAdvisorChecks.yaml"

requestAddCommunicationToCase :: AddCommunicationToCase -> TestTree
requestAddCommunicationToCase =
  req
    "AddCommunicationToCase"
    "fixture/AddCommunicationToCase.yaml"

requestDescribeCommunications :: DescribeCommunications -> TestTree
requestDescribeCommunications =
  req
    "DescribeCommunications"
    "fixture/DescribeCommunications.yaml"

requestDescribeTrustedAdvisorCheckResult :: DescribeTrustedAdvisorCheckResult -> TestTree
requestDescribeTrustedAdvisorCheckResult =
  req
    "DescribeTrustedAdvisorCheckResult"
    "fixture/DescribeTrustedAdvisorCheckResult.yaml"

requestDescribeSeverityLevels :: DescribeSeverityLevels -> TestTree
requestDescribeSeverityLevels =
  req
    "DescribeSeverityLevels"
    "fixture/DescribeSeverityLevels.yaml"

requestCreateCase :: CreateCase -> TestTree
requestCreateCase =
  req
    "CreateCase"
    "fixture/CreateCase.yaml"

requestDescribeTrustedAdvisorCheckSummaries :: DescribeTrustedAdvisorCheckSummaries -> TestTree
requestDescribeTrustedAdvisorCheckSummaries =
  req
    "DescribeTrustedAdvisorCheckSummaries"
    "fixture/DescribeTrustedAdvisorCheckSummaries.yaml"

requestRefreshTrustedAdvisorCheck :: RefreshTrustedAdvisorCheck -> TestTree
requestRefreshTrustedAdvisorCheck =
  req
    "RefreshTrustedAdvisorCheck"
    "fixture/RefreshTrustedAdvisorCheck.yaml"

requestAddAttachmentsToSet :: AddAttachmentsToSet -> TestTree
requestAddAttachmentsToSet =
  req
    "AddAttachmentsToSet"
    "fixture/AddAttachmentsToSet.yaml"

requestDescribeAttachment :: DescribeAttachment -> TestTree
requestDescribeAttachment =
  req
    "DescribeAttachment"
    "fixture/DescribeAttachment.yaml"

requestDescribeServices :: DescribeServices -> TestTree
requestDescribeServices =
  req
    "DescribeServices"
    "fixture/DescribeServices.yaml"

requestResolveCase :: ResolveCase -> TestTree
requestResolveCase =
  req
    "ResolveCase"
    "fixture/ResolveCase.yaml"

requestDescribeTrustedAdvisorCheckRefreshStatuses :: DescribeTrustedAdvisorCheckRefreshStatuses -> TestTree
requestDescribeTrustedAdvisorCheckRefreshStatuses =
  req
    "DescribeTrustedAdvisorCheckRefreshStatuses"
    "fixture/DescribeTrustedAdvisorCheckRefreshStatuses.yaml"

requestDescribeCases :: DescribeCases -> TestTree
requestDescribeCases =
  req
    "DescribeCases"
    "fixture/DescribeCases.yaml"

-- Responses

responseDescribeTrustedAdvisorChecks :: DescribeTrustedAdvisorChecksResponse -> TestTree
responseDescribeTrustedAdvisorChecks =
  res
    "DescribeTrustedAdvisorChecksResponse"
    "fixture/DescribeTrustedAdvisorChecksResponse.proto"
    support
    (Proxy :: Proxy DescribeTrustedAdvisorChecks)

responseAddCommunicationToCase :: AddCommunicationToCaseResponse -> TestTree
responseAddCommunicationToCase =
  res
    "AddCommunicationToCaseResponse"
    "fixture/AddCommunicationToCaseResponse.proto"
    support
    (Proxy :: Proxy AddCommunicationToCase)

responseDescribeCommunications :: DescribeCommunicationsResponse -> TestTree
responseDescribeCommunications =
  res
    "DescribeCommunicationsResponse"
    "fixture/DescribeCommunicationsResponse.proto"
    support
    (Proxy :: Proxy DescribeCommunications)

responseDescribeTrustedAdvisorCheckResult :: DescribeTrustedAdvisorCheckResultResponse -> TestTree
responseDescribeTrustedAdvisorCheckResult =
  res
    "DescribeTrustedAdvisorCheckResultResponse"
    "fixture/DescribeTrustedAdvisorCheckResultResponse.proto"
    support
    (Proxy :: Proxy DescribeTrustedAdvisorCheckResult)

responseDescribeSeverityLevels :: DescribeSeverityLevelsResponse -> TestTree
responseDescribeSeverityLevels =
  res
    "DescribeSeverityLevelsResponse"
    "fixture/DescribeSeverityLevelsResponse.proto"
    support
    (Proxy :: Proxy DescribeSeverityLevels)

responseCreateCase :: CreateCaseResponse -> TestTree
responseCreateCase =
  res
    "CreateCaseResponse"
    "fixture/CreateCaseResponse.proto"
    support
    (Proxy :: Proxy CreateCase)

responseDescribeTrustedAdvisorCheckSummaries :: DescribeTrustedAdvisorCheckSummariesResponse -> TestTree
responseDescribeTrustedAdvisorCheckSummaries =
  res
    "DescribeTrustedAdvisorCheckSummariesResponse"
    "fixture/DescribeTrustedAdvisorCheckSummariesResponse.proto"
    support
    (Proxy :: Proxy DescribeTrustedAdvisorCheckSummaries)

responseRefreshTrustedAdvisorCheck :: RefreshTrustedAdvisorCheckResponse -> TestTree
responseRefreshTrustedAdvisorCheck =
  res
    "RefreshTrustedAdvisorCheckResponse"
    "fixture/RefreshTrustedAdvisorCheckResponse.proto"
    support
    (Proxy :: Proxy RefreshTrustedAdvisorCheck)

responseAddAttachmentsToSet :: AddAttachmentsToSetResponse -> TestTree
responseAddAttachmentsToSet =
  res
    "AddAttachmentsToSetResponse"
    "fixture/AddAttachmentsToSetResponse.proto"
    support
    (Proxy :: Proxy AddAttachmentsToSet)

responseDescribeAttachment :: DescribeAttachmentResponse -> TestTree
responseDescribeAttachment =
  res
    "DescribeAttachmentResponse"
    "fixture/DescribeAttachmentResponse.proto"
    support
    (Proxy :: Proxy DescribeAttachment)

responseDescribeServices :: DescribeServicesResponse -> TestTree
responseDescribeServices =
  res
    "DescribeServicesResponse"
    "fixture/DescribeServicesResponse.proto"
    support
    (Proxy :: Proxy DescribeServices)

responseResolveCase :: ResolveCaseResponse -> TestTree
responseResolveCase =
  res
    "ResolveCaseResponse"
    "fixture/ResolveCaseResponse.proto"
    support
    (Proxy :: Proxy ResolveCase)

responseDescribeTrustedAdvisorCheckRefreshStatuses :: DescribeTrustedAdvisorCheckRefreshStatusesResponse -> TestTree
responseDescribeTrustedAdvisorCheckRefreshStatuses =
  res
    "DescribeTrustedAdvisorCheckRefreshStatusesResponse"
    "fixture/DescribeTrustedAdvisorCheckRefreshStatusesResponse.proto"
    support
    (Proxy :: Proxy DescribeTrustedAdvisorCheckRefreshStatuses)

responseDescribeCases :: DescribeCasesResponse -> TestTree
responseDescribeCases =
  res
    "DescribeCasesResponse"
    "fixture/DescribeCasesResponse.proto"
    support
    (Proxy :: Proxy DescribeCases)
