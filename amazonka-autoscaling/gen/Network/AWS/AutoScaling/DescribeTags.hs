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
-- Module      : Network.AWS.AutoScaling.DescribeTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified tags.
--
--
-- You can use filters to limit the results. For example, you can query for the tags for a specific Auto Scaling group. You can specify multiple values for a filter. A tag must match at least one of the specified values for it to be included in the results.
--
-- You can also specify multiple filters. The result includes information for a particular tag only if it matches all the filters. If there's no match, no special message is returned.
--
-- For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html Tagging Auto Scaling groups and instances> in the /Amazon EC2 Auto Scaling User Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.AutoScaling.DescribeTags
  ( -- * Creating a Request
    describeTags,
    DescribeTags,

    -- * Request Lenses
    dtNextToken,
    dtFilters,
    dtMaxRecords,

    -- * Destructuring the Response
    describeTagsResponse,
    DescribeTagsResponse,

    -- * Response Lenses
    dtrrsNextToken,
    dtrrsTags,
    dtrrsResponseStatus,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTags' smart constructor.
data DescribeTags = DescribeTags'
  { _dtNextToken ::
      !(Maybe Text),
    _dtFilters :: !(Maybe [Filter]),
    _dtMaxRecords :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dtFilters' - One or more filters to scope the tags to return. The maximum number of filters per filter type (for example, @auto-scaling-group@ ) is 1000.
--
-- * 'dtMaxRecords' - The maximum number of items to return with this call. The default value is @50@ and the maximum value is @100@ .
describeTags ::
  DescribeTags
describeTags =
  DescribeTags'
    { _dtNextToken = Nothing,
      _dtFilters = Nothing,
      _dtMaxRecords = Nothing
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dtNextToken :: Lens' DescribeTags (Maybe Text)
dtNextToken = lens _dtNextToken (\s a -> s {_dtNextToken = a})

-- | One or more filters to scope the tags to return. The maximum number of filters per filter type (for example, @auto-scaling-group@ ) is 1000.
dtFilters :: Lens' DescribeTags [Filter]
dtFilters = lens _dtFilters (\s a -> s {_dtFilters = a}) . _Default . _Coerce

-- | The maximum number of items to return with this call. The default value is @50@ and the maximum value is @100@ .
dtMaxRecords :: Lens' DescribeTags (Maybe Int)
dtMaxRecords = lens _dtMaxRecords (\s a -> s {_dtMaxRecords = a})

instance AWSPager DescribeTags where
  page rq rs
    | stop (rs ^. dtrrsNextToken) = Nothing
    | stop (rs ^. dtrrsTags) = Nothing
    | otherwise =
      Just $ rq & dtNextToken .~ rs ^. dtrrsNextToken

instance AWSRequest DescribeTags where
  type Rs DescribeTags = DescribeTagsResponse
  request = postQuery autoScaling
  response =
    receiveXMLWrapper
      "DescribeTagsResult"
      ( \s h x ->
          DescribeTagsResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "Tags" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTags

instance NFData DescribeTags

instance ToHeaders DescribeTags where
  toHeaders = const mempty

instance ToPath DescribeTags where
  toPath = const "/"

instance ToQuery DescribeTags where
  toQuery DescribeTags' {..} =
    mconcat
      [ "Action" =: ("DescribeTags" :: ByteString),
        "Version" =: ("2011-01-01" :: ByteString),
        "NextToken" =: _dtNextToken,
        "Filters"
          =: toQuery (toQueryList "member" <$> _dtFilters),
        "MaxRecords" =: _dtMaxRecords
      ]

-- | /See:/ 'describeTagsResponse' smart constructor.
data DescribeTagsResponse = DescribeTagsResponse'
  { _dtrrsNextToken ::
      !(Maybe Text),
    _dtrrsTags ::
      !(Maybe [TagDescription]),
    _dtrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrrsNextToken' - A string that indicates that the response contains more items than can be returned in a single response. To receive additional items, specify this string for the @NextToken@ value when requesting the next set of items. This value is null when there are no more items to return.
--
-- * 'dtrrsTags' - One or more tags.
--
-- * 'dtrrsResponseStatus' - -- | The response status code.
describeTagsResponse ::
  -- | 'dtrrsResponseStatus'
  Int ->
  DescribeTagsResponse
describeTagsResponse pResponseStatus_ =
  DescribeTagsResponse'
    { _dtrrsNextToken = Nothing,
      _dtrrsTags = Nothing,
      _dtrrsResponseStatus = pResponseStatus_
    }

-- | A string that indicates that the response contains more items than can be returned in a single response. To receive additional items, specify this string for the @NextToken@ value when requesting the next set of items. This value is null when there are no more items to return.
dtrrsNextToken :: Lens' DescribeTagsResponse (Maybe Text)
dtrrsNextToken = lens _dtrrsNextToken (\s a -> s {_dtrrsNextToken = a})

-- | One or more tags.
dtrrsTags :: Lens' DescribeTagsResponse [TagDescription]
dtrrsTags = lens _dtrrsTags (\s a -> s {_dtrrsTags = a}) . _Default . _Coerce

-- | -- | The response status code.
dtrrsResponseStatus :: Lens' DescribeTagsResponse Int
dtrrsResponseStatus = lens _dtrrsResponseStatus (\s a -> s {_dtrrsResponseStatus = a})

instance NFData DescribeTagsResponse
