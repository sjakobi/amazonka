{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.AWSHealth
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.AWSHealth where

import Data.Proxy
import Network.AWS.AWSHealth
import Test.AWS.AWSHealth.Internal
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
--         [ requestEnableHealthServiceAccessForOrganization $
--             enableHealthServiceAccessForOrganization
--
--         , requestDescribeEntityAggregates $
--             describeEntityAggregates
--
--         , requestDisableHealthServiceAccessForOrganization $
--             disableHealthServiceAccessForOrganization
--
--         , requestDescribeEventDetailsForOrganization $
--             describeEventDetailsForOrganization
--
--         , requestDescribeEventDetails $
--             describeEventDetails
--
--         , requestDescribeAffectedAccountsForOrganization $
--             describeAffectedAccountsForOrganization
--
--         , requestDescribeAffectedEntitiesForOrganization $
--             describeAffectedEntitiesForOrganization
--
--         , requestDescribeEvents $
--             describeEvents
--
--         , requestDescribeEventAggregates $
--             describeEventAggregates
--
--         , requestDescribeHealthServiceStatusForOrganization $
--             describeHealthServiceStatusForOrganization
--
--         , requestDescribeEventTypes $
--             describeEventTypes
--
--         , requestDescribeAffectedEntities $
--             describeAffectedEntities
--
--         , requestDescribeEventsForOrganization $
--             describeEventsForOrganization
--
--           ]

--     , testGroup "response"
--         [ responseEnableHealthServiceAccessForOrganization $
--             enableHealthServiceAccessForOrganizationResponse
--
--         , responseDescribeEntityAggregates $
--             describeEntityAggregatesResponse
--
--         , responseDisableHealthServiceAccessForOrganization $
--             disableHealthServiceAccessForOrganizationResponse
--
--         , responseDescribeEventDetailsForOrganization $
--             describeEventDetailsForOrganizationResponse
--
--         , responseDescribeEventDetails $
--             describeEventDetailsResponse
--
--         , responseDescribeAffectedAccountsForOrganization $
--             describeAffectedAccountsForOrganizationResponse
--
--         , responseDescribeAffectedEntitiesForOrganization $
--             describeAffectedEntitiesForOrganizationResponse
--
--         , responseDescribeEvents $
--             describeEventsResponse
--
--         , responseDescribeEventAggregates $
--             describeEventAggregatesResponse
--
--         , responseDescribeHealthServiceStatusForOrganization $
--             describeHealthServiceStatusForOrganizationResponse
--
--         , responseDescribeEventTypes $
--             describeEventTypesResponse
--
--         , responseDescribeAffectedEntities $
--             describeAffectedEntitiesResponse
--
--         , responseDescribeEventsForOrganization $
--             describeEventsForOrganizationResponse
--
--           ]
--     ]

-- Requests

requestEnableHealthServiceAccessForOrganization :: EnableHealthServiceAccessForOrganization -> TestTree
requestEnableHealthServiceAccessForOrganization =
  req
    "EnableHealthServiceAccessForOrganization"
    "fixture/EnableHealthServiceAccessForOrganization.yaml"

requestDescribeEntityAggregates :: DescribeEntityAggregates -> TestTree
requestDescribeEntityAggregates =
  req
    "DescribeEntityAggregates"
    "fixture/DescribeEntityAggregates.yaml"

requestDisableHealthServiceAccessForOrganization :: DisableHealthServiceAccessForOrganization -> TestTree
requestDisableHealthServiceAccessForOrganization =
  req
    "DisableHealthServiceAccessForOrganization"
    "fixture/DisableHealthServiceAccessForOrganization.yaml"

requestDescribeEventDetailsForOrganization :: DescribeEventDetailsForOrganization -> TestTree
requestDescribeEventDetailsForOrganization =
  req
    "DescribeEventDetailsForOrganization"
    "fixture/DescribeEventDetailsForOrganization.yaml"

requestDescribeEventDetails :: DescribeEventDetails -> TestTree
requestDescribeEventDetails =
  req
    "DescribeEventDetails"
    "fixture/DescribeEventDetails.yaml"

requestDescribeAffectedAccountsForOrganization :: DescribeAffectedAccountsForOrganization -> TestTree
requestDescribeAffectedAccountsForOrganization =
  req
    "DescribeAffectedAccountsForOrganization"
    "fixture/DescribeAffectedAccountsForOrganization.yaml"

requestDescribeAffectedEntitiesForOrganization :: DescribeAffectedEntitiesForOrganization -> TestTree
requestDescribeAffectedEntitiesForOrganization =
  req
    "DescribeAffectedEntitiesForOrganization"
    "fixture/DescribeAffectedEntitiesForOrganization.yaml"

requestDescribeEvents :: DescribeEvents -> TestTree
requestDescribeEvents =
  req
    "DescribeEvents"
    "fixture/DescribeEvents.yaml"

requestDescribeEventAggregates :: DescribeEventAggregates -> TestTree
requestDescribeEventAggregates =
  req
    "DescribeEventAggregates"
    "fixture/DescribeEventAggregates.yaml"

requestDescribeHealthServiceStatusForOrganization :: DescribeHealthServiceStatusForOrganization -> TestTree
requestDescribeHealthServiceStatusForOrganization =
  req
    "DescribeHealthServiceStatusForOrganization"
    "fixture/DescribeHealthServiceStatusForOrganization.yaml"

requestDescribeEventTypes :: DescribeEventTypes -> TestTree
requestDescribeEventTypes =
  req
    "DescribeEventTypes"
    "fixture/DescribeEventTypes.yaml"

requestDescribeAffectedEntities :: DescribeAffectedEntities -> TestTree
requestDescribeAffectedEntities =
  req
    "DescribeAffectedEntities"
    "fixture/DescribeAffectedEntities.yaml"

requestDescribeEventsForOrganization :: DescribeEventsForOrganization -> TestTree
requestDescribeEventsForOrganization =
  req
    "DescribeEventsForOrganization"
    "fixture/DescribeEventsForOrganization.yaml"

-- Responses

responseEnableHealthServiceAccessForOrganization :: EnableHealthServiceAccessForOrganizationResponse -> TestTree
responseEnableHealthServiceAccessForOrganization =
  res
    "EnableHealthServiceAccessForOrganizationResponse"
    "fixture/EnableHealthServiceAccessForOrganizationResponse.proto"
    awsHealth
    (Proxy :: Proxy EnableHealthServiceAccessForOrganization)

responseDescribeEntityAggregates :: DescribeEntityAggregatesResponse -> TestTree
responseDescribeEntityAggregates =
  res
    "DescribeEntityAggregatesResponse"
    "fixture/DescribeEntityAggregatesResponse.proto"
    awsHealth
    (Proxy :: Proxy DescribeEntityAggregates)

responseDisableHealthServiceAccessForOrganization :: DisableHealthServiceAccessForOrganizationResponse -> TestTree
responseDisableHealthServiceAccessForOrganization =
  res
    "DisableHealthServiceAccessForOrganizationResponse"
    "fixture/DisableHealthServiceAccessForOrganizationResponse.proto"
    awsHealth
    (Proxy :: Proxy DisableHealthServiceAccessForOrganization)

responseDescribeEventDetailsForOrganization :: DescribeEventDetailsForOrganizationResponse -> TestTree
responseDescribeEventDetailsForOrganization =
  res
    "DescribeEventDetailsForOrganizationResponse"
    "fixture/DescribeEventDetailsForOrganizationResponse.proto"
    awsHealth
    (Proxy :: Proxy DescribeEventDetailsForOrganization)

responseDescribeEventDetails :: DescribeEventDetailsResponse -> TestTree
responseDescribeEventDetails =
  res
    "DescribeEventDetailsResponse"
    "fixture/DescribeEventDetailsResponse.proto"
    awsHealth
    (Proxy :: Proxy DescribeEventDetails)

responseDescribeAffectedAccountsForOrganization :: DescribeAffectedAccountsForOrganizationResponse -> TestTree
responseDescribeAffectedAccountsForOrganization =
  res
    "DescribeAffectedAccountsForOrganizationResponse"
    "fixture/DescribeAffectedAccountsForOrganizationResponse.proto"
    awsHealth
    (Proxy :: Proxy DescribeAffectedAccountsForOrganization)

responseDescribeAffectedEntitiesForOrganization :: DescribeAffectedEntitiesForOrganizationResponse -> TestTree
responseDescribeAffectedEntitiesForOrganization =
  res
    "DescribeAffectedEntitiesForOrganizationResponse"
    "fixture/DescribeAffectedEntitiesForOrganizationResponse.proto"
    awsHealth
    (Proxy :: Proxy DescribeAffectedEntitiesForOrganization)

responseDescribeEvents :: DescribeEventsResponse -> TestTree
responseDescribeEvents =
  res
    "DescribeEventsResponse"
    "fixture/DescribeEventsResponse.proto"
    awsHealth
    (Proxy :: Proxy DescribeEvents)

responseDescribeEventAggregates :: DescribeEventAggregatesResponse -> TestTree
responseDescribeEventAggregates =
  res
    "DescribeEventAggregatesResponse"
    "fixture/DescribeEventAggregatesResponse.proto"
    awsHealth
    (Proxy :: Proxy DescribeEventAggregates)

responseDescribeHealthServiceStatusForOrganization :: DescribeHealthServiceStatusForOrganizationResponse -> TestTree
responseDescribeHealthServiceStatusForOrganization =
  res
    "DescribeHealthServiceStatusForOrganizationResponse"
    "fixture/DescribeHealthServiceStatusForOrganizationResponse.proto"
    awsHealth
    (Proxy :: Proxy DescribeHealthServiceStatusForOrganization)

responseDescribeEventTypes :: DescribeEventTypesResponse -> TestTree
responseDescribeEventTypes =
  res
    "DescribeEventTypesResponse"
    "fixture/DescribeEventTypesResponse.proto"
    awsHealth
    (Proxy :: Proxy DescribeEventTypes)

responseDescribeAffectedEntities :: DescribeAffectedEntitiesResponse -> TestTree
responseDescribeAffectedEntities =
  res
    "DescribeAffectedEntitiesResponse"
    "fixture/DescribeAffectedEntitiesResponse.proto"
    awsHealth
    (Proxy :: Proxy DescribeAffectedEntities)

responseDescribeEventsForOrganization :: DescribeEventsForOrganizationResponse -> TestTree
responseDescribeEventsForOrganization =
  res
    "DescribeEventsForOrganizationResponse"
    "fixture/DescribeEventsForOrganizationResponse.proto"
    awsHealth
    (Proxy :: Proxy DescribeEventsForOrganization)
