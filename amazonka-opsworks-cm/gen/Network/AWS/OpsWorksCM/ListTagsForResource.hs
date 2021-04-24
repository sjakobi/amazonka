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
-- Module      : Network.AWS.OpsWorksCM.ListTagsForResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of tags that are applied to the specified AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise servers or backups.
--
--
--
-- This operation returns paginated results.
module Network.AWS.OpsWorksCM.ListTagsForResource
  ( -- * Creating a Request
    listTagsForResource,
    ListTagsForResource,

    -- * Request Lenses
    ltfrNextToken,
    ltfrMaxResults,
    ltfrResourceARN,

    -- * Destructuring the Response
    listTagsForResourceResponse,
    ListTagsForResourceResponse,

    -- * Response Lenses
    ltfrrrsNextToken,
    ltfrrrsTags,
    ltfrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorksCM.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTagsForResource' smart constructor.
data ListTagsForResource = ListTagsForResource'
  { _ltfrNextToken ::
      !(Maybe Text),
    _ltfrMaxResults :: !(Maybe Nat),
    _ltfrResourceARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTagsForResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltfrNextToken' - NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call @ListTagsForResource@ again, and assign the token from the previous results as the value of the @nextToken@ parameter. If there are no more results, the response object's @nextToken@ parameter value is @null@ . Setting a @nextToken@ value that was not returned in your previous results causes an @InvalidNextTokenException@ to occur.
--
-- * 'ltfrMaxResults' - To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a @NextToken@ value that you can assign to the @NextToken@ request parameter to get the next set of results.
--
-- * 'ltfrResourceARN' - The Amazon Resource Number (ARN) of an AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise server for which you want to show applied tags. For example, @arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE@ .
listTagsForResource ::
  -- | 'ltfrResourceARN'
  Text ->
  ListTagsForResource
listTagsForResource pResourceARN_ =
  ListTagsForResource'
    { _ltfrNextToken = Nothing,
      _ltfrMaxResults = Nothing,
      _ltfrResourceARN = pResourceARN_
    }

-- | NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call @ListTagsForResource@ again, and assign the token from the previous results as the value of the @nextToken@ parameter. If there are no more results, the response object's @nextToken@ parameter value is @null@ . Setting a @nextToken@ value that was not returned in your previous results causes an @InvalidNextTokenException@ to occur.
ltfrNextToken :: Lens' ListTagsForResource (Maybe Text)
ltfrNextToken = lens _ltfrNextToken (\s a -> s {_ltfrNextToken = a})

-- | To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a @NextToken@ value that you can assign to the @NextToken@ request parameter to get the next set of results.
ltfrMaxResults :: Lens' ListTagsForResource (Maybe Natural)
ltfrMaxResults = lens _ltfrMaxResults (\s a -> s {_ltfrMaxResults = a}) . mapping _Nat

-- | The Amazon Resource Number (ARN) of an AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise server for which you want to show applied tags. For example, @arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE@ .
ltfrResourceARN :: Lens' ListTagsForResource Text
ltfrResourceARN = lens _ltfrResourceARN (\s a -> s {_ltfrResourceARN = a})

instance AWSPager ListTagsForResource where
  page rq rs
    | stop (rs ^. ltfrrrsNextToken) = Nothing
    | stop (rs ^. ltfrrrsTags) = Nothing
    | otherwise =
      Just $ rq & ltfrNextToken .~ rs ^. ltfrrrsNextToken

instance AWSRequest ListTagsForResource where
  type
    Rs ListTagsForResource =
      ListTagsForResourceResponse
  request = postJSON opsWorksCM
  response =
    receiveJSON
      ( \s h x ->
          ListTagsForResourceResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Tags" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTagsForResource

instance NFData ListTagsForResource

instance ToHeaders ListTagsForResource where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OpsWorksCM_V2016_11_01.ListTagsForResource" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTagsForResource where
  toJSON ListTagsForResource' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ltfrNextToken,
            ("MaxResults" .=) <$> _ltfrMaxResults,
            Just ("ResourceArn" .= _ltfrResourceARN)
          ]
      )

instance ToPath ListTagsForResource where
  toPath = const "/"

instance ToQuery ListTagsForResource where
  toQuery = const mempty

-- | /See:/ 'listTagsForResourceResponse' smart constructor.
data ListTagsForResourceResponse = ListTagsForResourceResponse'
  { _ltfrrrsNextToken ::
      !(Maybe Text),
    _ltfrrrsTags ::
      !(Maybe [Tag]),
    _ltfrrrsResponseStatus ::
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

-- | Creates a value of 'ListTagsForResourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltfrrrsNextToken' - A token that you can use as the value of @NextToken@ in subsequent calls to the API to show more results.
--
-- * 'ltfrrrsTags' - Tags that have been applied to the resource.
--
-- * 'ltfrrrsResponseStatus' - -- | The response status code.
listTagsForResourceResponse ::
  -- | 'ltfrrrsResponseStatus'
  Int ->
  ListTagsForResourceResponse
listTagsForResourceResponse pResponseStatus_ =
  ListTagsForResourceResponse'
    { _ltfrrrsNextToken =
        Nothing,
      _ltfrrrsTags = Nothing,
      _ltfrrrsResponseStatus = pResponseStatus_
    }

-- | A token that you can use as the value of @NextToken@ in subsequent calls to the API to show more results.
ltfrrrsNextToken :: Lens' ListTagsForResourceResponse (Maybe Text)
ltfrrrsNextToken = lens _ltfrrrsNextToken (\s a -> s {_ltfrrrsNextToken = a})

-- | Tags that have been applied to the resource.
ltfrrrsTags :: Lens' ListTagsForResourceResponse [Tag]
ltfrrrsTags = lens _ltfrrrsTags (\s a -> s {_ltfrrrsTags = a}) . _Default . _Coerce

-- | -- | The response status code.
ltfrrrsResponseStatus :: Lens' ListTagsForResourceResponse Int
ltfrrrsResponseStatus = lens _ltfrrrsResponseStatus (\s a -> s {_ltfrrrsResponseStatus = a})

instance NFData ListTagsForResourceResponse
