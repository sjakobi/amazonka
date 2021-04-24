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
-- Module      : Network.AWS.CloudFormation.ListStackResources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns descriptions of all resources of the specified stack.
--
--
-- For deleted stacks, ListStackResources returns resource information for up to 90 days after the stack has been deleted.
--
--
-- This operation returns paginated results.
module Network.AWS.CloudFormation.ListStackResources
  ( -- * Creating a Request
    listStackResources,
    ListStackResources,

    -- * Request Lenses
    lsrNextToken,
    lsrStackName,

    -- * Destructuring the Response
    listStackResourcesResponse,
    ListStackResourcesResponse,

    -- * Response Lenses
    lsrrrsNextToken,
    lsrrrsStackResourceSummaries,
    lsrrrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the 'ListStackResource' action.
--
--
--
-- /See:/ 'listStackResources' smart constructor.
data ListStackResources = ListStackResources'
  { _lsrNextToken ::
      !(Maybe Text),
    _lsrStackName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListStackResources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrNextToken' - A string that identifies the next page of stack resources that you want to retrieve.
--
-- * 'lsrStackName' - The name or the unique stack ID that is associated with the stack, which are not always interchangeable:     * Running stacks: You can specify either the stack's name or its unique stack ID.     * Deleted stacks: You must specify the unique stack ID. Default: There is no default value.
listStackResources ::
  -- | 'lsrStackName'
  Text ->
  ListStackResources
listStackResources pStackName_ =
  ListStackResources'
    { _lsrNextToken = Nothing,
      _lsrStackName = pStackName_
    }

-- | A string that identifies the next page of stack resources that you want to retrieve.
lsrNextToken :: Lens' ListStackResources (Maybe Text)
lsrNextToken = lens _lsrNextToken (\s a -> s {_lsrNextToken = a})

-- | The name or the unique stack ID that is associated with the stack, which are not always interchangeable:     * Running stacks: You can specify either the stack's name or its unique stack ID.     * Deleted stacks: You must specify the unique stack ID. Default: There is no default value.
lsrStackName :: Lens' ListStackResources Text
lsrStackName = lens _lsrStackName (\s a -> s {_lsrStackName = a})

instance AWSPager ListStackResources where
  page rq rs
    | stop (rs ^. lsrrrsNextToken) = Nothing
    | stop (rs ^. lsrrrsStackResourceSummaries) = Nothing
    | otherwise =
      Just $ rq & lsrNextToken .~ rs ^. lsrrrsNextToken

instance AWSRequest ListStackResources where
  type
    Rs ListStackResources =
      ListStackResourcesResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "ListStackResourcesResult"
      ( \s h x ->
          ListStackResourcesResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "StackResourceSummaries" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListStackResources

instance NFData ListStackResources

instance ToHeaders ListStackResources where
  toHeaders = const mempty

instance ToPath ListStackResources where
  toPath = const "/"

instance ToQuery ListStackResources where
  toQuery ListStackResources' {..} =
    mconcat
      [ "Action" =: ("ListStackResources" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "NextToken" =: _lsrNextToken,
        "StackName" =: _lsrStackName
      ]

-- | The output for a 'ListStackResources' action.
--
--
--
-- /See:/ 'listStackResourcesResponse' smart constructor.
data ListStackResourcesResponse = ListStackResourcesResponse'
  { _lsrrrsNextToken ::
      !(Maybe Text),
    _lsrrrsStackResourceSummaries ::
      !( Maybe
           [StackResourceSummary]
       ),
    _lsrrrsResponseStatus ::
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

-- | Creates a value of 'ListStackResourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrrrsNextToken' - If the output exceeds 1 MB, a string that identifies the next page of stack resources. If no additional page exists, this value is null.
--
-- * 'lsrrrsStackResourceSummaries' - A list of @StackResourceSummary@ structures.
--
-- * 'lsrrrsResponseStatus' - -- | The response status code.
listStackResourcesResponse ::
  -- | 'lsrrrsResponseStatus'
  Int ->
  ListStackResourcesResponse
listStackResourcesResponse pResponseStatus_ =
  ListStackResourcesResponse'
    { _lsrrrsNextToken =
        Nothing,
      _lsrrrsStackResourceSummaries = Nothing,
      _lsrrrsResponseStatus = pResponseStatus_
    }

-- | If the output exceeds 1 MB, a string that identifies the next page of stack resources. If no additional page exists, this value is null.
lsrrrsNextToken :: Lens' ListStackResourcesResponse (Maybe Text)
lsrrrsNextToken = lens _lsrrrsNextToken (\s a -> s {_lsrrrsNextToken = a})

-- | A list of @StackResourceSummary@ structures.
lsrrrsStackResourceSummaries :: Lens' ListStackResourcesResponse [StackResourceSummary]
lsrrrsStackResourceSummaries = lens _lsrrrsStackResourceSummaries (\s a -> s {_lsrrrsStackResourceSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
lsrrrsResponseStatus :: Lens' ListStackResourcesResponse Int
lsrrrsResponseStatus = lens _lsrrrsResponseStatus (\s a -> s {_lsrrrsResponseStatus = a})

instance NFData ListStackResourcesResponse
