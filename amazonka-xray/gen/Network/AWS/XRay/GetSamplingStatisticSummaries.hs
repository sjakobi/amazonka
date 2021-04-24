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
-- Module      : Network.AWS.XRay.GetSamplingStatisticSummaries
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about recent sampling results for all sampling rules.
--
--
--
-- This operation returns paginated results.
module Network.AWS.XRay.GetSamplingStatisticSummaries
  ( -- * Creating a Request
    getSamplingStatisticSummaries,
    GetSamplingStatisticSummaries,

    -- * Request Lenses
    gsssNextToken,

    -- * Destructuring the Response
    getSamplingStatisticSummariesResponse,
    GetSamplingStatisticSummariesResponse,

    -- * Response Lenses
    gsssrrsSamplingStatisticSummaries,
    gsssrrsNextToken,
    gsssrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.XRay.Types

-- | /See:/ 'getSamplingStatisticSummaries' smart constructor.
newtype GetSamplingStatisticSummaries = GetSamplingStatisticSummaries'
  { _gsssNextToken ::
      Maybe
        Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetSamplingStatisticSummaries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsssNextToken' - Pagination token.
getSamplingStatisticSummaries ::
  GetSamplingStatisticSummaries
getSamplingStatisticSummaries =
  GetSamplingStatisticSummaries'
    { _gsssNextToken =
        Nothing
    }

-- | Pagination token.
gsssNextToken :: Lens' GetSamplingStatisticSummaries (Maybe Text)
gsssNextToken = lens _gsssNextToken (\s a -> s {_gsssNextToken = a})

instance AWSPager GetSamplingStatisticSummaries where
  page rq rs
    | stop (rs ^. gsssrrsNextToken) = Nothing
    | stop (rs ^. gsssrrsSamplingStatisticSummaries) =
      Nothing
    | otherwise =
      Just $ rq & gsssNextToken .~ rs ^. gsssrrsNextToken

instance AWSRequest GetSamplingStatisticSummaries where
  type
    Rs GetSamplingStatisticSummaries =
      GetSamplingStatisticSummariesResponse
  request = postJSON xRay
  response =
    receiveJSON
      ( \s h x ->
          GetSamplingStatisticSummariesResponse'
            <$> (x .?> "SamplingStatisticSummaries" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable GetSamplingStatisticSummaries

instance NFData GetSamplingStatisticSummaries

instance ToHeaders GetSamplingStatisticSummaries where
  toHeaders = const mempty

instance ToJSON GetSamplingStatisticSummaries where
  toJSON GetSamplingStatisticSummaries' {..} =
    object
      (catMaybes [("NextToken" .=) <$> _gsssNextToken])

instance ToPath GetSamplingStatisticSummaries where
  toPath = const "/SamplingStatisticSummaries"

instance ToQuery GetSamplingStatisticSummaries where
  toQuery = const mempty

-- | /See:/ 'getSamplingStatisticSummariesResponse' smart constructor.
data GetSamplingStatisticSummariesResponse = GetSamplingStatisticSummariesResponse'
  { _gsssrrsSamplingStatisticSummaries ::
      !( Maybe
           [SamplingStatisticSummary]
       ),
    _gsssrrsNextToken ::
      !( Maybe
           Text
       ),
    _gsssrrsResponseStatus ::
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

-- | Creates a value of 'GetSamplingStatisticSummariesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsssrrsSamplingStatisticSummaries' - Information about the number of requests instrumented for each sampling rule.
--
-- * 'gsssrrsNextToken' - Pagination token.
--
-- * 'gsssrrsResponseStatus' - -- | The response status code.
getSamplingStatisticSummariesResponse ::
  -- | 'gsssrrsResponseStatus'
  Int ->
  GetSamplingStatisticSummariesResponse
getSamplingStatisticSummariesResponse
  pResponseStatus_ =
    GetSamplingStatisticSummariesResponse'
      { _gsssrrsSamplingStatisticSummaries =
          Nothing,
        _gsssrrsNextToken = Nothing,
        _gsssrrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the number of requests instrumented for each sampling rule.
gsssrrsSamplingStatisticSummaries :: Lens' GetSamplingStatisticSummariesResponse [SamplingStatisticSummary]
gsssrrsSamplingStatisticSummaries = lens _gsssrrsSamplingStatisticSummaries (\s a -> s {_gsssrrsSamplingStatisticSummaries = a}) . _Default . _Coerce

-- | Pagination token.
gsssrrsNextToken :: Lens' GetSamplingStatisticSummariesResponse (Maybe Text)
gsssrrsNextToken = lens _gsssrrsNextToken (\s a -> s {_gsssrrsNextToken = a})

-- | -- | The response status code.
gsssrrsResponseStatus :: Lens' GetSamplingStatisticSummariesResponse Int
gsssrrsResponseStatus = lens _gsssrrsResponseStatus (\s a -> s {_gsssrrsResponseStatus = a})

instance NFData GetSamplingStatisticSummariesResponse
