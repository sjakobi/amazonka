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
-- Module      : Network.AWS.Support.DescribeTrustedAdvisorCheckRefreshStatuses
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the refresh status of the AWS Trusted Advisor checks that have the specified check IDs. You can get the check IDs by calling the 'DescribeTrustedAdvisorChecks' operation.
--
--
-- Some checks are refreshed automatically, and you can't return their refresh statuses by using the @DescribeTrustedAdvisorCheckRefreshStatuses@ operation. If you call this operation for these checks, you might see an @InvalidParameterValue@ error.
module Network.AWS.Support.DescribeTrustedAdvisorCheckRefreshStatuses
  ( -- * Creating a Request
    describeTrustedAdvisorCheckRefreshStatuses,
    DescribeTrustedAdvisorCheckRefreshStatuses,

    -- * Request Lenses
    dtacrsCheckIds,

    -- * Destructuring the Response
    describeTrustedAdvisorCheckRefreshStatusesResponse,
    DescribeTrustedAdvisorCheckRefreshStatusesResponse,

    -- * Response Lenses
    dtacrsrrsResponseStatus,
    dtacrsrrsStatuses,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Support.Types

-- | /See:/ 'describeTrustedAdvisorCheckRefreshStatuses' smart constructor.
newtype DescribeTrustedAdvisorCheckRefreshStatuses = DescribeTrustedAdvisorCheckRefreshStatuses'
  { _dtacrsCheckIds ::
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

-- | Creates a value of 'DescribeTrustedAdvisorCheckRefreshStatuses' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtacrsCheckIds' - The IDs of the Trusted Advisor checks to get the status of.
describeTrustedAdvisorCheckRefreshStatuses ::
  DescribeTrustedAdvisorCheckRefreshStatuses
describeTrustedAdvisorCheckRefreshStatuses =
  DescribeTrustedAdvisorCheckRefreshStatuses'
    { _dtacrsCheckIds =
        mempty
    }

-- | The IDs of the Trusted Advisor checks to get the status of.
dtacrsCheckIds :: Lens' DescribeTrustedAdvisorCheckRefreshStatuses [Text]
dtacrsCheckIds = lens _dtacrsCheckIds (\s a -> s {_dtacrsCheckIds = a}) . _Coerce

instance
  AWSRequest
    DescribeTrustedAdvisorCheckRefreshStatuses
  where
  type
    Rs DescribeTrustedAdvisorCheckRefreshStatuses =
      DescribeTrustedAdvisorCheckRefreshStatusesResponse
  request = postJSON support
  response =
    receiveJSON
      ( \s h x ->
          DescribeTrustedAdvisorCheckRefreshStatusesResponse'
            <$> (pure (fromEnum s))
              <*> (x .?> "statuses" .!@ mempty)
      )

instance
  Hashable
    DescribeTrustedAdvisorCheckRefreshStatuses

instance
  NFData
    DescribeTrustedAdvisorCheckRefreshStatuses

instance
  ToHeaders
    DescribeTrustedAdvisorCheckRefreshStatuses
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSSupport_20130415.DescribeTrustedAdvisorCheckRefreshStatuses" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    DescribeTrustedAdvisorCheckRefreshStatuses
  where
  toJSON
    DescribeTrustedAdvisorCheckRefreshStatuses' {..} =
      object
        (catMaybes [Just ("checkIds" .= _dtacrsCheckIds)])

instance
  ToPath
    DescribeTrustedAdvisorCheckRefreshStatuses
  where
  toPath = const "/"

instance
  ToQuery
    DescribeTrustedAdvisorCheckRefreshStatuses
  where
  toQuery = const mempty

-- | The statuses of the Trusted Advisor checks returned by the 'DescribeTrustedAdvisorCheckRefreshStatuses' operation.
--
--
--
-- /See:/ 'describeTrustedAdvisorCheckRefreshStatusesResponse' smart constructor.
data DescribeTrustedAdvisorCheckRefreshStatusesResponse = DescribeTrustedAdvisorCheckRefreshStatusesResponse'
  { _dtacrsrrsResponseStatus ::
      !Int,
    _dtacrsrrsStatuses ::
      ![TrustedAdvisorCheckRefreshStatus]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeTrustedAdvisorCheckRefreshStatusesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtacrsrrsResponseStatus' - -- | The response status code.
--
-- * 'dtacrsrrsStatuses' - The refresh status of the specified Trusted Advisor checks.
describeTrustedAdvisorCheckRefreshStatusesResponse ::
  -- | 'dtacrsrrsResponseStatus'
  Int ->
  DescribeTrustedAdvisorCheckRefreshStatusesResponse
describeTrustedAdvisorCheckRefreshStatusesResponse
  pResponseStatus_ =
    DescribeTrustedAdvisorCheckRefreshStatusesResponse'
      { _dtacrsrrsResponseStatus =
          pResponseStatus_,
        _dtacrsrrsStatuses =
          mempty
      }

-- | -- | The response status code.
dtacrsrrsResponseStatus :: Lens' DescribeTrustedAdvisorCheckRefreshStatusesResponse Int
dtacrsrrsResponseStatus = lens _dtacrsrrsResponseStatus (\s a -> s {_dtacrsrrsResponseStatus = a})

-- | The refresh status of the specified Trusted Advisor checks.
dtacrsrrsStatuses :: Lens' DescribeTrustedAdvisorCheckRefreshStatusesResponse [TrustedAdvisorCheckRefreshStatus]
dtacrsrrsStatuses = lens _dtacrsrrsStatuses (\s a -> s {_dtacrsrrsStatuses = a}) . _Coerce

instance
  NFData
    DescribeTrustedAdvisorCheckRefreshStatusesResponse
