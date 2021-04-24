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
-- Module      : Network.AWS.SNS.ListPlatformApplications
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the platform application objects for the supported push notification services, such as APNS and GCM (Firebase Cloud Messaging). The results for @ListPlatformApplications@ are paginated and return a limited list of applications, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call @ListPlatformApplications@ using the NextToken string received from the previous call. When there are no more records to return, @NextToken@ will be null. For more information, see <https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html Using Amazon SNS Mobile Push Notifications> .
--
--
-- This action is throttled at 15 transactions per second (TPS).
--
--
-- This operation returns paginated results.
module Network.AWS.SNS.ListPlatformApplications
  ( -- * Creating a Request
    listPlatformApplications,
    ListPlatformApplications,

    -- * Request Lenses
    lpaNextToken,

    -- * Destructuring the Response
    listPlatformApplicationsResponse,
    ListPlatformApplicationsResponse,

    -- * Response Lenses
    lparrsNextToken,
    lparrsPlatformApplications,
    lparrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SNS.Types

-- | Input for ListPlatformApplications action.
--
--
--
-- /See:/ 'listPlatformApplications' smart constructor.
newtype ListPlatformApplications = ListPlatformApplications'
  { _lpaNextToken ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListPlatformApplications' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpaNextToken' - NextToken string is used when calling ListPlatformApplications action to retrieve additional records that are available after the first page results.
listPlatformApplications ::
  ListPlatformApplications
listPlatformApplications =
  ListPlatformApplications' {_lpaNextToken = Nothing}

-- | NextToken string is used when calling ListPlatformApplications action to retrieve additional records that are available after the first page results.
lpaNextToken :: Lens' ListPlatformApplications (Maybe Text)
lpaNextToken = lens _lpaNextToken (\s a -> s {_lpaNextToken = a})

instance AWSPager ListPlatformApplications where
  page rq rs
    | stop (rs ^. lparrsNextToken) = Nothing
    | stop (rs ^. lparrsPlatformApplications) = Nothing
    | otherwise =
      Just $ rq & lpaNextToken .~ rs ^. lparrsNextToken

instance AWSRequest ListPlatformApplications where
  type
    Rs ListPlatformApplications =
      ListPlatformApplicationsResponse
  request = postQuery sns
  response =
    receiveXMLWrapper
      "ListPlatformApplicationsResult"
      ( \s h x ->
          ListPlatformApplicationsResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "PlatformApplications" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListPlatformApplications

instance NFData ListPlatformApplications

instance ToHeaders ListPlatformApplications where
  toHeaders = const mempty

instance ToPath ListPlatformApplications where
  toPath = const "/"

instance ToQuery ListPlatformApplications where
  toQuery ListPlatformApplications' {..} =
    mconcat
      [ "Action"
          =: ("ListPlatformApplications" :: ByteString),
        "Version" =: ("2010-03-31" :: ByteString),
        "NextToken" =: _lpaNextToken
      ]

-- | Response for ListPlatformApplications action.
--
--
--
-- /See:/ 'listPlatformApplicationsResponse' smart constructor.
data ListPlatformApplicationsResponse = ListPlatformApplicationsResponse'
  { _lparrsNextToken ::
      !( Maybe
           Text
       ),
    _lparrsPlatformApplications ::
      !( Maybe
           [PlatformApplication]
       ),
    _lparrsResponseStatus ::
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

-- | Creates a value of 'ListPlatformApplicationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lparrsNextToken' - NextToken string is returned when calling ListPlatformApplications action if additional records are available after the first page results.
--
-- * 'lparrsPlatformApplications' - Platform applications returned when calling ListPlatformApplications action.
--
-- * 'lparrsResponseStatus' - -- | The response status code.
listPlatformApplicationsResponse ::
  -- | 'lparrsResponseStatus'
  Int ->
  ListPlatformApplicationsResponse
listPlatformApplicationsResponse pResponseStatus_ =
  ListPlatformApplicationsResponse'
    { _lparrsNextToken =
        Nothing,
      _lparrsPlatformApplications = Nothing,
      _lparrsResponseStatus = pResponseStatus_
    }

-- | NextToken string is returned when calling ListPlatformApplications action if additional records are available after the first page results.
lparrsNextToken :: Lens' ListPlatformApplicationsResponse (Maybe Text)
lparrsNextToken = lens _lparrsNextToken (\s a -> s {_lparrsNextToken = a})

-- | Platform applications returned when calling ListPlatformApplications action.
lparrsPlatformApplications :: Lens' ListPlatformApplicationsResponse [PlatformApplication]
lparrsPlatformApplications = lens _lparrsPlatformApplications (\s a -> s {_lparrsPlatformApplications = a}) . _Default . _Coerce

-- | -- | The response status code.
lparrsResponseStatus :: Lens' ListPlatformApplicationsResponse Int
lparrsResponseStatus = lens _lparrsResponseStatus (\s a -> s {_lparrsResponseStatus = a})

instance NFData ListPlatformApplicationsResponse
