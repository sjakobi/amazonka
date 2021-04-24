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
-- Module      : Network.AWS.CloudFormation.DescribeStacks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the description for the specified stack; if no stack name was specified, then it returns the description for all the stacks created.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudFormation.DescribeStacks
  ( -- * Creating a Request
    describeStacks,
    DescribeStacks,

    -- * Request Lenses
    dsNextToken,
    dsStackName,

    -- * Destructuring the Response
    describeStacksResponse,
    DescribeStacksResponse,

    -- * Response Lenses
    dsrrsNextToken,
    dsrrsStacks,
    dsrrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for 'DescribeStacks' action.
--
--
--
-- /See:/ 'describeStacks' smart constructor.
data DescribeStacks = DescribeStacks'
  { _dsNextToken ::
      !(Maybe Text),
    _dsStackName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeStacks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsNextToken' - A string that identifies the next page of stacks that you want to retrieve.
--
-- * 'dsStackName' - The name or the unique stack ID that is associated with the stack, which are not always interchangeable:     * Running stacks: You can specify either the stack's name or its unique stack ID.     * Deleted stacks: You must specify the unique stack ID. Default: There is no default value.
describeStacks ::
  DescribeStacks
describeStacks =
  DescribeStacks'
    { _dsNextToken = Nothing,
      _dsStackName = Nothing
    }

-- | A string that identifies the next page of stacks that you want to retrieve.
dsNextToken :: Lens' DescribeStacks (Maybe Text)
dsNextToken = lens _dsNextToken (\s a -> s {_dsNextToken = a})

-- | The name or the unique stack ID that is associated with the stack, which are not always interchangeable:     * Running stacks: You can specify either the stack's name or its unique stack ID.     * Deleted stacks: You must specify the unique stack ID. Default: There is no default value.
dsStackName :: Lens' DescribeStacks (Maybe Text)
dsStackName = lens _dsStackName (\s a -> s {_dsStackName = a})

instance AWSPager DescribeStacks where
  page rq rs
    | stop (rs ^. dsrrsNextToken) = Nothing
    | stop (rs ^. dsrrsStacks) = Nothing
    | otherwise =
      Just $ rq & dsNextToken .~ rs ^. dsrrsNextToken

instance AWSRequest DescribeStacks where
  type Rs DescribeStacks = DescribeStacksResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "DescribeStacksResult"
      ( \s h x ->
          DescribeStacksResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "Stacks" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeStacks

instance NFData DescribeStacks

instance ToHeaders DescribeStacks where
  toHeaders = const mempty

instance ToPath DescribeStacks where
  toPath = const "/"

instance ToQuery DescribeStacks where
  toQuery DescribeStacks' {..} =
    mconcat
      [ "Action" =: ("DescribeStacks" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "NextToken" =: _dsNextToken,
        "StackName" =: _dsStackName
      ]

-- | The output for a 'DescribeStacks' action.
--
--
--
-- /See:/ 'describeStacksResponse' smart constructor.
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
-- * 'dsrrsNextToken' - If the output exceeds 1 MB in size, a string that identifies the next page of stacks. If no additional page exists, this value is null.
--
-- * 'dsrrsStacks' - A list of stack structures.
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

-- | If the output exceeds 1 MB in size, a string that identifies the next page of stacks. If no additional page exists, this value is null.
dsrrsNextToken :: Lens' DescribeStacksResponse (Maybe Text)
dsrrsNextToken = lens _dsrrsNextToken (\s a -> s {_dsrrsNextToken = a})

-- | A list of stack structures.
dsrrsStacks :: Lens' DescribeStacksResponse [Stack]
dsrrsStacks = lens _dsrrsStacks (\s a -> s {_dsrrsStacks = a}) . _Default . _Coerce

-- | -- | The response status code.
dsrrsResponseStatus :: Lens' DescribeStacksResponse Int
dsrrsResponseStatus = lens _dsrrsResponseStatus (\s a -> s {_dsrrsResponseStatus = a})

instance NFData DescribeStacksResponse
