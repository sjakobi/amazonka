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
-- Module      : Network.AWS.DAX.DescribeSubnetGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of subnet group descriptions. If a subnet group name is specified, the list will contain only the description of that group.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DAX.DescribeSubnetGroups
  ( -- * Creating a Request
    describeSubnetGroups,
    DescribeSubnetGroups,

    -- * Request Lenses
    dsgNextToken,
    dsgMaxResults,
    dsgSubnetGroupNames,

    -- * Destructuring the Response
    describeSubnetGroupsResponse,
    DescribeSubnetGroupsResponse,

    -- * Response Lenses
    desrsSubnetGroups,
    desrsNextToken,
    desrsResponseStatus,
  )
where

import Network.AWS.DAX.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeSubnetGroups' smart constructor.
data DescribeSubnetGroups = DescribeSubnetGroups'
  { _dsgNextToken ::
      !(Maybe Text),
    _dsgMaxResults ::
      !(Maybe Int),
    _dsgSubnetGroupNames ::
      !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeSubnetGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsgNextToken' - An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ .
--
-- * 'dsgMaxResults' - The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved. The value for @MaxResults@ must be between 20 and 100.
--
-- * 'dsgSubnetGroupNames' - The name of the subnet group.
describeSubnetGroups ::
  DescribeSubnetGroups
describeSubnetGroups =
  DescribeSubnetGroups'
    { _dsgNextToken = Nothing,
      _dsgMaxResults = Nothing,
      _dsgSubnetGroupNames = Nothing
    }

-- | An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ .
dsgNextToken :: Lens' DescribeSubnetGroups (Maybe Text)
dsgNextToken = lens _dsgNextToken (\s a -> s {_dsgNextToken = a})

-- | The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved. The value for @MaxResults@ must be between 20 and 100.
dsgMaxResults :: Lens' DescribeSubnetGroups (Maybe Int)
dsgMaxResults = lens _dsgMaxResults (\s a -> s {_dsgMaxResults = a})

-- | The name of the subnet group.
dsgSubnetGroupNames :: Lens' DescribeSubnetGroups [Text]
dsgSubnetGroupNames = lens _dsgSubnetGroupNames (\s a -> s {_dsgSubnetGroupNames = a}) . _Default . _Coerce

instance AWSPager DescribeSubnetGroups where
  page rq rs
    | stop (rs ^. desrsNextToken) = Nothing
    | stop (rs ^. desrsSubnetGroups) = Nothing
    | otherwise =
      Just $ rq & dsgNextToken .~ rs ^. desrsNextToken

instance AWSRequest DescribeSubnetGroups where
  type
    Rs DescribeSubnetGroups =
      DescribeSubnetGroupsResponse
  request = postJSON dax
  response =
    receiveJSON
      ( \s h x ->
          DescribeSubnetGroupsResponse'
            <$> (x .?> "SubnetGroups" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeSubnetGroups

instance NFData DescribeSubnetGroups

instance ToHeaders DescribeSubnetGroups where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonDAXV3.DescribeSubnetGroups" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeSubnetGroups where
  toJSON DescribeSubnetGroups' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dsgNextToken,
            ("MaxResults" .=) <$> _dsgMaxResults,
            ("SubnetGroupNames" .=) <$> _dsgSubnetGroupNames
          ]
      )

instance ToPath DescribeSubnetGroups where
  toPath = const "/"

instance ToQuery DescribeSubnetGroups where
  toQuery = const mempty

-- | /See:/ 'describeSubnetGroupsResponse' smart constructor.
data DescribeSubnetGroupsResponse = DescribeSubnetGroupsResponse'
  { _desrsSubnetGroups ::
      !( Maybe
           [SubnetGroup]
       ),
    _desrsNextToken ::
      !(Maybe Text),
    _desrsResponseStatus ::
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

-- | Creates a value of 'DescribeSubnetGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsSubnetGroups' - An array of subnet groups. Each element in the array represents a single subnet group.
--
-- * 'desrsNextToken' - Provides an identifier to allow retrieval of paginated results.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeSubnetGroupsResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeSubnetGroupsResponse
describeSubnetGroupsResponse pResponseStatus_ =
  DescribeSubnetGroupsResponse'
    { _desrsSubnetGroups =
        Nothing,
      _desrsNextToken = Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | An array of subnet groups. Each element in the array represents a single subnet group.
desrsSubnetGroups :: Lens' DescribeSubnetGroupsResponse [SubnetGroup]
desrsSubnetGroups = lens _desrsSubnetGroups (\s a -> s {_desrsSubnetGroups = a}) . _Default . _Coerce

-- | Provides an identifier to allow retrieval of paginated results.
desrsNextToken :: Lens' DescribeSubnetGroupsResponse (Maybe Text)
desrsNextToken = lens _desrsNextToken (\s a -> s {_desrsNextToken = a})

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeSubnetGroupsResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeSubnetGroupsResponse
