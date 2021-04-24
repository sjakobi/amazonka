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
-- Module      : Network.AWS.AppStream.DescribeStacks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list that describes one or more specified stacks, if the stack names are provided. Otherwise, all stacks in the account are described.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AppStream.DescribeStacks
  ( -- * Creating a Request
    describeStacks,
    DescribeStacks,

    -- * Request Lenses
    dNames,
    dNextToken,

    -- * Destructuring the Response
    describeStacksResponse,
    DescribeStacksResponse,

    -- * Response Lenses
    dsrrsNextToken,
    dsrrsStacks,
    dsrrsResponseStatus,
  )
where

import Network.AWS.AppStream.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeStacks' smart constructor.
data DescribeStacks = DescribeStacks'
  { _dNames ::
      !(Maybe [Text]),
    _dNextToken :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeStacks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dNames' - The names of the stacks to describe.
--
-- * 'dNextToken' - The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
describeStacks ::
  DescribeStacks
describeStacks =
  DescribeStacks'
    { _dNames = Nothing,
      _dNextToken = Nothing
    }

-- | The names of the stacks to describe.
dNames :: Lens' DescribeStacks [Text]
dNames = lens _dNames (\s a -> s {_dNames = a}) . _Default . _Coerce

-- | The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
dNextToken :: Lens' DescribeStacks (Maybe Text)
dNextToken = lens _dNextToken (\s a -> s {_dNextToken = a})

instance AWSPager DescribeStacks where
  page rq rs
    | stop (rs ^. dsrrsNextToken) = Nothing
    | stop (rs ^. dsrrsStacks) = Nothing
    | otherwise =
      Just $ rq & dNextToken .~ rs ^. dsrrsNextToken

instance AWSRequest DescribeStacks where
  type Rs DescribeStacks = DescribeStacksResponse
  request = postJSON appStream
  response =
    receiveJSON
      ( \s h x ->
          DescribeStacksResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Stacks" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeStacks

instance NFData DescribeStacks

instance ToHeaders DescribeStacks where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "PhotonAdminProxyService.DescribeStacks" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeStacks where
  toJSON DescribeStacks' {..} =
    object
      ( catMaybes
          [ ("Names" .=) <$> _dNames,
            ("NextToken" .=) <$> _dNextToken
          ]
      )

instance ToPath DescribeStacks where
  toPath = const "/"

instance ToQuery DescribeStacks where
  toQuery = const mempty

-- | /See:/ 'describeStacksResponse' smart constructor.
data DescribeStacksResponse = DescribeStacksResponse'
  { _dsrrsNextToken ::
      !(Maybe Text),
    _dsrrsStacks ::
      !(Maybe [Stack]),
    _dsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeStacksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrrsNextToken' - The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
--
-- * 'dsrrsStacks' - Information about the stacks.
--
-- * 'dsrrsResponseStatus' - -- | The response status code.
describeStacksResponse ::
  -- | 'dsrrsResponseStatus'
  Int ->
  DescribeStacksResponse
describeStacksResponse pResponseStatus_ =
  DescribeStacksResponse'
    { _dsrrsNextToken = Nothing,
      _dsrrsStacks = Nothing,
      _dsrrsResponseStatus = pResponseStatus_
    }

-- | The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
dsrrsNextToken :: Lens' DescribeStacksResponse (Maybe Text)
dsrrsNextToken = lens _dsrrsNextToken (\s a -> s {_dsrrsNextToken = a})

-- | Information about the stacks.
dsrrsStacks :: Lens' DescribeStacksResponse [Stack]
dsrrsStacks = lens _dsrrsStacks (\s a -> s {_dsrrsStacks = a}) . _Default . _Coerce

-- | -- | The response status code.
dsrrsResponseStatus :: Lens' DescribeStacksResponse Int
dsrrsResponseStatus = lens _dsrrsResponseStatus (\s a -> s {_dsrrsResponseStatus = a})

instance NFData DescribeStacksResponse
