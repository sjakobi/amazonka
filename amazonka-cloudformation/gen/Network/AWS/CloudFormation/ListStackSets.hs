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
-- Module      : Network.AWS.CloudFormation.ListStackSets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns summary information about stack sets that are associated with the user.
--
--
--     * [Self-managed permissions] If you set the @CallAs@ parameter to @SELF@ while signed in to your AWS account, @ListStackSets@ returns all self-managed stack sets in your AWS account.
--
--     * [Service-managed permissions] If you set the @CallAs@ parameter to @SELF@ while signed in to the organization's management account, @ListStackSets@ returns all stack sets in the management account.
--
--     * [Service-managed permissions] If you set the @CallAs@ parameter to @DELEGATED_ADMIN@ while signed in to your member account, @ListStackSets@ returns all stack sets with service-managed permissions in the management account.
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudFormation.ListStackSets
  ( -- * Creating a Request
    listStackSets,
    ListStackSets,

    -- * Request Lenses
    lssStatus,
    lssNextToken,
    lssMaxResults,
    lssCallAs,

    -- * Destructuring the Response
    listStackSetsResponse,
    ListStackSetsResponse,

    -- * Response Lenses
    lssrrsNextToken,
    lssrrsSummaries,
    lssrrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listStackSets' smart constructor.
data ListStackSets = ListStackSets'
  { _lssStatus ::
      !(Maybe StackSetStatus),
    _lssNextToken :: !(Maybe Text),
    _lssMaxResults :: !(Maybe Nat),
    _lssCallAs :: !(Maybe CallAs)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListStackSets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lssStatus' - The status of the stack sets that you want to get summary information about.
--
-- * 'lssNextToken' - If the previous paginated request didn't return all of the remaining results, the response object's @NextToken@ parameter value is set to a token. To retrieve the next set of results, call @ListStackSets@ again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, the previous response object's @NextToken@ parameter is set to @null@ .
--
-- * 'lssMaxResults' - The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a @NextToken@ value that you can assign to the @NextToken@ request parameter to get the next set of results.
--
-- * 'lssCallAs' - [Service-managed permissions] Specifies whether you are acting as an account administrator in the management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * If you are signed in to the management account, specify @SELF@ .     * If you are signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated administrator in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ .
listStackSets ::
  ListStackSets
listStackSets =
  ListStackSets'
    { _lssStatus = Nothing,
      _lssNextToken = Nothing,
      _lssMaxResults = Nothing,
      _lssCallAs = Nothing
    }

-- | The status of the stack sets that you want to get summary information about.
lssStatus :: Lens' ListStackSets (Maybe StackSetStatus)
lssStatus = lens _lssStatus (\s a -> s {_lssStatus = a})

-- | If the previous paginated request didn't return all of the remaining results, the response object's @NextToken@ parameter value is set to a token. To retrieve the next set of results, call @ListStackSets@ again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, the previous response object's @NextToken@ parameter is set to @null@ .
lssNextToken :: Lens' ListStackSets (Maybe Text)
lssNextToken = lens _lssNextToken (\s a -> s {_lssNextToken = a})

-- | The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a @NextToken@ value that you can assign to the @NextToken@ request parameter to get the next set of results.
lssMaxResults :: Lens' ListStackSets (Maybe Natural)
lssMaxResults = lens _lssMaxResults (\s a -> s {_lssMaxResults = a}) . mapping _Nat

-- | [Service-managed permissions] Specifies whether you are acting as an account administrator in the management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * If you are signed in to the management account, specify @SELF@ .     * If you are signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated administrator in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ .
lssCallAs :: Lens' ListStackSets (Maybe CallAs)
lssCallAs = lens _lssCallAs (\s a -> s {_lssCallAs = a})

instance AWSPager ListStackSets where
  page rq rs
    | stop (rs ^. lssrrsNextToken) = Nothing
    | stop (rs ^. lssrrsSummaries) = Nothing
    | otherwise =
      Just $ rq & lssNextToken .~ rs ^. lssrrsNextToken

instance AWSRequest ListStackSets where
  type Rs ListStackSets = ListStackSetsResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "ListStackSetsResult"
      ( \s h x ->
          ListStackSetsResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "Summaries" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListStackSets

instance NFData ListStackSets

instance ToHeaders ListStackSets where
  toHeaders = const mempty

instance ToPath ListStackSets where
  toPath = const "/"

instance ToQuery ListStackSets where
  toQuery ListStackSets' {..} =
    mconcat
      [ "Action" =: ("ListStackSets" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "Status" =: _lssStatus,
        "NextToken" =: _lssNextToken,
        "MaxResults" =: _lssMaxResults,
        "CallAs" =: _lssCallAs
      ]

-- | /See:/ 'listStackSetsResponse' smart constructor.
data ListStackSetsResponse = ListStackSetsResponse'
  { _lssrrsNextToken ::
      !(Maybe Text),
    _lssrrsSummaries ::
      !(Maybe [StackSetSummary]),
    _lssrrsResponseStatus ::
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

-- | Creates a value of 'ListStackSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lssrrsNextToken' - If the request doesn't return all of the remaining results, @NextToken@ is set to a token. To retrieve the next set of results, call @ListStackInstances@ again and assign that token to the request object's @NextToken@ parameter. If the request returns all results, @NextToken@ is set to @null@ .
--
-- * 'lssrrsSummaries' - A list of @StackSetSummary@ structures that contain information about the user's stack sets.
--
-- * 'lssrrsResponseStatus' - -- | The response status code.
listStackSetsResponse ::
  -- | 'lssrrsResponseStatus'
  Int ->
  ListStackSetsResponse
listStackSetsResponse pResponseStatus_ =
  ListStackSetsResponse'
    { _lssrrsNextToken = Nothing,
      _lssrrsSummaries = Nothing,
      _lssrrsResponseStatus = pResponseStatus_
    }

-- | If the request doesn't return all of the remaining results, @NextToken@ is set to a token. To retrieve the next set of results, call @ListStackInstances@ again and assign that token to the request object's @NextToken@ parameter. If the request returns all results, @NextToken@ is set to @null@ .
lssrrsNextToken :: Lens' ListStackSetsResponse (Maybe Text)
lssrrsNextToken = lens _lssrrsNextToken (\s a -> s {_lssrrsNextToken = a})

-- | A list of @StackSetSummary@ structures that contain information about the user's stack sets.
lssrrsSummaries :: Lens' ListStackSetsResponse [StackSetSummary]
lssrrsSummaries = lens _lssrrsSummaries (\s a -> s {_lssrrsSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
lssrrsResponseStatus :: Lens' ListStackSetsResponse Int
lssrrsResponseStatus = lens _lssrrsResponseStatus (\s a -> s {_lssrrsResponseStatus = a})

instance NFData ListStackSetsResponse
