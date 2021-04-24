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
-- Module      : Network.AWS.Support.DescribeTrustedAdvisorCheckSummaries
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the results for the AWS Trusted Advisor check summaries for the check IDs that you specified. You can get the check IDs by calling the 'DescribeTrustedAdvisorChecks' operation.
--
--
-- The response contains an array of 'TrustedAdvisorCheckSummary' objects.
module Network.AWS.Support.DescribeTrustedAdvisorCheckSummaries
  ( -- * Creating a Request
    describeTrustedAdvisorCheckSummaries,
    DescribeTrustedAdvisorCheckSummaries,

    -- * Request Lenses
    dtacsCheckIds,

    -- * Destructuring the Response
    describeTrustedAdvisorCheckSummariesResponse,
    DescribeTrustedAdvisorCheckSummariesResponse,

    -- * Response Lenses
    dtacsrrsResponseStatus,
    dtacsrrsSummaries,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Support.Types

-- | /See:/ 'describeTrustedAdvisorCheckSummaries' smart constructor.
newtype DescribeTrustedAdvisorCheckSummaries = DescribeTrustedAdvisorCheckSummaries'
  { _dtacsCheckIds ::
      [Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeTrustedAdvisorCheckSummaries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtacsCheckIds' - The IDs of the Trusted Advisor checks.
describeTrustedAdvisorCheckSummaries ::
  DescribeTrustedAdvisorCheckSummaries
describeTrustedAdvisorCheckSummaries =
  DescribeTrustedAdvisorCheckSummaries'
    { _dtacsCheckIds =
        mempty
    }

-- | The IDs of the Trusted Advisor checks.
dtacsCheckIds :: Lens' DescribeTrustedAdvisorCheckSummaries [Text]
dtacsCheckIds = lens _dtacsCheckIds (\s a -> s {_dtacsCheckIds = a}) . _Coerce

instance
  AWSRequest
    DescribeTrustedAdvisorCheckSummaries
  where
  type
    Rs DescribeTrustedAdvisorCheckSummaries =
      DescribeTrustedAdvisorCheckSummariesResponse
  request = postJSON support
  response =
    receiveJSON
      ( \s h x ->
          DescribeTrustedAdvisorCheckSummariesResponse'
            <$> (pure (fromEnum s))
            <*> (x .?> "summaries" .!@ mempty)
      )

instance
  Hashable
    DescribeTrustedAdvisorCheckSummaries

instance NFData DescribeTrustedAdvisorCheckSummaries

instance
  ToHeaders
    DescribeTrustedAdvisorCheckSummaries
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSSupport_20130415.DescribeTrustedAdvisorCheckSummaries" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeTrustedAdvisorCheckSummaries where
  toJSON DescribeTrustedAdvisorCheckSummaries' {..} =
    object
      (catMaybes [Just ("checkIds" .= _dtacsCheckIds)])

instance ToPath DescribeTrustedAdvisorCheckSummaries where
  toPath = const "/"

instance ToQuery DescribeTrustedAdvisorCheckSummaries where
  toQuery = const mempty

-- | The summaries of the Trusted Advisor checks returned by the 'DescribeTrustedAdvisorCheckSummaries' operation.
--
--
--
-- /See:/ 'describeTrustedAdvisorCheckSummariesResponse' smart constructor.
data DescribeTrustedAdvisorCheckSummariesResponse = DescribeTrustedAdvisorCheckSummariesResponse'
  { _dtacsrrsResponseStatus ::
      !Int,
    _dtacsrrsSummaries ::
      ![TrustedAdvisorCheckSummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeTrustedAdvisorCheckSummariesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtacsrrsResponseStatus' - -- | The response status code.
--
-- * 'dtacsrrsSummaries' - The summary information for the requested Trusted Advisor checks.
describeTrustedAdvisorCheckSummariesResponse ::
  -- | 'dtacsrrsResponseStatus'
  Int ->
  DescribeTrustedAdvisorCheckSummariesResponse
describeTrustedAdvisorCheckSummariesResponse
  pResponseStatus_ =
    DescribeTrustedAdvisorCheckSummariesResponse'
      { _dtacsrrsResponseStatus =
          pResponseStatus_,
        _dtacsrrsSummaries = mempty
      }

-- | -- | The response status code.
dtacsrrsResponseStatus :: Lens' DescribeTrustedAdvisorCheckSummariesResponse Int
dtacsrrsResponseStatus = lens _dtacsrrsResponseStatus (\s a -> s {_dtacsrrsResponseStatus = a})

-- | The summary information for the requested Trusted Advisor checks.
dtacsrrsSummaries :: Lens' DescribeTrustedAdvisorCheckSummariesResponse [TrustedAdvisorCheckSummary]
dtacsrrsSummaries = lens _dtacsrrsSummaries (\s a -> s {_dtacsrrsSummaries = a}) . _Coerce

instance
  NFData
    DescribeTrustedAdvisorCheckSummariesResponse
