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
-- Module      : Network.AWS.WorkSpaces.DescribeIPGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more of your IP access control groups.
--
--
--
-- This operation returns paginated results.
module Network.AWS.WorkSpaces.DescribeIPGroups
  ( -- * Creating a Request
    describeIPGroups,
    DescribeIPGroups,

    -- * Request Lenses
    dipgNextToken,
    dipgGroupIds,
    dipgMaxResults,

    -- * Destructuring the Response
    describeIPGroupsResponse,
    DescribeIPGroupsResponse,

    -- * Response Lenses
    digrirsNextToken,
    digrirsResult,
    digrirsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkSpaces.Types

-- | /See:/ 'describeIPGroups' smart constructor.
data DescribeIPGroups = DescribeIPGroups'
  { _dipgNextToken ::
      !(Maybe Text),
    _dipgGroupIds :: !(Maybe [Text]),
    _dipgMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeIPGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dipgNextToken' - If you received a @NextToken@ from a previous call that was paginated, provide this token to receive the next set of results.
--
-- * 'dipgGroupIds' - The identifiers of one or more IP access control groups.
--
-- * 'dipgMaxResults' - The maximum number of items to return.
describeIPGroups ::
  DescribeIPGroups
describeIPGroups =
  DescribeIPGroups'
    { _dipgNextToken = Nothing,
      _dipgGroupIds = Nothing,
      _dipgMaxResults = Nothing
    }

-- | If you received a @NextToken@ from a previous call that was paginated, provide this token to receive the next set of results.
dipgNextToken :: Lens' DescribeIPGroups (Maybe Text)
dipgNextToken = lens _dipgNextToken (\s a -> s {_dipgNextToken = a})

-- | The identifiers of one or more IP access control groups.
dipgGroupIds :: Lens' DescribeIPGroups [Text]
dipgGroupIds = lens _dipgGroupIds (\s a -> s {_dipgGroupIds = a}) . _Default . _Coerce

-- | The maximum number of items to return.
dipgMaxResults :: Lens' DescribeIPGroups (Maybe Natural)
dipgMaxResults = lens _dipgMaxResults (\s a -> s {_dipgMaxResults = a}) . mapping _Nat

instance AWSPager DescribeIPGroups where
  page rq rs
    | stop (rs ^. digrirsNextToken) = Nothing
    | stop (rs ^. digrirsResult) = Nothing
    | otherwise =
      Just $ rq & dipgNextToken .~ rs ^. digrirsNextToken

instance AWSRequest DescribeIPGroups where
  type Rs DescribeIPGroups = DescribeIPGroupsResponse
  request = postJSON workSpaces
  response =
    receiveJSON
      ( \s h x ->
          DescribeIPGroupsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Result" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeIPGroups

instance NFData DescribeIPGroups

instance ToHeaders DescribeIPGroups where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("WorkspacesService.DescribeIpGroups" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeIPGroups where
  toJSON DescribeIPGroups' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dipgNextToken,
            ("GroupIds" .=) <$> _dipgGroupIds,
            ("MaxResults" .=) <$> _dipgMaxResults
          ]
      )

instance ToPath DescribeIPGroups where
  toPath = const "/"

instance ToQuery DescribeIPGroups where
  toQuery = const mempty

-- | /See:/ 'describeIPGroupsResponse' smart constructor.
data DescribeIPGroupsResponse = DescribeIPGroupsResponse'
  { _digrirsNextToken ::
      !(Maybe Text),
    _digrirsResult ::
      !( Maybe
           [WorkspacesIPGroup]
       ),
    _digrirsResponseStatus ::
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

-- | Creates a value of 'DescribeIPGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'digrirsNextToken' - The token to use to retrieve the next set of results, or null if no more results are available.
--
-- * 'digrirsResult' - Information about the IP access control groups.
--
-- * 'digrirsResponseStatus' - -- | The response status code.
describeIPGroupsResponse ::
  -- | 'digrirsResponseStatus'
  Int ->
  DescribeIPGroupsResponse
describeIPGroupsResponse pResponseStatus_ =
  DescribeIPGroupsResponse'
    { _digrirsNextToken =
        Nothing,
      _digrirsResult = Nothing,
      _digrirsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next set of results, or null if no more results are available.
digrirsNextToken :: Lens' DescribeIPGroupsResponse (Maybe Text)
digrirsNextToken = lens _digrirsNextToken (\s a -> s {_digrirsNextToken = a})

-- | Information about the IP access control groups.
digrirsResult :: Lens' DescribeIPGroupsResponse [WorkspacesIPGroup]
digrirsResult = lens _digrirsResult (\s a -> s {_digrirsResult = a}) . _Default . _Coerce

-- | -- | The response status code.
digrirsResponseStatus :: Lens' DescribeIPGroupsResponse Int
digrirsResponseStatus = lens _digrirsResponseStatus (\s a -> s {_digrirsResponseStatus = a})

instance NFData DescribeIPGroupsResponse
