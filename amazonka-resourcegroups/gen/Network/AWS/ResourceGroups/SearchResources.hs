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
-- Module      : Network.AWS.ResourceGroups.SearchResources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of AWS resource identifiers that matches the specified query. The query uses the same format as a resource query in a CreateGroup or UpdateGroupQuery operation.
--
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
--     * @resource-groups:SearchResources@
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.ResourceGroups.SearchResources
  ( -- * Creating a Request
    searchResources,
    SearchResources,

    -- * Request Lenses
    srNextToken,
    srMaxResults,
    srResourceQuery,

    -- * Destructuring the Response
    searchResourcesResponse,
    SearchResourcesResponse,

    -- * Response Lenses
    srrrsNextToken,
    srrrsResourceIdentifiers,
    srrrsQueryErrors,
    srrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.ResourceGroups.Types
import Network.AWS.Response

-- | /See:/ 'searchResources' smart constructor.
data SearchResources = SearchResources'
  { _srNextToken ::
      !(Maybe Text),
    _srMaxResults :: !(Maybe Nat),
    _srResourceQuery :: !ResourceQuery
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchResources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srNextToken' - The parameter for receiving additional results if you receive a @NextToken@ response in a previous request. A @NextToken@ response indicates that more output is available. Set this parameter to the value provided by a previous call's @NextToken@ response to indicate where the output should continue from.
--
-- * 'srMaxResults' - The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the @NextToken@ response element is present and has a value (is not null). Include that value as the @NextToken@ request parameter in the next call to the operation to get the next part of the results. Note that the service might return fewer results than the maximum even when there are more results available. You should check @NextToken@ after every operation to ensure that you receive all of the results.
--
-- * 'srResourceQuery' - The search query, using the same formats that are supported for resource group definition. For more information, see 'CreateGroup' .
searchResources ::
  -- | 'srResourceQuery'
  ResourceQuery ->
  SearchResources
searchResources pResourceQuery_ =
  SearchResources'
    { _srNextToken = Nothing,
      _srMaxResults = Nothing,
      _srResourceQuery = pResourceQuery_
    }

-- | The parameter for receiving additional results if you receive a @NextToken@ response in a previous request. A @NextToken@ response indicates that more output is available. Set this parameter to the value provided by a previous call's @NextToken@ response to indicate where the output should continue from.
srNextToken :: Lens' SearchResources (Maybe Text)
srNextToken = lens _srNextToken (\s a -> s {_srNextToken = a})

-- | The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the @NextToken@ response element is present and has a value (is not null). Include that value as the @NextToken@ request parameter in the next call to the operation to get the next part of the results. Note that the service might return fewer results than the maximum even when there are more results available. You should check @NextToken@ after every operation to ensure that you receive all of the results.
srMaxResults :: Lens' SearchResources (Maybe Natural)
srMaxResults = lens _srMaxResults (\s a -> s {_srMaxResults = a}) . mapping _Nat

-- | The search query, using the same formats that are supported for resource group definition. For more information, see 'CreateGroup' .
srResourceQuery :: Lens' SearchResources ResourceQuery
srResourceQuery = lens _srResourceQuery (\s a -> s {_srResourceQuery = a})

instance AWSPager SearchResources where
  page rq rs
    | stop (rs ^. srrrsNextToken) = Nothing
    | stop (rs ^. srrrsResourceIdentifiers) = Nothing
    | otherwise =
      Just $ rq & srNextToken .~ rs ^. srrrsNextToken

instance AWSRequest SearchResources where
  type Rs SearchResources = SearchResourcesResponse
  request = postJSON resourceGroups
  response =
    receiveJSON
      ( \s h x ->
          SearchResourcesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ResourceIdentifiers" .!@ mempty)
            <*> (x .?> "QueryErrors" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable SearchResources

instance NFData SearchResources

instance ToHeaders SearchResources where
  toHeaders = const mempty

instance ToJSON SearchResources where
  toJSON SearchResources' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _srNextToken,
            ("MaxResults" .=) <$> _srMaxResults,
            Just ("ResourceQuery" .= _srResourceQuery)
          ]
      )

instance ToPath SearchResources where
  toPath = const "/resources/search"

instance ToQuery SearchResources where
  toQuery = const mempty

-- | /See:/ 'searchResourcesResponse' smart constructor.
data SearchResourcesResponse = SearchResourcesResponse'
  { _srrrsNextToken ::
      !(Maybe Text),
    _srrrsResourceIdentifiers ::
      !( Maybe
           [ResourceIdentifier]
       ),
    _srrrsQueryErrors ::
      !(Maybe [QueryError]),
    _srrrsResponseStatus ::
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

-- | Creates a value of 'SearchResourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srrrsNextToken' - If present, indicates that more output is available than is included in the current response. Use this value in the @NextToken@ request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the @NextToken@ response element comes back as @null@ .
--
-- * 'srrrsResourceIdentifiers' - The ARNs and resource types of resources that are members of the group that you specified.
--
-- * 'srrrsQueryErrors' - A list of @QueryError@ objects. Each error is an object that contains @ErrorCode@ and @Message@ structures. Possible values for @ErrorCode@ are @CLOUDFORMATION_STACK_INACTIVE@ and @CLOUDFORMATION_STACK_NOT_EXISTING@ .
--
-- * 'srrrsResponseStatus' - -- | The response status code.
searchResourcesResponse ::
  -- | 'srrrsResponseStatus'
  Int ->
  SearchResourcesResponse
searchResourcesResponse pResponseStatus_ =
  SearchResourcesResponse'
    { _srrrsNextToken = Nothing,
      _srrrsResourceIdentifiers = Nothing,
      _srrrsQueryErrors = Nothing,
      _srrrsResponseStatus = pResponseStatus_
    }

-- | If present, indicates that more output is available than is included in the current response. Use this value in the @NextToken@ request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the @NextToken@ response element comes back as @null@ .
srrrsNextToken :: Lens' SearchResourcesResponse (Maybe Text)
srrrsNextToken = lens _srrrsNextToken (\s a -> s {_srrrsNextToken = a})

-- | The ARNs and resource types of resources that are members of the group that you specified.
srrrsResourceIdentifiers :: Lens' SearchResourcesResponse [ResourceIdentifier]
srrrsResourceIdentifiers = lens _srrrsResourceIdentifiers (\s a -> s {_srrrsResourceIdentifiers = a}) . _Default . _Coerce

-- | A list of @QueryError@ objects. Each error is an object that contains @ErrorCode@ and @Message@ structures. Possible values for @ErrorCode@ are @CLOUDFORMATION_STACK_INACTIVE@ and @CLOUDFORMATION_STACK_NOT_EXISTING@ .
srrrsQueryErrors :: Lens' SearchResourcesResponse [QueryError]
srrrsQueryErrors = lens _srrrsQueryErrors (\s a -> s {_srrrsQueryErrors = a}) . _Default . _Coerce

-- | -- | The response status code.
srrrsResponseStatus :: Lens' SearchResourcesResponse Int
srrrsResponseStatus = lens _srrrsResponseStatus (\s a -> s {_srrrsResponseStatus = a})

instance NFData SearchResourcesResponse
