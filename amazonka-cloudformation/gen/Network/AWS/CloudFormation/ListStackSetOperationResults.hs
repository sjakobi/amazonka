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
-- Module      : Network.AWS.CloudFormation.ListStackSetOperationResults
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns summary information about the results of a stack set operation.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudFormation.ListStackSetOperationResults
  ( -- * Creating a Request
    listStackSetOperationResults,
    ListStackSetOperationResults,

    -- * Request Lenses
    lssorNextToken,
    lssorMaxResults,
    lssorCallAs,
    lssorStackSetName,
    lssorOperationId,

    -- * Destructuring the Response
    listStackSetOperationResultsResponse,
    ListStackSetOperationResultsResponse,

    -- * Response Lenses
    lssorrrsNextToken,
    lssorrrsSummaries,
    lssorrrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listStackSetOperationResults' smart constructor.
data ListStackSetOperationResults = ListStackSetOperationResults'
  { _lssorNextToken ::
      !(Maybe Text),
    _lssorMaxResults ::
      !(Maybe Nat),
    _lssorCallAs ::
      !( Maybe
           CallAs
       ),
    _lssorStackSetName ::
      !Text,
    _lssorOperationId ::
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

-- | Creates a value of 'ListStackSetOperationResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lssorNextToken' - If the previous request didn't return all of the remaining results, the response object's @NextToken@ parameter value is set to a token. To retrieve the next set of results, call @ListStackSetOperationResults@ again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, the previous response object's @NextToken@ parameter is set to @null@ .
--
-- * 'lssorMaxResults' - The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a @NextToken@ value that you can assign to the @NextToken@ request parameter to get the next set of results.
--
-- * 'lssorCallAs' - [Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * If you are signed in to the management account, specify @SELF@ .     * If you are signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated administrator in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ .
--
-- * 'lssorStackSetName' - The name or unique ID of the stack set that you want to get operation results for.
--
-- * 'lssorOperationId' - The ID of the stack set operation.
listStackSetOperationResults ::
  -- | 'lssorStackSetName'
  Text ->
  -- | 'lssorOperationId'
  Text ->
  ListStackSetOperationResults
listStackSetOperationResults
  pStackSetName_
  pOperationId_ =
    ListStackSetOperationResults'
      { _lssorNextToken =
          Nothing,
        _lssorMaxResults = Nothing,
        _lssorCallAs = Nothing,
        _lssorStackSetName = pStackSetName_,
        _lssorOperationId = pOperationId_
      }

-- | If the previous request didn't return all of the remaining results, the response object's @NextToken@ parameter value is set to a token. To retrieve the next set of results, call @ListStackSetOperationResults@ again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, the previous response object's @NextToken@ parameter is set to @null@ .
lssorNextToken :: Lens' ListStackSetOperationResults (Maybe Text)
lssorNextToken = lens _lssorNextToken (\s a -> s {_lssorNextToken = a})

-- | The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a @NextToken@ value that you can assign to the @NextToken@ request parameter to get the next set of results.
lssorMaxResults :: Lens' ListStackSetOperationResults (Maybe Natural)
lssorMaxResults = lens _lssorMaxResults (\s a -> s {_lssorMaxResults = a}) . mapping _Nat

-- | [Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * If you are signed in to the management account, specify @SELF@ .     * If you are signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated administrator in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ .
lssorCallAs :: Lens' ListStackSetOperationResults (Maybe CallAs)
lssorCallAs = lens _lssorCallAs (\s a -> s {_lssorCallAs = a})

-- | The name or unique ID of the stack set that you want to get operation results for.
lssorStackSetName :: Lens' ListStackSetOperationResults Text
lssorStackSetName = lens _lssorStackSetName (\s a -> s {_lssorStackSetName = a})

-- | The ID of the stack set operation.
lssorOperationId :: Lens' ListStackSetOperationResults Text
lssorOperationId = lens _lssorOperationId (\s a -> s {_lssorOperationId = a})

instance AWSPager ListStackSetOperationResults where
  page rq rs
    | stop (rs ^. lssorrrsNextToken) = Nothing
    | stop (rs ^. lssorrrsSummaries) = Nothing
    | otherwise =
      Just $ rq & lssorNextToken .~ rs ^. lssorrrsNextToken

instance AWSRequest ListStackSetOperationResults where
  type
    Rs ListStackSetOperationResults =
      ListStackSetOperationResultsResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "ListStackSetOperationResultsResult"
      ( \s h x ->
          ListStackSetOperationResultsResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "Summaries" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListStackSetOperationResults

instance NFData ListStackSetOperationResults

instance ToHeaders ListStackSetOperationResults where
  toHeaders = const mempty

instance ToPath ListStackSetOperationResults where
  toPath = const "/"

instance ToQuery ListStackSetOperationResults where
  toQuery ListStackSetOperationResults' {..} =
    mconcat
      [ "Action"
          =: ("ListStackSetOperationResults" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "NextToken" =: _lssorNextToken,
        "MaxResults" =: _lssorMaxResults,
        "CallAs" =: _lssorCallAs,
        "StackSetName" =: _lssorStackSetName,
        "OperationId" =: _lssorOperationId
      ]

-- | /See:/ 'listStackSetOperationResultsResponse' smart constructor.
data ListStackSetOperationResultsResponse = ListStackSetOperationResultsResponse'
  { _lssorrrsNextToken ::
      !( Maybe
           Text
       ),
    _lssorrrsSummaries ::
      !( Maybe
           [StackSetOperationResultSummary]
       ),
    _lssorrrsResponseStatus ::
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

-- | Creates a value of 'ListStackSetOperationResultsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lssorrrsNextToken' - If the request doesn't return all results, @NextToken@ is set to a token. To retrieve the next set of results, call @ListOperationResults@ again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, @NextToken@ is set to @null@ .
--
-- * 'lssorrrsSummaries' - A list of @StackSetOperationResultSummary@ structures that contain information about the specified operation results, for accounts and Regions that are included in the operation.
--
-- * 'lssorrrsResponseStatus' - -- | The response status code.
listStackSetOperationResultsResponse ::
  -- | 'lssorrrsResponseStatus'
  Int ->
  ListStackSetOperationResultsResponse
listStackSetOperationResultsResponse pResponseStatus_ =
  ListStackSetOperationResultsResponse'
    { _lssorrrsNextToken =
        Nothing,
      _lssorrrsSummaries = Nothing,
      _lssorrrsResponseStatus =
        pResponseStatus_
    }

-- | If the request doesn't return all results, @NextToken@ is set to a token. To retrieve the next set of results, call @ListOperationResults@ again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, @NextToken@ is set to @null@ .
lssorrrsNextToken :: Lens' ListStackSetOperationResultsResponse (Maybe Text)
lssorrrsNextToken = lens _lssorrrsNextToken (\s a -> s {_lssorrrsNextToken = a})

-- | A list of @StackSetOperationResultSummary@ structures that contain information about the specified operation results, for accounts and Regions that are included in the operation.
lssorrrsSummaries :: Lens' ListStackSetOperationResultsResponse [StackSetOperationResultSummary]
lssorrrsSummaries = lens _lssorrrsSummaries (\s a -> s {_lssorrrsSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
lssorrrsResponseStatus :: Lens' ListStackSetOperationResultsResponse Int
lssorrrsResponseStatus = lens _lssorrrsResponseStatus (\s a -> s {_lssorrrsResponseStatus = a})

instance NFData ListStackSetOperationResultsResponse
