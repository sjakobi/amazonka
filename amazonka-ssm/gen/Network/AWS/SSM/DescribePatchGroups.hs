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
-- Module      : Network.AWS.SSM.DescribePatchGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all patch groups that have been registered with patch baselines.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribePatchGroups
  ( -- * Creating a Request
    describePatchGroups,
    DescribePatchGroups,

    -- * Request Lenses
    dpgNextToken,
    dpgMaxResults,
    dpgFilters,

    -- * Destructuring the Response
    describePatchGroupsResponse,
    DescribePatchGroupsResponse,

    -- * Response Lenses
    dpgrrsMappings,
    dpgrrsNextToken,
    dpgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describePatchGroups' smart constructor.
data DescribePatchGroups = DescribePatchGroups'
  { _dpgNextToken ::
      !(Maybe Text),
    _dpgMaxResults :: !(Maybe Nat),
    _dpgFilters ::
      !( Maybe
           [PatchOrchestratorFilter]
       )
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribePatchGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpgNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dpgMaxResults' - The maximum number of patch groups to return (per page).
--
-- * 'dpgFilters' - One or more filters. Use a filter to return a more specific list of results. For @DescribePatchGroups@ ,valid filter keys include the following:     * @NAME_PREFIX@ : The name of the patch group. Wildcards (*) are accepted.     * @OPERATING_SYSTEM@ : The supported operating system type to return results for. For valid operating system values, see 'GetDefaultPatchBaselineRequest$OperatingSystem' in 'CreatePatchBaseline' . Examples:     * @--filters Key=NAME_PREFIX,Values=MyPatchGroup*@      * @--filters Key=OPERATING_SYSTEM,Values=AMAZON_LINUX_2@
describePatchGroups ::
  DescribePatchGroups
describePatchGroups =
  DescribePatchGroups'
    { _dpgNextToken = Nothing,
      _dpgMaxResults = Nothing,
      _dpgFilters = Nothing
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dpgNextToken :: Lens' DescribePatchGroups (Maybe Text)
dpgNextToken = lens _dpgNextToken (\s a -> s {_dpgNextToken = a})

-- | The maximum number of patch groups to return (per page).
dpgMaxResults :: Lens' DescribePatchGroups (Maybe Natural)
dpgMaxResults = lens _dpgMaxResults (\s a -> s {_dpgMaxResults = a}) . mapping _Nat

-- | One or more filters. Use a filter to return a more specific list of results. For @DescribePatchGroups@ ,valid filter keys include the following:     * @NAME_PREFIX@ : The name of the patch group. Wildcards (*) are accepted.     * @OPERATING_SYSTEM@ : The supported operating system type to return results for. For valid operating system values, see 'GetDefaultPatchBaselineRequest$OperatingSystem' in 'CreatePatchBaseline' . Examples:     * @--filters Key=NAME_PREFIX,Values=MyPatchGroup*@      * @--filters Key=OPERATING_SYSTEM,Values=AMAZON_LINUX_2@
dpgFilters :: Lens' DescribePatchGroups [PatchOrchestratorFilter]
dpgFilters = lens _dpgFilters (\s a -> s {_dpgFilters = a}) . _Default . _Coerce

instance AWSPager DescribePatchGroups where
  page rq rs
    | stop (rs ^. dpgrrsNextToken) = Nothing
    | stop (rs ^. dpgrrsMappings) = Nothing
    | otherwise =
      Just $ rq & dpgNextToken .~ rs ^. dpgrrsNextToken

instance AWSRequest DescribePatchGroups where
  type
    Rs DescribePatchGroups =
      DescribePatchGroupsResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribePatchGroupsResponse'
            <$> (x .?> "Mappings" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribePatchGroups

instance NFData DescribePatchGroups

instance ToHeaders DescribePatchGroups where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.DescribePatchGroups" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribePatchGroups where
  toJSON DescribePatchGroups' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dpgNextToken,
            ("MaxResults" .=) <$> _dpgMaxResults,
            ("Filters" .=) <$> _dpgFilters
          ]
      )

instance ToPath DescribePatchGroups where
  toPath = const "/"

instance ToQuery DescribePatchGroups where
  toQuery = const mempty

-- | /See:/ 'describePatchGroupsResponse' smart constructor.
data DescribePatchGroupsResponse = DescribePatchGroupsResponse'
  { _dpgrrsMappings ::
      !( Maybe
           [PatchGroupPatchBaselineMapping]
       ),
    _dpgrrsNextToken ::
      !(Maybe Text),
    _dpgrrsResponseStatus ::
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

-- | Creates a value of 'DescribePatchGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpgrrsMappings' - Each entry in the array contains: PatchGroup: string (between 1 and 256 characters, Regex: ^([\p{L}\p{Z}\p{N}_.:/=+\-@]*)$) PatchBaselineIdentity: A PatchBaselineIdentity element.
--
-- * 'dpgrrsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'dpgrrsResponseStatus' - -- | The response status code.
describePatchGroupsResponse ::
  -- | 'dpgrrsResponseStatus'
  Int ->
  DescribePatchGroupsResponse
describePatchGroupsResponse pResponseStatus_ =
  DescribePatchGroupsResponse'
    { _dpgrrsMappings =
        Nothing,
      _dpgrrsNextToken = Nothing,
      _dpgrrsResponseStatus = pResponseStatus_
    }

-- | Each entry in the array contains: PatchGroup: string (between 1 and 256 characters, Regex: ^([\p{L}\p{Z}\p{N}_.:/=+\-@]*)$) PatchBaselineIdentity: A PatchBaselineIdentity element.
dpgrrsMappings :: Lens' DescribePatchGroupsResponse [PatchGroupPatchBaselineMapping]
dpgrrsMappings = lens _dpgrrsMappings (\s a -> s {_dpgrrsMappings = a}) . _Default . _Coerce

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
dpgrrsNextToken :: Lens' DescribePatchGroupsResponse (Maybe Text)
dpgrrsNextToken = lens _dpgrrsNextToken (\s a -> s {_dpgrrsNextToken = a})

-- | -- | The response status code.
dpgrrsResponseStatus :: Lens' DescribePatchGroupsResponse Int
dpgrrsResponseStatus = lens _dpgrrsResponseStatus (\s a -> s {_dpgrrsResponseStatus = a})

instance NFData DescribePatchGroupsResponse
