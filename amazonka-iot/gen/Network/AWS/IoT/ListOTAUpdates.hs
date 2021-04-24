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
-- Module      : Network.AWS.IoT.ListOTAUpdates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists OTA updates.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListOTAUpdates
  ( -- * Creating a Request
    listOTAUpdates,
    ListOTAUpdates,

    -- * Request Lenses
    lotauOtaUpdateStatus,
    lotauNextToken,
    lotauMaxResults,

    -- * Destructuring the Response
    listOTAUpdatesResponse,
    ListOTAUpdatesResponse,

    -- * Response Lenses
    lotaurrsNextToken,
    lotaurrsOtaUpdates,
    lotaurrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listOTAUpdates' smart constructor.
data ListOTAUpdates = ListOTAUpdates'
  { _lotauOtaUpdateStatus ::
      !(Maybe OTAUpdateStatus),
    _lotauNextToken :: !(Maybe Text),
    _lotauMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListOTAUpdates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lotauOtaUpdateStatus' - The OTA update job status.
--
-- * 'lotauNextToken' - A token used to retrieve the next set of results.
--
-- * 'lotauMaxResults' - The maximum number of results to return at one time.
listOTAUpdates ::
  ListOTAUpdates
listOTAUpdates =
  ListOTAUpdates'
    { _lotauOtaUpdateStatus = Nothing,
      _lotauNextToken = Nothing,
      _lotauMaxResults = Nothing
    }

-- | The OTA update job status.
lotauOtaUpdateStatus :: Lens' ListOTAUpdates (Maybe OTAUpdateStatus)
lotauOtaUpdateStatus = lens _lotauOtaUpdateStatus (\s a -> s {_lotauOtaUpdateStatus = a})

-- | A token used to retrieve the next set of results.
lotauNextToken :: Lens' ListOTAUpdates (Maybe Text)
lotauNextToken = lens _lotauNextToken (\s a -> s {_lotauNextToken = a})

-- | The maximum number of results to return at one time.
lotauMaxResults :: Lens' ListOTAUpdates (Maybe Natural)
lotauMaxResults = lens _lotauMaxResults (\s a -> s {_lotauMaxResults = a}) . mapping _Nat

instance AWSPager ListOTAUpdates where
  page rq rs
    | stop (rs ^. lotaurrsNextToken) = Nothing
    | stop (rs ^. lotaurrsOtaUpdates) = Nothing
    | otherwise =
      Just $ rq & lotauNextToken .~ rs ^. lotaurrsNextToken

instance AWSRequest ListOTAUpdates where
  type Rs ListOTAUpdates = ListOTAUpdatesResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListOTAUpdatesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "otaUpdates" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListOTAUpdates

instance NFData ListOTAUpdates

instance ToHeaders ListOTAUpdates where
  toHeaders = const mempty

instance ToPath ListOTAUpdates where
  toPath = const "/otaUpdates"

instance ToQuery ListOTAUpdates where
  toQuery ListOTAUpdates' {..} =
    mconcat
      [ "otaUpdateStatus" =: _lotauOtaUpdateStatus,
        "nextToken" =: _lotauNextToken,
        "maxResults" =: _lotauMaxResults
      ]

-- | /See:/ 'listOTAUpdatesResponse' smart constructor.
data ListOTAUpdatesResponse = ListOTAUpdatesResponse'
  { _lotaurrsNextToken ::
      !(Maybe Text),
    _lotaurrsOtaUpdates ::
      !( Maybe
           [OTAUpdateSummary]
       ),
    _lotaurrsResponseStatus ::
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

-- | Creates a value of 'ListOTAUpdatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lotaurrsNextToken' - A token to use to get the next set of results.
--
-- * 'lotaurrsOtaUpdates' - A list of OTA update jobs.
--
-- * 'lotaurrsResponseStatus' - -- | The response status code.
listOTAUpdatesResponse ::
  -- | 'lotaurrsResponseStatus'
  Int ->
  ListOTAUpdatesResponse
listOTAUpdatesResponse pResponseStatus_ =
  ListOTAUpdatesResponse'
    { _lotaurrsNextToken =
        Nothing,
      _lotaurrsOtaUpdates = Nothing,
      _lotaurrsResponseStatus = pResponseStatus_
    }

-- | A token to use to get the next set of results.
lotaurrsNextToken :: Lens' ListOTAUpdatesResponse (Maybe Text)
lotaurrsNextToken = lens _lotaurrsNextToken (\s a -> s {_lotaurrsNextToken = a})

-- | A list of OTA update jobs.
lotaurrsOtaUpdates :: Lens' ListOTAUpdatesResponse [OTAUpdateSummary]
lotaurrsOtaUpdates = lens _lotaurrsOtaUpdates (\s a -> s {_lotaurrsOtaUpdates = a}) . _Default . _Coerce

-- | -- | The response status code.
lotaurrsResponseStatus :: Lens' ListOTAUpdatesResponse Int
lotaurrsResponseStatus = lens _lotaurrsResponseStatus (\s a -> s {_lotaurrsResponseStatus = a})

instance NFData ListOTAUpdatesResponse
