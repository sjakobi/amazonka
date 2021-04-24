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
-- Module      : Network.AWS.CloudFormation.ListStackSetOperations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns summary information about operations performed on a stack set.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudFormation.ListStackSetOperations
  ( -- * Creating a Request
    listStackSetOperations,
    ListStackSetOperations,

    -- * Request Lenses
    lssoNextToken,
    lssoMaxResults,
    lssoCallAs,
    lssoStackSetName,

    -- * Destructuring the Response
    listStackSetOperationsResponse,
    ListStackSetOperationsResponse,

    -- * Response Lenses
    lssorrsNextToken,
    lssorrsSummaries,
    lssorrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listStackSetOperations' smart constructor.
data ListStackSetOperations = ListStackSetOperations'
  { _lssoNextToken ::
      !(Maybe Text),
    _lssoMaxResults ::
      !(Maybe Nat),
    _lssoCallAs ::
      !(Maybe CallAs),
    _lssoStackSetName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListStackSetOperations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lssoNextToken' - If the previous paginated request didn't return all of the remaining results, the response object's @NextToken@ parameter value is set to a token. To retrieve the next set of results, call @ListStackSetOperations@ again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, the previous response object's @NextToken@ parameter is set to @null@ .
--
-- * 'lssoMaxResults' - The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a @NextToken@ value that you can assign to the @NextToken@ request parameter to get the next set of results.
--
-- * 'lssoCallAs' - [Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * If you are signed in to the management account, specify @SELF@ .     * If you are signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated administrator in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ .
--
-- * 'lssoStackSetName' - The name or unique ID of the stack set that you want to get operation summaries for.
listStackSetOperations ::
  -- | 'lssoStackSetName'
  Text ->
  ListStackSetOperations
listStackSetOperations pStackSetName_ =
  ListStackSetOperations'
    { _lssoNextToken = Nothing,
      _lssoMaxResults = Nothing,
      _lssoCallAs = Nothing,
      _lssoStackSetName = pStackSetName_
    }

-- | If the previous paginated request didn't return all of the remaining results, the response object's @NextToken@ parameter value is set to a token. To retrieve the next set of results, call @ListStackSetOperations@ again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, the previous response object's @NextToken@ parameter is set to @null@ .
lssoNextToken :: Lens' ListStackSetOperations (Maybe Text)
lssoNextToken = lens _lssoNextToken (\s a -> s {_lssoNextToken = a})

-- | The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a @NextToken@ value that you can assign to the @NextToken@ request parameter to get the next set of results.
lssoMaxResults :: Lens' ListStackSetOperations (Maybe Natural)
lssoMaxResults = lens _lssoMaxResults (\s a -> s {_lssoMaxResults = a}) . mapping _Nat

-- | [Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * If you are signed in to the management account, specify @SELF@ .     * If you are signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated administrator in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ .
lssoCallAs :: Lens' ListStackSetOperations (Maybe CallAs)
lssoCallAs = lens _lssoCallAs (\s a -> s {_lssoCallAs = a})

-- | The name or unique ID of the stack set that you want to get operation summaries for.
lssoStackSetName :: Lens' ListStackSetOperations Text
lssoStackSetName = lens _lssoStackSetName (\s a -> s {_lssoStackSetName = a})

instance AWSPager ListStackSetOperations where
  page rq rs
    | stop (rs ^. lssorrsNextToken) = Nothing
    | stop (rs ^. lssorrsSummaries) = Nothing
    | otherwise =
      Just $ rq & lssoNextToken .~ rs ^. lssorrsNextToken

instance AWSRequest ListStackSetOperations where
  type
    Rs ListStackSetOperations =
      ListStackSetOperationsResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "ListStackSetOperationsResult"
      ( \s h x ->
          ListStackSetOperationsResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "Summaries" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListStackSetOperations

instance NFData ListStackSetOperations

instance ToHeaders ListStackSetOperations where
  toHeaders = const mempty

instance ToPath ListStackSetOperations where
  toPath = const "/"

instance ToQuery ListStackSetOperations where
  toQuery ListStackSetOperations' {..} =
    mconcat
      [ "Action"
          =: ("ListStackSetOperations" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "NextToken" =: _lssoNextToken,
        "MaxResults" =: _lssoMaxResults,
        "CallAs" =: _lssoCallAs,
        "StackSetName" =: _lssoStackSetName
      ]

-- | /See:/ 'listStackSetOperationsResponse' smart constructor.
data ListStackSetOperationsResponse = ListStackSetOperationsResponse'
  { _lssorrsNextToken ::
      !( Maybe
           Text
       ),
    _lssorrsSummaries ::
      !( Maybe
           [StackSetOperationSummary]
       ),
    _lssorrsResponseStatus ::
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

-- | Creates a value of 'ListStackSetOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lssorrsNextToken' - If the request doesn't return all results, @NextToken@ is set to a token. To retrieve the next set of results, call @ListOperationResults@ again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, @NextToken@ is set to @null@ .
--
-- * 'lssorrsSummaries' - A list of @StackSetOperationSummary@ structures that contain summary information about operations for the specified stack set.
--
-- * 'lssorrsResponseStatus' - -- | The response status code.
listStackSetOperationsResponse ::
  -- | 'lssorrsResponseStatus'
  Int ->
  ListStackSetOperationsResponse
listStackSetOperationsResponse pResponseStatus_ =
  ListStackSetOperationsResponse'
    { _lssorrsNextToken =
        Nothing,
      _lssorrsSummaries = Nothing,
      _lssorrsResponseStatus = pResponseStatus_
    }

-- | If the request doesn't return all results, @NextToken@ is set to a token. To retrieve the next set of results, call @ListOperationResults@ again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, @NextToken@ is set to @null@ .
lssorrsNextToken :: Lens' ListStackSetOperationsResponse (Maybe Text)
lssorrsNextToken = lens _lssorrsNextToken (\s a -> s {_lssorrsNextToken = a})

-- | A list of @StackSetOperationSummary@ structures that contain summary information about operations for the specified stack set.
lssorrsSummaries :: Lens' ListStackSetOperationsResponse [StackSetOperationSummary]
lssorrsSummaries = lens _lssorrsSummaries (\s a -> s {_lssorrsSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
lssorrsResponseStatus :: Lens' ListStackSetOperationsResponse Int
lssorrsResponseStatus = lens _lssorrsResponseStatus (\s a -> s {_lssorrsResponseStatus = a})

instance NFData ListStackSetOperationsResponse
