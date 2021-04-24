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
-- Module      : Network.AWS.IoT.GetBehaviorModelTrainingSummaries
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a Device Defender's ML Detect Security Profile training model's status.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.GetBehaviorModelTrainingSummaries
  ( -- * Creating a Request
    getBehaviorModelTrainingSummaries,
    GetBehaviorModelTrainingSummaries,

    -- * Request Lenses
    gbmtsNextToken,
    gbmtsMaxResults,
    gbmtsSecurityProfileName,

    -- * Destructuring the Response
    getBehaviorModelTrainingSummariesResponse,
    GetBehaviorModelTrainingSummariesResponse,

    -- * Response Lenses
    gbmtsrrsNextToken,
    gbmtsrrsSummaries,
    gbmtsrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getBehaviorModelTrainingSummaries' smart constructor.
data GetBehaviorModelTrainingSummaries = GetBehaviorModelTrainingSummaries'
  { _gbmtsNextToken ::
      !( Maybe
           Text
       ),
    _gbmtsMaxResults ::
      !( Maybe
           Nat
       ),
    _gbmtsSecurityProfileName ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetBehaviorModelTrainingSummaries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbmtsNextToken' - The token for the next set of results.
--
-- * 'gbmtsMaxResults' - The maximum number of results to return at one time. The default is 25.
--
-- * 'gbmtsSecurityProfileName' - The name of the security profile.
getBehaviorModelTrainingSummaries ::
  GetBehaviorModelTrainingSummaries
getBehaviorModelTrainingSummaries =
  GetBehaviorModelTrainingSummaries'
    { _gbmtsNextToken =
        Nothing,
      _gbmtsMaxResults = Nothing,
      _gbmtsSecurityProfileName = Nothing
    }

-- | The token for the next set of results.
gbmtsNextToken :: Lens' GetBehaviorModelTrainingSummaries (Maybe Text)
gbmtsNextToken = lens _gbmtsNextToken (\s a -> s {_gbmtsNextToken = a})

-- | The maximum number of results to return at one time. The default is 25.
gbmtsMaxResults :: Lens' GetBehaviorModelTrainingSummaries (Maybe Natural)
gbmtsMaxResults = lens _gbmtsMaxResults (\s a -> s {_gbmtsMaxResults = a}) . mapping _Nat

-- | The name of the security profile.
gbmtsSecurityProfileName :: Lens' GetBehaviorModelTrainingSummaries (Maybe Text)
gbmtsSecurityProfileName = lens _gbmtsSecurityProfileName (\s a -> s {_gbmtsSecurityProfileName = a})

instance AWSPager GetBehaviorModelTrainingSummaries where
  page rq rs
    | stop (rs ^. gbmtsrrsNextToken) = Nothing
    | stop (rs ^. gbmtsrrsSummaries) = Nothing
    | otherwise =
      Just $ rq & gbmtsNextToken .~ rs ^. gbmtsrrsNextToken

instance AWSRequest GetBehaviorModelTrainingSummaries where
  type
    Rs GetBehaviorModelTrainingSummaries =
      GetBehaviorModelTrainingSummariesResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          GetBehaviorModelTrainingSummariesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "summaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetBehaviorModelTrainingSummaries

instance NFData GetBehaviorModelTrainingSummaries

instance ToHeaders GetBehaviorModelTrainingSummaries where
  toHeaders = const mempty

instance ToPath GetBehaviorModelTrainingSummaries where
  toPath = const "/behavior-model-training/summaries"

instance ToQuery GetBehaviorModelTrainingSummaries where
  toQuery GetBehaviorModelTrainingSummaries' {..} =
    mconcat
      [ "nextToken" =: _gbmtsNextToken,
        "maxResults" =: _gbmtsMaxResults,
        "securityProfileName" =: _gbmtsSecurityProfileName
      ]

-- | /See:/ 'getBehaviorModelTrainingSummariesResponse' smart constructor.
data GetBehaviorModelTrainingSummariesResponse = GetBehaviorModelTrainingSummariesResponse'
  { _gbmtsrrsNextToken ::
      !( Maybe
           Text
       ),
    _gbmtsrrsSummaries ::
      !( Maybe
           [BehaviorModelTrainingSummary]
       ),
    _gbmtsrrsResponseStatus ::
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

-- | Creates a value of 'GetBehaviorModelTrainingSummariesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbmtsrrsNextToken' - A token that can be used to retrieve the next set of results, or @null@ if there are no additional results.
--
-- * 'gbmtsrrsSummaries' - A list of all ML Detect behaviors and their model status for a given Security Profile.
--
-- * 'gbmtsrrsResponseStatus' - -- | The response status code.
getBehaviorModelTrainingSummariesResponse ::
  -- | 'gbmtsrrsResponseStatus'
  Int ->
  GetBehaviorModelTrainingSummariesResponse
getBehaviorModelTrainingSummariesResponse
  pResponseStatus_ =
    GetBehaviorModelTrainingSummariesResponse'
      { _gbmtsrrsNextToken =
          Nothing,
        _gbmtsrrsSummaries = Nothing,
        _gbmtsrrsResponseStatus =
          pResponseStatus_
      }

-- | A token that can be used to retrieve the next set of results, or @null@ if there are no additional results.
gbmtsrrsNextToken :: Lens' GetBehaviorModelTrainingSummariesResponse (Maybe Text)
gbmtsrrsNextToken = lens _gbmtsrrsNextToken (\s a -> s {_gbmtsrrsNextToken = a})

-- | A list of all ML Detect behaviors and their model status for a given Security Profile.
gbmtsrrsSummaries :: Lens' GetBehaviorModelTrainingSummariesResponse [BehaviorModelTrainingSummary]
gbmtsrrsSummaries = lens _gbmtsrrsSummaries (\s a -> s {_gbmtsrrsSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
gbmtsrrsResponseStatus :: Lens' GetBehaviorModelTrainingSummariesResponse Int
gbmtsrrsResponseStatus = lens _gbmtsrrsResponseStatus (\s a -> s {_gbmtsrrsResponseStatus = a})

instance
  NFData
    GetBehaviorModelTrainingSummariesResponse
