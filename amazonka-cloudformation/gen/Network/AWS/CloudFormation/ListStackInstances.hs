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
-- Module      : Network.AWS.CloudFormation.ListStackInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns summary information about stack instances that are associated with the specified stack set. You can filter for stack instances that are associated with a specific AWS account name or Region, or that have a specific status.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudFormation.ListStackInstances
  ( -- * Creating a Request
    listStackInstances,
    ListStackInstances,

    -- * Request Lenses
    lsiNextToken,
    lsiStackInstanceAccount,
    lsiMaxResults,
    lsiCallAs,
    lsiStackInstanceRegion,
    lsiFilters,
    lsiStackSetName,

    -- * Destructuring the Response
    listStackInstancesResponse,
    ListStackInstancesResponse,

    -- * Response Lenses
    lsirrsNextToken,
    lsirrsSummaries,
    lsirrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listStackInstances' smart constructor.
data ListStackInstances = ListStackInstances'
  { _lsiNextToken ::
      !(Maybe Text),
    _lsiStackInstanceAccount ::
      !(Maybe Text),
    _lsiMaxResults :: !(Maybe Nat),
    _lsiCallAs :: !(Maybe CallAs),
    _lsiStackInstanceRegion ::
      !(Maybe Text),
    _lsiFilters ::
      !(Maybe [StackInstanceFilter]),
    _lsiStackSetName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListStackInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsiNextToken' - If the previous request didn't return all of the remaining results, the response's @NextToken@ parameter value is set to a token. To retrieve the next set of results, call @ListStackInstances@ again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, the previous response object's @NextToken@ parameter is set to @null@ .
--
-- * 'lsiStackInstanceAccount' - The name of the AWS account that you want to list stack instances for.
--
-- * 'lsiMaxResults' - The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a @NextToken@ value that you can assign to the @NextToken@ request parameter to get the next set of results.
--
-- * 'lsiCallAs' - [Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * If you are signed in to the management account, specify @SELF@ .     * If you are signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated administrator in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ .
--
-- * 'lsiStackInstanceRegion' - The name of the Region where you want to list stack instances.
--
-- * 'lsiFilters' - The status that stack instances are filtered by.
--
-- * 'lsiStackSetName' - The name or unique ID of the stack set that you want to list stack instances for.
listStackInstances ::
  -- | 'lsiStackSetName'
  Text ->
  ListStackInstances
listStackInstances pStackSetName_ =
  ListStackInstances'
    { _lsiNextToken = Nothing,
      _lsiStackInstanceAccount = Nothing,
      _lsiMaxResults = Nothing,
      _lsiCallAs = Nothing,
      _lsiStackInstanceRegion = Nothing,
      _lsiFilters = Nothing,
      _lsiStackSetName = pStackSetName_
    }

-- | If the previous request didn't return all of the remaining results, the response's @NextToken@ parameter value is set to a token. To retrieve the next set of results, call @ListStackInstances@ again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, the previous response object's @NextToken@ parameter is set to @null@ .
lsiNextToken :: Lens' ListStackInstances (Maybe Text)
lsiNextToken = lens _lsiNextToken (\s a -> s {_lsiNextToken = a})

-- | The name of the AWS account that you want to list stack instances for.
lsiStackInstanceAccount :: Lens' ListStackInstances (Maybe Text)
lsiStackInstanceAccount = lens _lsiStackInstanceAccount (\s a -> s {_lsiStackInstanceAccount = a})

-- | The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a @NextToken@ value that you can assign to the @NextToken@ request parameter to get the next set of results.
lsiMaxResults :: Lens' ListStackInstances (Maybe Natural)
lsiMaxResults = lens _lsiMaxResults (\s a -> s {_lsiMaxResults = a}) . mapping _Nat

-- | [Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * If you are signed in to the management account, specify @SELF@ .     * If you are signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated administrator in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ .
lsiCallAs :: Lens' ListStackInstances (Maybe CallAs)
lsiCallAs = lens _lsiCallAs (\s a -> s {_lsiCallAs = a})

-- | The name of the Region where you want to list stack instances.
lsiStackInstanceRegion :: Lens' ListStackInstances (Maybe Text)
lsiStackInstanceRegion = lens _lsiStackInstanceRegion (\s a -> s {_lsiStackInstanceRegion = a})

-- | The status that stack instances are filtered by.
lsiFilters :: Lens' ListStackInstances [StackInstanceFilter]
lsiFilters = lens _lsiFilters (\s a -> s {_lsiFilters = a}) . _Default . _Coerce

-- | The name or unique ID of the stack set that you want to list stack instances for.
lsiStackSetName :: Lens' ListStackInstances Text
lsiStackSetName = lens _lsiStackSetName (\s a -> s {_lsiStackSetName = a})

instance AWSPager ListStackInstances where
  page rq rs
    | stop (rs ^. lsirrsNextToken) = Nothing
    | stop (rs ^. lsirrsSummaries) = Nothing
    | otherwise =
      Just $ rq & lsiNextToken .~ rs ^. lsirrsNextToken

instance AWSRequest ListStackInstances where
  type
    Rs ListStackInstances =
      ListStackInstancesResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "ListStackInstancesResult"
      ( \s h x ->
          ListStackInstancesResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "Summaries" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListStackInstances

instance NFData ListStackInstances

instance ToHeaders ListStackInstances where
  toHeaders = const mempty

instance ToPath ListStackInstances where
  toPath = const "/"

instance ToQuery ListStackInstances where
  toQuery ListStackInstances' {..} =
    mconcat
      [ "Action" =: ("ListStackInstances" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "NextToken" =: _lsiNextToken,
        "StackInstanceAccount" =: _lsiStackInstanceAccount,
        "MaxResults" =: _lsiMaxResults,
        "CallAs" =: _lsiCallAs,
        "StackInstanceRegion" =: _lsiStackInstanceRegion,
        "Filters"
          =: toQuery (toQueryList "member" <$> _lsiFilters),
        "StackSetName" =: _lsiStackSetName
      ]

-- | /See:/ 'listStackInstancesResponse' smart constructor.
data ListStackInstancesResponse = ListStackInstancesResponse'
  { _lsirrsNextToken ::
      !(Maybe Text),
    _lsirrsSummaries ::
      !( Maybe
           [StackInstanceSummary]
       ),
    _lsirrsResponseStatus ::
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

-- | Creates a value of 'ListStackInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsirrsNextToken' - If the request doesn't return all of the remaining results, @NextToken@ is set to a token. To retrieve the next set of results, call @ListStackInstances@ again and assign that token to the request object's @NextToken@ parameter. If the request returns all results, @NextToken@ is set to @null@ .
--
-- * 'lsirrsSummaries' - A list of @StackInstanceSummary@ structures that contain information about the specified stack instances.
--
-- * 'lsirrsResponseStatus' - -- | The response status code.
listStackInstancesResponse ::
  -- | 'lsirrsResponseStatus'
  Int ->
  ListStackInstancesResponse
listStackInstancesResponse pResponseStatus_ =
  ListStackInstancesResponse'
    { _lsirrsNextToken =
        Nothing,
      _lsirrsSummaries = Nothing,
      _lsirrsResponseStatus = pResponseStatus_
    }

-- | If the request doesn't return all of the remaining results, @NextToken@ is set to a token. To retrieve the next set of results, call @ListStackInstances@ again and assign that token to the request object's @NextToken@ parameter. If the request returns all results, @NextToken@ is set to @null@ .
lsirrsNextToken :: Lens' ListStackInstancesResponse (Maybe Text)
lsirrsNextToken = lens _lsirrsNextToken (\s a -> s {_lsirrsNextToken = a})

-- | A list of @StackInstanceSummary@ structures that contain information about the specified stack instances.
lsirrsSummaries :: Lens' ListStackInstancesResponse [StackInstanceSummary]
lsirrsSummaries = lens _lsirrsSummaries (\s a -> s {_lsirrsSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
lsirrsResponseStatus :: Lens' ListStackInstancesResponse Int
lsirrsResponseStatus = lens _lsirrsResponseStatus (\s a -> s {_lsirrsResponseStatus = a})

instance NFData ListStackInstancesResponse
