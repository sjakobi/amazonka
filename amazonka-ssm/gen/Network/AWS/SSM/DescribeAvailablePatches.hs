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
-- Module      : Network.AWS.SSM.DescribeAvailablePatches
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all patches eligible to be included in a patch baseline.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribeAvailablePatches
  ( -- * Creating a Request
    describeAvailablePatches,
    DescribeAvailablePatches,

    -- * Request Lenses
    dapNextToken,
    dapMaxResults,
    dapFilters,

    -- * Destructuring the Response
    describeAvailablePatchesResponse,
    DescribeAvailablePatchesResponse,

    -- * Response Lenses
    daprrsNextToken,
    daprrsPatches,
    daprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describeAvailablePatches' smart constructor.
data DescribeAvailablePatches = DescribeAvailablePatches'
  { _dapNextToken ::
      !(Maybe Text),
    _dapMaxResults ::
      !(Maybe Nat),
    _dapFilters ::
      !( Maybe
           [PatchOrchestratorFilter]
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAvailablePatches' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dapNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dapMaxResults' - The maximum number of patches to return (per page).
--
-- * 'dapFilters' - Filters used to scope down the returned patches.
describeAvailablePatches ::
  DescribeAvailablePatches
describeAvailablePatches =
  DescribeAvailablePatches'
    { _dapNextToken = Nothing,
      _dapMaxResults = Nothing,
      _dapFilters = Nothing
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dapNextToken :: Lens' DescribeAvailablePatches (Maybe Text)
dapNextToken = lens _dapNextToken (\s a -> s {_dapNextToken = a})

-- | The maximum number of patches to return (per page).
dapMaxResults :: Lens' DescribeAvailablePatches (Maybe Natural)
dapMaxResults = lens _dapMaxResults (\s a -> s {_dapMaxResults = a}) . mapping _Nat

-- | Filters used to scope down the returned patches.
dapFilters :: Lens' DescribeAvailablePatches [PatchOrchestratorFilter]
dapFilters = lens _dapFilters (\s a -> s {_dapFilters = a}) . _Default . _Coerce

instance AWSPager DescribeAvailablePatches where
  page rq rs
    | stop (rs ^. daprrsNextToken) = Nothing
    | stop (rs ^. daprrsPatches) = Nothing
    | otherwise =
      Just $ rq & dapNextToken .~ rs ^. daprrsNextToken

instance AWSRequest DescribeAvailablePatches where
  type
    Rs DescribeAvailablePatches =
      DescribeAvailablePatchesResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribeAvailablePatchesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Patches" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAvailablePatches

instance NFData DescribeAvailablePatches

instance ToHeaders DescribeAvailablePatches where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.DescribeAvailablePatches" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeAvailablePatches where
  toJSON DescribeAvailablePatches' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dapNextToken,
            ("MaxResults" .=) <$> _dapMaxResults,
            ("Filters" .=) <$> _dapFilters
          ]
      )

instance ToPath DescribeAvailablePatches where
  toPath = const "/"

instance ToQuery DescribeAvailablePatches where
  toQuery = const mempty

-- | /See:/ 'describeAvailablePatchesResponse' smart constructor.
data DescribeAvailablePatchesResponse = DescribeAvailablePatchesResponse'
  { _daprrsNextToken ::
      !( Maybe
           Text
       ),
    _daprrsPatches ::
      !( Maybe
           [Patch]
       ),
    _daprrsResponseStatus ::
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

-- | Creates a value of 'DescribeAvailablePatchesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daprrsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'daprrsPatches' - An array of patches. Each entry in the array is a patch structure.
--
-- * 'daprrsResponseStatus' - -- | The response status code.
describeAvailablePatchesResponse ::
  -- | 'daprrsResponseStatus'
  Int ->
  DescribeAvailablePatchesResponse
describeAvailablePatchesResponse pResponseStatus_ =
  DescribeAvailablePatchesResponse'
    { _daprrsNextToken =
        Nothing,
      _daprrsPatches = Nothing,
      _daprrsResponseStatus = pResponseStatus_
    }

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
daprrsNextToken :: Lens' DescribeAvailablePatchesResponse (Maybe Text)
daprrsNextToken = lens _daprrsNextToken (\s a -> s {_daprrsNextToken = a})

-- | An array of patches. Each entry in the array is a patch structure.
daprrsPatches :: Lens' DescribeAvailablePatchesResponse [Patch]
daprrsPatches = lens _daprrsPatches (\s a -> s {_daprrsPatches = a}) . _Default . _Coerce

-- | -- | The response status code.
daprrsResponseStatus :: Lens' DescribeAvailablePatchesResponse Int
daprrsResponseStatus = lens _daprrsResponseStatus (\s a -> s {_daprrsResponseStatus = a})

instance NFData DescribeAvailablePatchesResponse
