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
-- Module      : Network.AWS.ResourceGroups.ListGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of existing resource groups in your account.
--
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
--     * @resource-groups:ListGroups@
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.ResourceGroups.ListGroups
  ( -- * Creating a Request
    listGroups,
    ListGroups,

    -- * Request Lenses
    lgNextToken,
    lgMaxResults,
    lgFilters,

    -- * Destructuring the Response
    listGroupsResponse,
    ListGroupsResponse,

    -- * Response Lenses
    lgrrsGroups,
    lgrrsNextToken,
    lgrrsGroupIdentifiers,
    lgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.ResourceGroups.Types
import Network.AWS.Response

-- | /See:/ 'listGroups' smart constructor.
data ListGroups = ListGroups'
  { _lgNextToken ::
      !(Maybe Text),
    _lgMaxResults :: !(Maybe Nat),
    _lgFilters :: !(Maybe [GroupFilter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgNextToken' - The parameter for receiving additional results if you receive a @NextToken@ response in a previous request. A @NextToken@ response indicates that more output is available. Set this parameter to the value provided by a previous call's @NextToken@ response to indicate where the output should continue from.
--
-- * 'lgMaxResults' - The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the @NextToken@ response element is present and has a value (is not null). Include that value as the @NextToken@ request parameter in the next call to the operation to get the next part of the results. Note that the service might return fewer results than the maximum even when there are more results available. You should check @NextToken@ after every operation to ensure that you receive all of the results.
--
-- * 'lgFilters' - Filters, formatted as 'GroupFilter' objects, that you want to apply to a @ListGroups@ operation.     * @resource-type@ - Filter the results to include only those of the specified resource types. Specify up to five resource types in the format @AWS::/ServiceCode/ ::/ResourceType/ @ . For example, @AWS::EC2::Instance@ , or @AWS::S3::Bucket@ .     * @configuration-type@ - Filter the results to include only those groups that have the specified configuration types attached. The current supported values are:     * @AWS:EC2::CapacityReservationPool@      * @AWS:EC2::HostManagement@
listGroups ::
  ListGroups
listGroups =
  ListGroups'
    { _lgNextToken = Nothing,
      _lgMaxResults = Nothing,
      _lgFilters = Nothing
    }

-- | The parameter for receiving additional results if you receive a @NextToken@ response in a previous request. A @NextToken@ response indicates that more output is available. Set this parameter to the value provided by a previous call's @NextToken@ response to indicate where the output should continue from.
lgNextToken :: Lens' ListGroups (Maybe Text)
lgNextToken = lens _lgNextToken (\s a -> s {_lgNextToken = a})

-- | The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the @NextToken@ response element is present and has a value (is not null). Include that value as the @NextToken@ request parameter in the next call to the operation to get the next part of the results. Note that the service might return fewer results than the maximum even when there are more results available. You should check @NextToken@ after every operation to ensure that you receive all of the results.
lgMaxResults :: Lens' ListGroups (Maybe Natural)
lgMaxResults = lens _lgMaxResults (\s a -> s {_lgMaxResults = a}) . mapping _Nat

-- | Filters, formatted as 'GroupFilter' objects, that you want to apply to a @ListGroups@ operation.     * @resource-type@ - Filter the results to include only those of the specified resource types. Specify up to five resource types in the format @AWS::/ServiceCode/ ::/ResourceType/ @ . For example, @AWS::EC2::Instance@ , or @AWS::S3::Bucket@ .     * @configuration-type@ - Filter the results to include only those groups that have the specified configuration types attached. The current supported values are:     * @AWS:EC2::CapacityReservationPool@      * @AWS:EC2::HostManagement@
lgFilters :: Lens' ListGroups [GroupFilter]
lgFilters = lens _lgFilters (\s a -> s {_lgFilters = a}) . _Default . _Coerce

instance AWSPager ListGroups where
  page rq rs
    | stop (rs ^. lgrrsNextToken) = Nothing
    | stop (rs ^. lgrrsGroupIdentifiers) = Nothing
    | stop (rs ^. lgrrsGroups) = Nothing
    | otherwise =
      Just $ rq & lgNextToken .~ rs ^. lgrrsNextToken

instance AWSRequest ListGroups where
  type Rs ListGroups = ListGroupsResponse
  request = postJSON resourceGroups
  response =
    receiveJSON
      ( \s h x ->
          ListGroupsResponse'
            <$> (x .?> "Groups" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (x .?> "GroupIdentifiers" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListGroups

instance NFData ListGroups

instance ToHeaders ListGroups where
  toHeaders = const mempty

instance ToJSON ListGroups where
  toJSON ListGroups' {..} =
    object (catMaybes [("Filters" .=) <$> _lgFilters])

instance ToPath ListGroups where
  toPath = const "/groups-list"

instance ToQuery ListGroups where
  toQuery ListGroups' {..} =
    mconcat
      [ "nextToken" =: _lgNextToken,
        "maxResults" =: _lgMaxResults
      ]

-- | /See:/ 'listGroupsResponse' smart constructor.
data ListGroupsResponse = ListGroupsResponse'
  { _lgrrsGroups ::
      !(Maybe [Group]),
    _lgrrsNextToken :: !(Maybe Text),
    _lgrrsGroupIdentifiers ::
      !(Maybe [GroupIdentifier]),
    _lgrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgrrsGroups' - /Important:/ /__Deprecated - don't use this field. Use the @GroupIdentifiers@ response field instead.__ /
--
-- * 'lgrrsNextToken' - If present, indicates that more output is available than is included in the current response. Use this value in the @NextToken@ request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the @NextToken@ response element comes back as @null@ .
--
-- * 'lgrrsGroupIdentifiers' - A list of 'GroupIdentifier' objects. Each identifier is an object that contains both the @Name@ and the @GroupArn@ .
--
-- * 'lgrrsResponseStatus' - -- | The response status code.
listGroupsResponse ::
  -- | 'lgrrsResponseStatus'
  Int ->
  ListGroupsResponse
listGroupsResponse pResponseStatus_ =
  ListGroupsResponse'
    { _lgrrsGroups = Nothing,
      _lgrrsNextToken = Nothing,
      _lgrrsGroupIdentifiers = Nothing,
      _lgrrsResponseStatus = pResponseStatus_
    }

-- | /Important:/ /__Deprecated - don't use this field. Use the @GroupIdentifiers@ response field instead.__ /
lgrrsGroups :: Lens' ListGroupsResponse [Group]
lgrrsGroups = lens _lgrrsGroups (\s a -> s {_lgrrsGroups = a}) . _Default . _Coerce

-- | If present, indicates that more output is available than is included in the current response. Use this value in the @NextToken@ request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the @NextToken@ response element comes back as @null@ .
lgrrsNextToken :: Lens' ListGroupsResponse (Maybe Text)
lgrrsNextToken = lens _lgrrsNextToken (\s a -> s {_lgrrsNextToken = a})

-- | A list of 'GroupIdentifier' objects. Each identifier is an object that contains both the @Name@ and the @GroupArn@ .
lgrrsGroupIdentifiers :: Lens' ListGroupsResponse [GroupIdentifier]
lgrrsGroupIdentifiers = lens _lgrrsGroupIdentifiers (\s a -> s {_lgrrsGroupIdentifiers = a}) . _Default . _Coerce

-- | -- | The response status code.
lgrrsResponseStatus :: Lens' ListGroupsResponse Int
lgrrsResponseStatus = lens _lgrrsResponseStatus (\s a -> s {_lgrrsResponseStatus = a})

instance NFData ListGroupsResponse
