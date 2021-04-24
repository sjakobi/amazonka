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
-- Module      : Network.AWS.Connect.ListApprovedOrigins
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Returns a paginated list of all approved origins associated with the instance.
--
--
-- This operation returns paginated results.
module Network.AWS.Connect.ListApprovedOrigins
  ( -- * Creating a Request
    listApprovedOrigins,
    ListApprovedOrigins,

    -- * Request Lenses
    laoNextToken,
    laoMaxResults,
    laoInstanceId,

    -- * Destructuring the Response
    listApprovedOriginsResponse,
    ListApprovedOriginsResponse,

    -- * Response Lenses
    laorrsOrigins,
    laorrsNextToken,
    laorrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listApprovedOrigins' smart constructor.
data ListApprovedOrigins = ListApprovedOrigins'
  { _laoNextToken ::
      !(Maybe Text),
    _laoMaxResults :: !(Maybe Nat),
    _laoInstanceId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListApprovedOrigins' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laoNextToken' - The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
--
-- * 'laoMaxResults' - The maximum number of results to return per page.
--
-- * 'laoInstanceId' - The identifier of the Amazon Connect instance.
listApprovedOrigins ::
  -- | 'laoInstanceId'
  Text ->
  ListApprovedOrigins
listApprovedOrigins pInstanceId_ =
  ListApprovedOrigins'
    { _laoNextToken = Nothing,
      _laoMaxResults = Nothing,
      _laoInstanceId = pInstanceId_
    }

-- | The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
laoNextToken :: Lens' ListApprovedOrigins (Maybe Text)
laoNextToken = lens _laoNextToken (\s a -> s {_laoNextToken = a})

-- | The maximum number of results to return per page.
laoMaxResults :: Lens' ListApprovedOrigins (Maybe Natural)
laoMaxResults = lens _laoMaxResults (\s a -> s {_laoMaxResults = a}) . mapping _Nat

-- | The identifier of the Amazon Connect instance.
laoInstanceId :: Lens' ListApprovedOrigins Text
laoInstanceId = lens _laoInstanceId (\s a -> s {_laoInstanceId = a})

instance AWSPager ListApprovedOrigins where
  page rq rs
    | stop (rs ^. laorrsNextToken) = Nothing
    | stop (rs ^. laorrsOrigins) = Nothing
    | otherwise =
      Just $ rq & laoNextToken .~ rs ^. laorrsNextToken

instance AWSRequest ListApprovedOrigins where
  type
    Rs ListApprovedOrigins =
      ListApprovedOriginsResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          ListApprovedOriginsResponse'
            <$> (x .?> "Origins" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListApprovedOrigins

instance NFData ListApprovedOrigins

instance ToHeaders ListApprovedOrigins where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListApprovedOrigins where
  toPath ListApprovedOrigins' {..} =
    mconcat
      [ "/instance/",
        toBS _laoInstanceId,
        "/approved-origins"
      ]

instance ToQuery ListApprovedOrigins where
  toQuery ListApprovedOrigins' {..} =
    mconcat
      [ "nextToken" =: _laoNextToken,
        "maxResults" =: _laoMaxResults
      ]

-- | /See:/ 'listApprovedOriginsResponse' smart constructor.
data ListApprovedOriginsResponse = ListApprovedOriginsResponse'
  { _laorrsOrigins ::
      !(Maybe [Text]),
    _laorrsNextToken ::
      !(Maybe Text),
    _laorrsResponseStatus ::
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

-- | Creates a value of 'ListApprovedOriginsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laorrsOrigins' - The approved origins.
--
-- * 'laorrsNextToken' - If there are additional results, this is the token for the next set of results.
--
-- * 'laorrsResponseStatus' - -- | The response status code.
listApprovedOriginsResponse ::
  -- | 'laorrsResponseStatus'
  Int ->
  ListApprovedOriginsResponse
listApprovedOriginsResponse pResponseStatus_ =
  ListApprovedOriginsResponse'
    { _laorrsOrigins =
        Nothing,
      _laorrsNextToken = Nothing,
      _laorrsResponseStatus = pResponseStatus_
    }

-- | The approved origins.
laorrsOrigins :: Lens' ListApprovedOriginsResponse [Text]
laorrsOrigins = lens _laorrsOrigins (\s a -> s {_laorrsOrigins = a}) . _Default . _Coerce

-- | If there are additional results, this is the token for the next set of results.
laorrsNextToken :: Lens' ListApprovedOriginsResponse (Maybe Text)
laorrsNextToken = lens _laorrsNextToken (\s a -> s {_laorrsNextToken = a})

-- | -- | The response status code.
laorrsResponseStatus :: Lens' ListApprovedOriginsResponse Int
laorrsResponseStatus = lens _laorrsResponseStatus (\s a -> s {_laorrsResponseStatus = a})

instance NFData ListApprovedOriginsResponse
