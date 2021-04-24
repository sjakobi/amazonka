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
-- Module      : Network.AWS.ImportExport.ListJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation returns the jobs associated with the requester. AWS Import/Export lists the jobs in reverse chronological order based on the date of creation. For example if Job Test1 was created 2009Dec30 and Test2 was created 2010Feb05, the ListJobs operation would return Test2 followed by Test1.
--
-- This operation returns paginated results.
module Network.AWS.ImportExport.ListJobs
  ( -- * Creating a Request
    listJobs,
    ListJobs,

    -- * Request Lenses
    ljMaxJobs,
    ljAPIVersion,
    ljMarker,

    -- * Destructuring the Response
    listJobsResponse,
    ListJobsResponse,

    -- * Response Lenses
    ljrrsIsTruncated,
    ljrrsJobs,
    ljrrsResponseStatus,
  )
where

import Network.AWS.ImportExport.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Input structure for the ListJobs operation.
--
-- /See:/ 'listJobs' smart constructor.
data ListJobs = ListJobs'
  { _ljMaxJobs :: !(Maybe Int),
    _ljAPIVersion :: !(Maybe Text),
    _ljMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljMaxJobs' - Undocumented member.
--
-- * 'ljAPIVersion' - Undocumented member.
--
-- * 'ljMarker' - Undocumented member.
listJobs ::
  ListJobs
listJobs =
  ListJobs'
    { _ljMaxJobs = Nothing,
      _ljAPIVersion = Nothing,
      _ljMarker = Nothing
    }

-- | Undocumented member.
ljMaxJobs :: Lens' ListJobs (Maybe Int)
ljMaxJobs = lens _ljMaxJobs (\s a -> s {_ljMaxJobs = a})

-- | Undocumented member.
ljAPIVersion :: Lens' ListJobs (Maybe Text)
ljAPIVersion = lens _ljAPIVersion (\s a -> s {_ljAPIVersion = a})

-- | Undocumented member.
ljMarker :: Lens' ListJobs (Maybe Text)
ljMarker = lens _ljMarker (\s a -> s {_ljMarker = a})

instance AWSPager ListJobs where
  page rq rs
    | stop (rs ^. ljrrsIsTruncated) = Nothing
    | isNothing (rs ^? ljrrsJobs . _last . jobJobId) =
      Nothing
    | otherwise =
      Just $
        rq
          & ljMarker .~ rs ^? ljrrsJobs . _last . jobJobId

instance AWSRequest ListJobs where
  type Rs ListJobs = ListJobsResponse
  request = postQuery importExport
  response =
    receiveXMLWrapper
      "ListJobsResult"
      ( \s h x ->
          ListJobsResponse'
            <$> (x .@? "IsTruncated")
            <*> ( x .@? "Jobs" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListJobs

instance NFData ListJobs

instance ToHeaders ListJobs where
  toHeaders = const mempty

instance ToPath ListJobs where
  toPath = const "/"

instance ToQuery ListJobs where
  toQuery ListJobs' {..} =
    mconcat
      [ "Operation=ListJobs",
        "Action" =: ("ListJobs" :: ByteString),
        "Version" =: ("2010-06-01" :: ByteString),
        "MaxJobs" =: _ljMaxJobs,
        "APIVersion" =: _ljAPIVersion,
        "Marker" =: _ljMarker
      ]

-- | Output structure for the ListJobs operation.
--
-- /See:/ 'listJobsResponse' smart constructor.
data ListJobsResponse = ListJobsResponse'
  { _ljrrsIsTruncated ::
      !(Maybe Bool),
    _ljrrsJobs :: !(Maybe [Job]),
    _ljrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljrrsIsTruncated' - Undocumented member.
--
-- * 'ljrrsJobs' - Undocumented member.
--
-- * 'ljrrsResponseStatus' - -- | The response status code.
listJobsResponse ::
  -- | 'ljrrsResponseStatus'
  Int ->
  ListJobsResponse
listJobsResponse pResponseStatus_ =
  ListJobsResponse'
    { _ljrrsIsTruncated = Nothing,
      _ljrrsJobs = Nothing,
      _ljrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
ljrrsIsTruncated :: Lens' ListJobsResponse (Maybe Bool)
ljrrsIsTruncated = lens _ljrrsIsTruncated (\s a -> s {_ljrrsIsTruncated = a})

-- | Undocumented member.
ljrrsJobs :: Lens' ListJobsResponse [Job]
ljrrsJobs = lens _ljrrsJobs (\s a -> s {_ljrrsJobs = a}) . _Default . _Coerce

-- | -- | The response status code.
ljrrsResponseStatus :: Lens' ListJobsResponse Int
ljrrsResponseStatus = lens _ljrrsResponseStatus (\s a -> s {_ljrrsResponseStatus = a})

instance NFData ListJobsResponse
