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
-- Module      : Network.AWS.Connect.ListRoutingProfiles
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides summary information about the routing profiles for the specified Amazon Connect instance.
--
--
-- For more information about routing profiles, see <https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing.html Routing Profiles> and <https://docs.aws.amazon.com/connect/latest/adminguide/routing-profiles.html Create a Routing Profile> in the /Amazon Connect Administrator Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.Connect.ListRoutingProfiles
  ( -- * Creating a Request
    listRoutingProfiles,
    ListRoutingProfiles,

    -- * Request Lenses
    lrpNextToken,
    lrpMaxResults,
    lrpInstanceId,

    -- * Destructuring the Response
    listRoutingProfilesResponse,
    ListRoutingProfilesResponse,

    -- * Response Lenses
    lrprrsNextToken,
    lrprrsRoutingProfileSummaryList,
    lrprrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listRoutingProfiles' smart constructor.
data ListRoutingProfiles = ListRoutingProfiles'
  { _lrpNextToken ::
      !(Maybe Text),
    _lrpMaxResults :: !(Maybe Nat),
    _lrpInstanceId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListRoutingProfiles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrpNextToken' - The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
--
-- * 'lrpMaxResults' - The maximum number of results to return per page.
--
-- * 'lrpInstanceId' - The identifier of the Amazon Connect instance.
listRoutingProfiles ::
  -- | 'lrpInstanceId'
  Text ->
  ListRoutingProfiles
listRoutingProfiles pInstanceId_ =
  ListRoutingProfiles'
    { _lrpNextToken = Nothing,
      _lrpMaxResults = Nothing,
      _lrpInstanceId = pInstanceId_
    }

-- | The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
lrpNextToken :: Lens' ListRoutingProfiles (Maybe Text)
lrpNextToken = lens _lrpNextToken (\s a -> s {_lrpNextToken = a})

-- | The maximum number of results to return per page.
lrpMaxResults :: Lens' ListRoutingProfiles (Maybe Natural)
lrpMaxResults = lens _lrpMaxResults (\s a -> s {_lrpMaxResults = a}) . mapping _Nat

-- | The identifier of the Amazon Connect instance.
lrpInstanceId :: Lens' ListRoutingProfiles Text
lrpInstanceId = lens _lrpInstanceId (\s a -> s {_lrpInstanceId = a})

instance AWSPager ListRoutingProfiles where
  page rq rs
    | stop (rs ^. lrprrsNextToken) = Nothing
    | stop (rs ^. lrprrsRoutingProfileSummaryList) =
      Nothing
    | otherwise =
      Just $ rq & lrpNextToken .~ rs ^. lrprrsNextToken

instance AWSRequest ListRoutingProfiles where
  type
    Rs ListRoutingProfiles =
      ListRoutingProfilesResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          ListRoutingProfilesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "RoutingProfileSummaryList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListRoutingProfiles

instance NFData ListRoutingProfiles

instance ToHeaders ListRoutingProfiles where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListRoutingProfiles where
  toPath ListRoutingProfiles' {..} =
    mconcat
      ["/routing-profiles-summary/", toBS _lrpInstanceId]

instance ToQuery ListRoutingProfiles where
  toQuery ListRoutingProfiles' {..} =
    mconcat
      [ "nextToken" =: _lrpNextToken,
        "maxResults" =: _lrpMaxResults
      ]

-- | /See:/ 'listRoutingProfilesResponse' smart constructor.
data ListRoutingProfilesResponse = ListRoutingProfilesResponse'
  { _lrprrsNextToken ::
      !(Maybe Text),
    _lrprrsRoutingProfileSummaryList ::
      !( Maybe
           [RoutingProfileSummary]
       ),
    _lrprrsResponseStatus ::
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

-- | Creates a value of 'ListRoutingProfilesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrprrsNextToken' - If there are additional results, this is the token for the next set of results.
--
-- * 'lrprrsRoutingProfileSummaryList' - Information about the routing profiles.
--
-- * 'lrprrsResponseStatus' - -- | The response status code.
listRoutingProfilesResponse ::
  -- | 'lrprrsResponseStatus'
  Int ->
  ListRoutingProfilesResponse
listRoutingProfilesResponse pResponseStatus_ =
  ListRoutingProfilesResponse'
    { _lrprrsNextToken =
        Nothing,
      _lrprrsRoutingProfileSummaryList = Nothing,
      _lrprrsResponseStatus = pResponseStatus_
    }

-- | If there are additional results, this is the token for the next set of results.
lrprrsNextToken :: Lens' ListRoutingProfilesResponse (Maybe Text)
lrprrsNextToken = lens _lrprrsNextToken (\s a -> s {_lrprrsNextToken = a})

-- | Information about the routing profiles.
lrprrsRoutingProfileSummaryList :: Lens' ListRoutingProfilesResponse [RoutingProfileSummary]
lrprrsRoutingProfileSummaryList = lens _lrprrsRoutingProfileSummaryList (\s a -> s {_lrprrsRoutingProfileSummaryList = a}) . _Default . _Coerce

-- | -- | The response status code.
lrprrsResponseStatus :: Lens' ListRoutingProfilesResponse Int
lrprrsResponseStatus = lens _lrprrsResponseStatus (\s a -> s {_lrprrsResponseStatus = a})

instance NFData ListRoutingProfilesResponse
