{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.ListActiveViolations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the active violations for a given Device Defender security profile.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListActiveViolations
  ( -- * Creating a Request
    listActiveViolations,
    ListActiveViolations,

    -- * Request Lenses
    lavNextToken,
    lavMaxResults,
    lavThingName,
    lavSecurityProfileName,
    lavListSuppressedAlerts,
    lavBehaviorCriteriaType,

    -- * Destructuring the Response
    listActiveViolationsResponse,
    ListActiveViolationsResponse,

    -- * Response Lenses
    lavrrsNextToken,
    lavrrsActiveViolations,
    lavrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listActiveViolations' smart constructor.
data ListActiveViolations = ListActiveViolations'
  { _lavNextToken ::
      !(Maybe Text),
    _lavMaxResults ::
      !(Maybe Nat),
    _lavThingName ::
      !(Maybe Text),
    _lavSecurityProfileName ::
      !(Maybe Text),
    _lavListSuppressedAlerts ::
      !(Maybe Bool),
    _lavBehaviorCriteriaType ::
      !(Maybe BehaviorCriteriaType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListActiveViolations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lavNextToken' - The token for the next set of results.
--
-- * 'lavMaxResults' - The maximum number of results to return at one time.
--
-- * 'lavThingName' - The name of the thing whose active violations are listed.
--
-- * 'lavSecurityProfileName' - The name of the Device Defender security profile for which violations are listed.
--
-- * 'lavListSuppressedAlerts' - A list of all suppressed alerts.
--
-- * 'lavBehaviorCriteriaType' - The criteria for a behavior.
listActiveViolations ::
  ListActiveViolations
listActiveViolations =
  ListActiveViolations'
    { _lavNextToken = Nothing,
      _lavMaxResults = Nothing,
      _lavThingName = Nothing,
      _lavSecurityProfileName = Nothing,
      _lavListSuppressedAlerts = Nothing,
      _lavBehaviorCriteriaType = Nothing
    }

-- | The token for the next set of results.
lavNextToken :: Lens' ListActiveViolations (Maybe Text)
lavNextToken = lens _lavNextToken (\s a -> s {_lavNextToken = a})

-- | The maximum number of results to return at one time.
lavMaxResults :: Lens' ListActiveViolations (Maybe Natural)
lavMaxResults = lens _lavMaxResults (\s a -> s {_lavMaxResults = a}) . mapping _Nat

-- | The name of the thing whose active violations are listed.
lavThingName :: Lens' ListActiveViolations (Maybe Text)
lavThingName = lens _lavThingName (\s a -> s {_lavThingName = a})

-- | The name of the Device Defender security profile for which violations are listed.
lavSecurityProfileName :: Lens' ListActiveViolations (Maybe Text)
lavSecurityProfileName = lens _lavSecurityProfileName (\s a -> s {_lavSecurityProfileName = a})

-- | A list of all suppressed alerts.
lavListSuppressedAlerts :: Lens' ListActiveViolations (Maybe Bool)
lavListSuppressedAlerts = lens _lavListSuppressedAlerts (\s a -> s {_lavListSuppressedAlerts = a})

-- | The criteria for a behavior.
lavBehaviorCriteriaType :: Lens' ListActiveViolations (Maybe BehaviorCriteriaType)
lavBehaviorCriteriaType = lens _lavBehaviorCriteriaType (\s a -> s {_lavBehaviorCriteriaType = a})

instance AWSPager ListActiveViolations where
  page rq rs
    | stop (rs ^. lavrrsNextToken) = Nothing
    | stop (rs ^. lavrrsActiveViolations) = Nothing
    | otherwise =
      Just $ rq & lavNextToken .~ rs ^. lavrrsNextToken

instance AWSRequest ListActiveViolations where
  type
    Rs ListActiveViolations =
      ListActiveViolationsResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListActiveViolationsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "activeViolations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListActiveViolations

instance NFData ListActiveViolations

instance ToHeaders ListActiveViolations where
  toHeaders = const mempty

instance ToPath ListActiveViolations where
  toPath = const "/active-violations"

instance ToQuery ListActiveViolations where
  toQuery ListActiveViolations' {..} =
    mconcat
      [ "nextToken" =: _lavNextToken,
        "maxResults" =: _lavMaxResults,
        "thingName" =: _lavThingName,
        "securityProfileName" =: _lavSecurityProfileName,
        "listSuppressedAlerts" =: _lavListSuppressedAlerts,
        "behaviorCriteriaType" =: _lavBehaviorCriteriaType
      ]

-- | /See:/ 'listActiveViolationsResponse' smart constructor.
data ListActiveViolationsResponse = ListActiveViolationsResponse'
  { _lavrrsNextToken ::
      !(Maybe Text),
    _lavrrsActiveViolations ::
      !( Maybe
           [ActiveViolation]
       ),
    _lavrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListActiveViolationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lavrrsNextToken' - A token that can be used to retrieve the next set of results, or @null@ if there are no additional results.
--
-- * 'lavrrsActiveViolations' - The list of active violations.
--
-- * 'lavrrsResponseStatus' - -- | The response status code.
listActiveViolationsResponse ::
  -- | 'lavrrsResponseStatus'
  Int ->
  ListActiveViolationsResponse
listActiveViolationsResponse pResponseStatus_ =
  ListActiveViolationsResponse'
    { _lavrrsNextToken =
        Nothing,
      _lavrrsActiveViolations = Nothing,
      _lavrrsResponseStatus = pResponseStatus_
    }

-- | A token that can be used to retrieve the next set of results, or @null@ if there are no additional results.
lavrrsNextToken :: Lens' ListActiveViolationsResponse (Maybe Text)
lavrrsNextToken = lens _lavrrsNextToken (\s a -> s {_lavrrsNextToken = a})

-- | The list of active violations.
lavrrsActiveViolations :: Lens' ListActiveViolationsResponse [ActiveViolation]
lavrrsActiveViolations = lens _lavrrsActiveViolations (\s a -> s {_lavrrsActiveViolations = a}) . _Default . _Coerce

-- | -- | The response status code.
lavrrsResponseStatus :: Lens' ListActiveViolationsResponse Int
lavrrsResponseStatus = lens _lavrrsResponseStatus (\s a -> s {_lavrrsResponseStatus = a})

instance NFData ListActiveViolationsResponse
