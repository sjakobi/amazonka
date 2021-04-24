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
-- Module      : Network.AWS.Connect.ListInstanceAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Returns a paginated list of all attribute types for the given instance.
--
--
-- This operation returns paginated results.
module Network.AWS.Connect.ListInstanceAttributes
  ( -- * Creating a Request
    listInstanceAttributes,
    ListInstanceAttributes,

    -- * Request Lenses
    liaNextToken,
    liaMaxResults,
    liaInstanceId,

    -- * Destructuring the Response
    listInstanceAttributesResponse,
    ListInstanceAttributesResponse,

    -- * Response Lenses
    liarrsNextToken,
    liarrsAttributes,
    liarrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listInstanceAttributes' smart constructor.
data ListInstanceAttributes = ListInstanceAttributes'
  { _liaNextToken ::
      !(Maybe Text),
    _liaMaxResults ::
      !(Maybe Nat),
    _liaInstanceId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListInstanceAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liaNextToken' - The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
--
-- * 'liaMaxResults' - The maximum number of results to return per page.
--
-- * 'liaInstanceId' - The identifier of the Amazon Connect instance.
listInstanceAttributes ::
  -- | 'liaInstanceId'
  Text ->
  ListInstanceAttributes
listInstanceAttributes pInstanceId_ =
  ListInstanceAttributes'
    { _liaNextToken = Nothing,
      _liaMaxResults = Nothing,
      _liaInstanceId = pInstanceId_
    }

-- | The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
liaNextToken :: Lens' ListInstanceAttributes (Maybe Text)
liaNextToken = lens _liaNextToken (\s a -> s {_liaNextToken = a})

-- | The maximum number of results to return per page.
liaMaxResults :: Lens' ListInstanceAttributes (Maybe Natural)
liaMaxResults = lens _liaMaxResults (\s a -> s {_liaMaxResults = a}) . mapping _Nat

-- | The identifier of the Amazon Connect instance.
liaInstanceId :: Lens' ListInstanceAttributes Text
liaInstanceId = lens _liaInstanceId (\s a -> s {_liaInstanceId = a})

instance AWSPager ListInstanceAttributes where
  page rq rs
    | stop (rs ^. liarrsNextToken) = Nothing
    | stop (rs ^. liarrsAttributes) = Nothing
    | otherwise =
      Just $ rq & liaNextToken .~ rs ^. liarrsNextToken

instance AWSRequest ListInstanceAttributes where
  type
    Rs ListInstanceAttributes =
      ListInstanceAttributesResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          ListInstanceAttributesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Attributes" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListInstanceAttributes

instance NFData ListInstanceAttributes

instance ToHeaders ListInstanceAttributes where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListInstanceAttributes where
  toPath ListInstanceAttributes' {..} =
    mconcat
      ["/instance/", toBS _liaInstanceId, "/attributes"]

instance ToQuery ListInstanceAttributes where
  toQuery ListInstanceAttributes' {..} =
    mconcat
      [ "nextToken" =: _liaNextToken,
        "maxResults" =: _liaMaxResults
      ]

-- | /See:/ 'listInstanceAttributesResponse' smart constructor.
data ListInstanceAttributesResponse = ListInstanceAttributesResponse'
  { _liarrsNextToken ::
      !( Maybe
           Text
       ),
    _liarrsAttributes ::
      !( Maybe
           [Attribute]
       ),
    _liarrsResponseStatus ::
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

-- | Creates a value of 'ListInstanceAttributesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liarrsNextToken' - If there are additional results, this is the token for the next set of results.
--
-- * 'liarrsAttributes' - The attribute types.
--
-- * 'liarrsResponseStatus' - -- | The response status code.
listInstanceAttributesResponse ::
  -- | 'liarrsResponseStatus'
  Int ->
  ListInstanceAttributesResponse
listInstanceAttributesResponse pResponseStatus_ =
  ListInstanceAttributesResponse'
    { _liarrsNextToken =
        Nothing,
      _liarrsAttributes = Nothing,
      _liarrsResponseStatus = pResponseStatus_
    }

-- | If there are additional results, this is the token for the next set of results.
liarrsNextToken :: Lens' ListInstanceAttributesResponse (Maybe Text)
liarrsNextToken = lens _liarrsNextToken (\s a -> s {_liarrsNextToken = a})

-- | The attribute types.
liarrsAttributes :: Lens' ListInstanceAttributesResponse [Attribute]
liarrsAttributes = lens _liarrsAttributes (\s a -> s {_liarrsAttributes = a}) . _Default . _Coerce

-- | -- | The response status code.
liarrsResponseStatus :: Lens' ListInstanceAttributesResponse Int
liarrsResponseStatus = lens _liarrsResponseStatus (\s a -> s {_liarrsResponseStatus = a})

instance NFData ListInstanceAttributesResponse
