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
-- Module      : Network.AWS.SSM.DescribeMaintenanceWindows
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the maintenance windows in an AWS account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribeMaintenanceWindows
  ( -- * Creating a Request
    describeMaintenanceWindows,
    DescribeMaintenanceWindows,

    -- * Request Lenses
    dmwNextToken,
    dmwMaxResults,
    dmwFilters,

    -- * Destructuring the Response
    describeMaintenanceWindowsResponse,
    DescribeMaintenanceWindowsResponse,

    -- * Response Lenses
    dmwrrsNextToken,
    dmwrrsWindowIdentities,
    dmwrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describeMaintenanceWindows' smart constructor.
data DescribeMaintenanceWindows = DescribeMaintenanceWindows'
  { _dmwNextToken ::
      !(Maybe Text),
    _dmwMaxResults ::
      !(Maybe Nat),
    _dmwFilters ::
      !( Maybe
           [MaintenanceWindowFilter]
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

-- | Creates a value of 'DescribeMaintenanceWindows' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmwNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dmwMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'dmwFilters' - Optional filters used to narrow down the scope of the returned maintenance windows. Supported filter keys are __Name__ and __Enabled__ .
describeMaintenanceWindows ::
  DescribeMaintenanceWindows
describeMaintenanceWindows =
  DescribeMaintenanceWindows'
    { _dmwNextToken =
        Nothing,
      _dmwMaxResults = Nothing,
      _dmwFilters = Nothing
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dmwNextToken :: Lens' DescribeMaintenanceWindows (Maybe Text)
dmwNextToken = lens _dmwNextToken (\s a -> s {_dmwNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
dmwMaxResults :: Lens' DescribeMaintenanceWindows (Maybe Natural)
dmwMaxResults = lens _dmwMaxResults (\s a -> s {_dmwMaxResults = a}) . mapping _Nat

-- | Optional filters used to narrow down the scope of the returned maintenance windows. Supported filter keys are __Name__ and __Enabled__ .
dmwFilters :: Lens' DescribeMaintenanceWindows [MaintenanceWindowFilter]
dmwFilters = lens _dmwFilters (\s a -> s {_dmwFilters = a}) . _Default . _Coerce

instance AWSPager DescribeMaintenanceWindows where
  page rq rs
    | stop (rs ^. dmwrrsNextToken) = Nothing
    | stop (rs ^. dmwrrsWindowIdentities) = Nothing
    | otherwise =
      Just $ rq & dmwNextToken .~ rs ^. dmwrrsNextToken

instance AWSRequest DescribeMaintenanceWindows where
  type
    Rs DescribeMaintenanceWindows =
      DescribeMaintenanceWindowsResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribeMaintenanceWindowsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "WindowIdentities" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeMaintenanceWindows

instance NFData DescribeMaintenanceWindows

instance ToHeaders DescribeMaintenanceWindows where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.DescribeMaintenanceWindows" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeMaintenanceWindows where
  toJSON DescribeMaintenanceWindows' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dmwNextToken,
            ("MaxResults" .=) <$> _dmwMaxResults,
            ("Filters" .=) <$> _dmwFilters
          ]
      )

instance ToPath DescribeMaintenanceWindows where
  toPath = const "/"

instance ToQuery DescribeMaintenanceWindows where
  toQuery = const mempty

-- | /See:/ 'describeMaintenanceWindowsResponse' smart constructor.
data DescribeMaintenanceWindowsResponse = DescribeMaintenanceWindowsResponse'
  { _dmwrrsNextToken ::
      !( Maybe
           Text
       ),
    _dmwrrsWindowIdentities ::
      !( Maybe
           [MaintenanceWindowIdentity]
       ),
    _dmwrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeMaintenanceWindowsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmwrrsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'dmwrrsWindowIdentities' - Information about the maintenance windows.
--
-- * 'dmwrrsResponseStatus' - -- | The response status code.
describeMaintenanceWindowsResponse ::
  -- | 'dmwrrsResponseStatus'
  Int ->
  DescribeMaintenanceWindowsResponse
describeMaintenanceWindowsResponse pResponseStatus_ =
  DescribeMaintenanceWindowsResponse'
    { _dmwrrsNextToken =
        Nothing,
      _dmwrrsWindowIdentities = Nothing,
      _dmwrrsResponseStatus =
        pResponseStatus_
    }

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
dmwrrsNextToken :: Lens' DescribeMaintenanceWindowsResponse (Maybe Text)
dmwrrsNextToken = lens _dmwrrsNextToken (\s a -> s {_dmwrrsNextToken = a})

-- | Information about the maintenance windows.
dmwrrsWindowIdentities :: Lens' DescribeMaintenanceWindowsResponse [MaintenanceWindowIdentity]
dmwrrsWindowIdentities = lens _dmwrrsWindowIdentities (\s a -> s {_dmwrrsWindowIdentities = a}) . _Default . _Coerce

-- | -- | The response status code.
dmwrrsResponseStatus :: Lens' DescribeMaintenanceWindowsResponse Int
dmwrrsResponseStatus = lens _dmwrrsResponseStatus (\s a -> s {_dmwrrsResponseStatus = a})

instance NFData DescribeMaintenanceWindowsResponse
