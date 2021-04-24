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
-- Module      : Network.AWS.ResourceGroupsTagging.GetTagKeys
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all tag keys currently in use in the specified Region for the calling AWS account.
--
--
-- This operation supports pagination, where the response can be sent in multiple pages. You should check the @PaginationToken@ response parameter to determine if there are additional results available to return. Repeat the query, passing the @PaginationToken@ response parameter value as an input to the next request until you recieve a @null@ value. A null value for @PaginationToken@ indicates that there are no more results waiting to be returned.
--
--
-- This operation returns paginated results.
module Network.AWS.ResourceGroupsTagging.GetTagKeys
  ( -- * Creating a Request
    getTagKeys,
    GetTagKeys,

    -- * Request Lenses
    gtkPaginationToken,

    -- * Destructuring the Response
    getTagKeysResponse,
    GetTagKeysResponse,

    -- * Response Lenses
    gtkrrsTagKeys,
    gtkrrsPaginationToken,
    gtkrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.ResourceGroupsTagging.Types
import Network.AWS.Response

-- | /See:/ 'getTagKeys' smart constructor.
newtype GetTagKeys = GetTagKeys'
  { _gtkPaginationToken ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetTagKeys' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtkPaginationToken' - Specifies a @PaginationToken@ response value from a previous request to indicate that you want the next page of results. Leave this parameter empty in your initial request.
getTagKeys ::
  GetTagKeys
getTagKeys =
  GetTagKeys' {_gtkPaginationToken = Nothing}

-- | Specifies a @PaginationToken@ response value from a previous request to indicate that you want the next page of results. Leave this parameter empty in your initial request.
gtkPaginationToken :: Lens' GetTagKeys (Maybe Text)
gtkPaginationToken = lens _gtkPaginationToken (\s a -> s {_gtkPaginationToken = a})

instance AWSPager GetTagKeys where
  page rq rs
    | stop (rs ^. gtkrrsPaginationToken) = Nothing
    | stop (rs ^. gtkrrsTagKeys) = Nothing
    | otherwise =
      Just $
        rq
          & gtkPaginationToken .~ rs ^. gtkrrsPaginationToken

instance AWSRequest GetTagKeys where
  type Rs GetTagKeys = GetTagKeysResponse
  request = postJSON resourceGroupsTagging
  response =
    receiveJSON
      ( \s h x ->
          GetTagKeysResponse'
            <$> (x .?> "TagKeys" .!@ mempty)
            <*> (x .?> "PaginationToken")
            <*> (pure (fromEnum s))
      )

instance Hashable GetTagKeys

instance NFData GetTagKeys

instance ToHeaders GetTagKeys where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "ResourceGroupsTaggingAPI_20170126.GetTagKeys" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetTagKeys where
  toJSON GetTagKeys' {..} =
    object
      ( catMaybes
          [("PaginationToken" .=) <$> _gtkPaginationToken]
      )

instance ToPath GetTagKeys where
  toPath = const "/"

instance ToQuery GetTagKeys where
  toQuery = const mempty

-- | /See:/ 'getTagKeysResponse' smart constructor.
data GetTagKeysResponse = GetTagKeysResponse'
  { _gtkrrsTagKeys ::
      !(Maybe [Text]),
    _gtkrrsPaginationToken ::
      !(Maybe Text),
    _gtkrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetTagKeysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtkrrsTagKeys' - A list of all tag keys in the AWS account.
--
-- * 'gtkrrsPaginationToken' - A string that indicates that there is more data available than this response contains. To receive the next part of the response, specify this response value as the @PaginationToken@ value in the request for the next page.
--
-- * 'gtkrrsResponseStatus' - -- | The response status code.
getTagKeysResponse ::
  -- | 'gtkrrsResponseStatus'
  Int ->
  GetTagKeysResponse
getTagKeysResponse pResponseStatus_ =
  GetTagKeysResponse'
    { _gtkrrsTagKeys = Nothing,
      _gtkrrsPaginationToken = Nothing,
      _gtkrrsResponseStatus = pResponseStatus_
    }

-- | A list of all tag keys in the AWS account.
gtkrrsTagKeys :: Lens' GetTagKeysResponse [Text]
gtkrrsTagKeys = lens _gtkrrsTagKeys (\s a -> s {_gtkrrsTagKeys = a}) . _Default . _Coerce

-- | A string that indicates that there is more data available than this response contains. To receive the next part of the response, specify this response value as the @PaginationToken@ value in the request for the next page.
gtkrrsPaginationToken :: Lens' GetTagKeysResponse (Maybe Text)
gtkrrsPaginationToken = lens _gtkrrsPaginationToken (\s a -> s {_gtkrrsPaginationToken = a})

-- | -- | The response status code.
gtkrrsResponseStatus :: Lens' GetTagKeysResponse Int
gtkrrsResponseStatus = lens _gtkrrsResponseStatus (\s a -> s {_gtkrrsResponseStatus = a})

instance NFData GetTagKeysResponse
