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
-- Module      : Network.AWS.DAX.DescribeParameterGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of parameter group descriptions. If a parameter group name is specified, the list will contain only the descriptions for that group.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DAX.DescribeParameterGroups
  ( -- * Creating a Request
    describeParameterGroups,
    DescribeParameterGroups,

    -- * Request Lenses
    dpgNextToken,
    dpgMaxResults,
    dpgParameterGroupNames,

    -- * Destructuring the Response
    describeParameterGroupsResponse,
    DescribeParameterGroupsResponse,

    -- * Response Lenses
    dpgrrsNextToken,
    dpgrrsParameterGroups,
    dpgrrsResponseStatus,
  )
where

import Network.AWS.DAX.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeParameterGroups' smart constructor.
data DescribeParameterGroups = DescribeParameterGroups'
  { _dpgNextToken ::
      !(Maybe Text),
    _dpgMaxResults ::
      !(Maybe Int),
    _dpgParameterGroupNames ::
      !(Maybe [Text])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeParameterGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpgNextToken' - An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ .
--
-- * 'dpgMaxResults' - The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved. The value for @MaxResults@ must be between 20 and 100.
--
-- * 'dpgParameterGroupNames' - The names of the parameter groups.
describeParameterGroups ::
  DescribeParameterGroups
describeParameterGroups =
  DescribeParameterGroups'
    { _dpgNextToken = Nothing,
      _dpgMaxResults = Nothing,
      _dpgParameterGroupNames = Nothing
    }

-- | An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ .
dpgNextToken :: Lens' DescribeParameterGroups (Maybe Text)
dpgNextToken = lens _dpgNextToken (\s a -> s {_dpgNextToken = a})

-- | The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved. The value for @MaxResults@ must be between 20 and 100.
dpgMaxResults :: Lens' DescribeParameterGroups (Maybe Int)
dpgMaxResults = lens _dpgMaxResults (\s a -> s {_dpgMaxResults = a})

-- | The names of the parameter groups.
dpgParameterGroupNames :: Lens' DescribeParameterGroups [Text]
dpgParameterGroupNames = lens _dpgParameterGroupNames (\s a -> s {_dpgParameterGroupNames = a}) . _Default . _Coerce

instance AWSPager DescribeParameterGroups where
  page rq rs
    | stop (rs ^. dpgrrsNextToken) = Nothing
    | stop (rs ^. dpgrrsParameterGroups) = Nothing
    | otherwise =
      Just $ rq & dpgNextToken .~ rs ^. dpgrrsNextToken

instance AWSRequest DescribeParameterGroups where
  type
    Rs DescribeParameterGroups =
      DescribeParameterGroupsResponse
  request = postJSON dax
  response =
    receiveJSON
      ( \s h x ->
          DescribeParameterGroupsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ParameterGroups" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeParameterGroups

instance NFData DescribeParameterGroups

instance ToHeaders DescribeParameterGroups where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDAXV3.DescribeParameterGroups" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeParameterGroups where
  toJSON DescribeParameterGroups' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dpgNextToken,
            ("MaxResults" .=) <$> _dpgMaxResults,
            ("ParameterGroupNames" .=)
              <$> _dpgParameterGroupNames
          ]
      )

instance ToPath DescribeParameterGroups where
  toPath = const "/"

instance ToQuery DescribeParameterGroups where
  toQuery = const mempty

-- | /See:/ 'describeParameterGroupsResponse' smart constructor.
data DescribeParameterGroupsResponse = DescribeParameterGroupsResponse'
  { _dpgrrsNextToken ::
      !( Maybe
           Text
       ),
    _dpgrrsParameterGroups ::
      !( Maybe
           [ParameterGroup]
       ),
    _dpgrrsResponseStatus ::
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

-- | Creates a value of 'DescribeParameterGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpgrrsNextToken' - Provides an identifier to allow retrieval of paginated results.
--
-- * 'dpgrrsParameterGroups' - An array of parameter groups. Each element in the array represents one parameter group.
--
-- * 'dpgrrsResponseStatus' - -- | The response status code.
describeParameterGroupsResponse ::
  -- | 'dpgrrsResponseStatus'
  Int ->
  DescribeParameterGroupsResponse
describeParameterGroupsResponse pResponseStatus_ =
  DescribeParameterGroupsResponse'
    { _dpgrrsNextToken =
        Nothing,
      _dpgrrsParameterGroups = Nothing,
      _dpgrrsResponseStatus = pResponseStatus_
    }

-- | Provides an identifier to allow retrieval of paginated results.
dpgrrsNextToken :: Lens' DescribeParameterGroupsResponse (Maybe Text)
dpgrrsNextToken = lens _dpgrrsNextToken (\s a -> s {_dpgrrsNextToken = a})

-- | An array of parameter groups. Each element in the array represents one parameter group.
dpgrrsParameterGroups :: Lens' DescribeParameterGroupsResponse [ParameterGroup]
dpgrrsParameterGroups = lens _dpgrrsParameterGroups (\s a -> s {_dpgrrsParameterGroups = a}) . _Default . _Coerce

-- | -- | The response status code.
dpgrrsResponseStatus :: Lens' DescribeParameterGroupsResponse Int
dpgrrsResponseStatus = lens _dpgrrsResponseStatus (\s a -> s {_dpgrrsResponseStatus = a})

instance NFData DescribeParameterGroupsResponse
