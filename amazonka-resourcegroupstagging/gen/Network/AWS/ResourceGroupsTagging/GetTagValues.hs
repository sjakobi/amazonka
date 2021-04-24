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
-- Module      : Network.AWS.ResourceGroupsTagging.GetTagValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all tag values for the specified key that are used in the specified AWS Region for the calling AWS account.
--
--
-- This operation supports pagination, where the response can be sent in multiple pages. You should check the @PaginationToken@ response parameter to determine if there are additional results available to return. Repeat the query, passing the @PaginationToken@ response parameter value as an input to the next request until you recieve a @null@ value. A null value for @PaginationToken@ indicates that there are no more results waiting to be returned.
--
--
-- This operation returns paginated results.
module Network.AWS.ResourceGroupsTagging.GetTagValues
  ( -- * Creating a Request
    getTagValues,
    GetTagValues,

    -- * Request Lenses
    gtvPaginationToken,
    gtvKey,

    -- * Destructuring the Response
    getTagValuesResponse,
    GetTagValuesResponse,

    -- * Response Lenses
    gtvrrsPaginationToken,
    gtvrrsTagValues,
    gtvrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.ResourceGroupsTagging.Types
import Network.AWS.Response

-- | /See:/ 'getTagValues' smart constructor.
data GetTagValues = GetTagValues'
  { _gtvPaginationToken ::
      !(Maybe Text),
    _gtvKey :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetTagValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtvPaginationToken' - Specifies a @PaginationToken@ response value from a previous request to indicate that you want the next page of results. Leave this parameter empty in your initial request.
--
-- * 'gtvKey' - Specifies the tag key for which you want to list all existing values that are currently used in the specified AWS Region for the calling AWS account.
getTagValues ::
  -- | 'gtvKey'
  Text ->
  GetTagValues
getTagValues pKey_ =
  GetTagValues'
    { _gtvPaginationToken = Nothing,
      _gtvKey = pKey_
    }

-- | Specifies a @PaginationToken@ response value from a previous request to indicate that you want the next page of results. Leave this parameter empty in your initial request.
gtvPaginationToken :: Lens' GetTagValues (Maybe Text)
gtvPaginationToken = lens _gtvPaginationToken (\s a -> s {_gtvPaginationToken = a})

-- | Specifies the tag key for which you want to list all existing values that are currently used in the specified AWS Region for the calling AWS account.
gtvKey :: Lens' GetTagValues Text
gtvKey = lens _gtvKey (\s a -> s {_gtvKey = a})

instance AWSPager GetTagValues where
  page rq rs
    | stop (rs ^. gtvrrsPaginationToken) = Nothing
    | stop (rs ^. gtvrrsTagValues) = Nothing
    | otherwise =
      Just $
        rq
          & gtvPaginationToken .~ rs ^. gtvrrsPaginationToken

instance AWSRequest GetTagValues where
  type Rs GetTagValues = GetTagValuesResponse
  request = postJSON resourceGroupsTagging
  response =
    receiveJSON
      ( \s h x ->
          GetTagValuesResponse'
            <$> (x .?> "PaginationToken")
            <*> (x .?> "TagValues" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetTagValues

instance NFData GetTagValues

instance ToHeaders GetTagValues where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "ResourceGroupsTaggingAPI_20170126.GetTagValues" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetTagValues where
  toJSON GetTagValues' {..} =
    object
      ( catMaybes
          [ ("PaginationToken" .=) <$> _gtvPaginationToken,
            Just ("Key" .= _gtvKey)
          ]
      )

instance ToPath GetTagValues where
  toPath = const "/"

instance ToQuery GetTagValues where
  toQuery = const mempty

-- | /See:/ 'getTagValuesResponse' smart constructor.
data GetTagValuesResponse = GetTagValuesResponse'
  { _gtvrrsPaginationToken ::
      !(Maybe Text),
    _gtvrrsTagValues ::
      !(Maybe [Text]),
    _gtvrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetTagValuesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtvrrsPaginationToken' - A string that indicates that there is more data available than this response contains. To receive the next part of the response, specify this response value as the @PaginationToken@ value in the request for the next page.
--
-- * 'gtvrrsTagValues' - A list of all tag values for the specified key currently used in the specified AWS Region for the calling AWS account.
--
-- * 'gtvrrsResponseStatus' - -- | The response status code.
getTagValuesResponse ::
  -- | 'gtvrrsResponseStatus'
  Int ->
  GetTagValuesResponse
getTagValuesResponse pResponseStatus_ =
  GetTagValuesResponse'
    { _gtvrrsPaginationToken =
        Nothing,
      _gtvrrsTagValues = Nothing,
      _gtvrrsResponseStatus = pResponseStatus_
    }

-- | A string that indicates that there is more data available than this response contains. To receive the next part of the response, specify this response value as the @PaginationToken@ value in the request for the next page.
gtvrrsPaginationToken :: Lens' GetTagValuesResponse (Maybe Text)
gtvrrsPaginationToken = lens _gtvrrsPaginationToken (\s a -> s {_gtvrrsPaginationToken = a})

-- | A list of all tag values for the specified key currently used in the specified AWS Region for the calling AWS account.
gtvrrsTagValues :: Lens' GetTagValuesResponse [Text]
gtvrrsTagValues = lens _gtvrrsTagValues (\s a -> s {_gtvrrsTagValues = a}) . _Default . _Coerce

-- | -- | The response status code.
gtvrrsResponseStatus :: Lens' GetTagValuesResponse Int
gtvrrsResponseStatus = lens _gtvrrsResponseStatus (\s a -> s {_gtvrrsResponseStatus = a})

instance NFData GetTagValuesResponse
