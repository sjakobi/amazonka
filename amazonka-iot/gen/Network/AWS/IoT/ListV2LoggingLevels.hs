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
-- Module      : Network.AWS.IoT.ListV2LoggingLevels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists logging levels.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListV2LoggingLevels
  ( -- * Creating a Request
    listV2LoggingLevels,
    ListV2LoggingLevels,

    -- * Request Lenses
    lvllNextToken,
    lvllTargetType,
    lvllMaxResults,

    -- * Destructuring the Response
    listV2LoggingLevelsResponse,
    ListV2LoggingLevelsResponse,

    -- * Response Lenses
    lvllrrsNextToken,
    lvllrrsLogTargetConfigurations,
    lvllrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listV2LoggingLevels' smart constructor.
data ListV2LoggingLevels = ListV2LoggingLevels'
  { _lvllNextToken ::
      !(Maybe Text),
    _lvllTargetType ::
      !(Maybe LogTargetType),
    _lvllMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListV2LoggingLevels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvllNextToken' - To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
--
-- * 'lvllTargetType' - The type of resource for which you are configuring logging. Must be @THING_Group@ .
--
-- * 'lvllMaxResults' - The maximum number of results to return at one time.
listV2LoggingLevels ::
  ListV2LoggingLevels
listV2LoggingLevels =
  ListV2LoggingLevels'
    { _lvllNextToken = Nothing,
      _lvllTargetType = Nothing,
      _lvllMaxResults = Nothing
    }

-- | To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
lvllNextToken :: Lens' ListV2LoggingLevels (Maybe Text)
lvllNextToken = lens _lvllNextToken (\s a -> s {_lvllNextToken = a})

-- | The type of resource for which you are configuring logging. Must be @THING_Group@ .
lvllTargetType :: Lens' ListV2LoggingLevels (Maybe LogTargetType)
lvllTargetType = lens _lvllTargetType (\s a -> s {_lvllTargetType = a})

-- | The maximum number of results to return at one time.
lvllMaxResults :: Lens' ListV2LoggingLevels (Maybe Natural)
lvllMaxResults = lens _lvllMaxResults (\s a -> s {_lvllMaxResults = a}) . mapping _Nat

instance AWSPager ListV2LoggingLevels where
  page rq rs
    | stop (rs ^. lvllrrsNextToken) = Nothing
    | stop (rs ^. lvllrrsLogTargetConfigurations) =
      Nothing
    | otherwise =
      Just $ rq & lvllNextToken .~ rs ^. lvllrrsNextToken

instance AWSRequest ListV2LoggingLevels where
  type
    Rs ListV2LoggingLevels =
      ListV2LoggingLevelsResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListV2LoggingLevelsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "logTargetConfigurations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListV2LoggingLevels

instance NFData ListV2LoggingLevels

instance ToHeaders ListV2LoggingLevels where
  toHeaders = const mempty

instance ToPath ListV2LoggingLevels where
  toPath = const "/v2LoggingLevel"

instance ToQuery ListV2LoggingLevels where
  toQuery ListV2LoggingLevels' {..} =
    mconcat
      [ "nextToken" =: _lvllNextToken,
        "targetType" =: _lvllTargetType,
        "maxResults" =: _lvllMaxResults
      ]

-- | /See:/ 'listV2LoggingLevelsResponse' smart constructor.
data ListV2LoggingLevelsResponse = ListV2LoggingLevelsResponse'
  { _lvllrrsNextToken ::
      !(Maybe Text),
    _lvllrrsLogTargetConfigurations ::
      !( Maybe
           [LogTargetConfiguration]
       ),
    _lvllrrsResponseStatus ::
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

-- | Creates a value of 'ListV2LoggingLevelsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvllrrsNextToken' - The token to use to get the next set of results, or __null__ if there are no additional results.
--
-- * 'lvllrrsLogTargetConfigurations' - The logging configuration for a target.
--
-- * 'lvllrrsResponseStatus' - -- | The response status code.
listV2LoggingLevelsResponse ::
  -- | 'lvllrrsResponseStatus'
  Int ->
  ListV2LoggingLevelsResponse
listV2LoggingLevelsResponse pResponseStatus_ =
  ListV2LoggingLevelsResponse'
    { _lvllrrsNextToken =
        Nothing,
      _lvllrrsLogTargetConfigurations = Nothing,
      _lvllrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to get the next set of results, or __null__ if there are no additional results.
lvllrrsNextToken :: Lens' ListV2LoggingLevelsResponse (Maybe Text)
lvllrrsNextToken = lens _lvllrrsNextToken (\s a -> s {_lvllrrsNextToken = a})

-- | The logging configuration for a target.
lvllrrsLogTargetConfigurations :: Lens' ListV2LoggingLevelsResponse [LogTargetConfiguration]
lvllrrsLogTargetConfigurations = lens _lvllrrsLogTargetConfigurations (\s a -> s {_lvllrrsLogTargetConfigurations = a}) . _Default . _Coerce

-- | -- | The response status code.
lvllrrsResponseStatus :: Lens' ListV2LoggingLevelsResponse Int
lvllrrsResponseStatus = lens _lvllrrsResponseStatus (\s a -> s {_lvllrrsResponseStatus = a})

instance NFData ListV2LoggingLevelsResponse
