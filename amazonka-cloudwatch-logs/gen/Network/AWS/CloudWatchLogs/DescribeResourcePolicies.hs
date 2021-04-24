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
-- Module      : Network.AWS.CloudWatchLogs.DescribeResourcePolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the resource policies in this account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudWatchLogs.DescribeResourcePolicies
  ( -- * Creating a Request
    describeResourcePolicies,
    DescribeResourcePolicies,

    -- * Request Lenses
    drpNextToken,
    drpLimit,

    -- * Destructuring the Response
    describeResourcePoliciesResponse,
    DescribeResourcePoliciesResponse,

    -- * Response Lenses
    drprrsNextToken,
    drprrsResourcePolicies,
    drprrsResponseStatus,
  )
where

import Network.AWS.CloudWatchLogs.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeResourcePolicies' smart constructor.
data DescribeResourcePolicies = DescribeResourcePolicies'
  { _drpNextToken ::
      !(Maybe Text),
    _drpLimit ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeResourcePolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drpNextToken' - Undocumented member.
--
-- * 'drpLimit' - The maximum number of resource policies to be displayed with one call of this API.
describeResourcePolicies ::
  DescribeResourcePolicies
describeResourcePolicies =
  DescribeResourcePolicies'
    { _drpNextToken = Nothing,
      _drpLimit = Nothing
    }

-- | Undocumented member.
drpNextToken :: Lens' DescribeResourcePolicies (Maybe Text)
drpNextToken = lens _drpNextToken (\s a -> s {_drpNextToken = a})

-- | The maximum number of resource policies to be displayed with one call of this API.
drpLimit :: Lens' DescribeResourcePolicies (Maybe Natural)
drpLimit = lens _drpLimit (\s a -> s {_drpLimit = a}) . mapping _Nat

instance AWSPager DescribeResourcePolicies where
  page rq rs
    | stop (rs ^. drprrsNextToken) = Nothing
    | stop (rs ^. drprrsResourcePolicies) = Nothing
    | otherwise =
      Just $ rq & drpNextToken .~ rs ^. drprrsNextToken

instance AWSRequest DescribeResourcePolicies where
  type
    Rs DescribeResourcePolicies =
      DescribeResourcePoliciesResponse
  request = postJSON cloudWatchLogs
  response =
    receiveJSON
      ( \s h x ->
          DescribeResourcePoliciesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "resourcePolicies" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeResourcePolicies

instance NFData DescribeResourcePolicies

instance ToHeaders DescribeResourcePolicies where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Logs_20140328.DescribeResourcePolicies" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeResourcePolicies where
  toJSON DescribeResourcePolicies' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _drpNextToken,
            ("limit" .=) <$> _drpLimit
          ]
      )

instance ToPath DescribeResourcePolicies where
  toPath = const "/"

instance ToQuery DescribeResourcePolicies where
  toQuery = const mempty

-- | /See:/ 'describeResourcePoliciesResponse' smart constructor.
data DescribeResourcePoliciesResponse = DescribeResourcePoliciesResponse'
  { _drprrsNextToken ::
      !( Maybe
           Text
       ),
    _drprrsResourcePolicies ::
      !( Maybe
           [ResourcePolicy]
       ),
    _drprrsResponseStatus ::
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

-- | Creates a value of 'DescribeResourcePoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drprrsNextToken' - Undocumented member.
--
-- * 'drprrsResourcePolicies' - The resource policies that exist in this account.
--
-- * 'drprrsResponseStatus' - -- | The response status code.
describeResourcePoliciesResponse ::
  -- | 'drprrsResponseStatus'
  Int ->
  DescribeResourcePoliciesResponse
describeResourcePoliciesResponse pResponseStatus_ =
  DescribeResourcePoliciesResponse'
    { _drprrsNextToken =
        Nothing,
      _drprrsResourcePolicies = Nothing,
      _drprrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
drprrsNextToken :: Lens' DescribeResourcePoliciesResponse (Maybe Text)
drprrsNextToken = lens _drprrsNextToken (\s a -> s {_drprrsNextToken = a})

-- | The resource policies that exist in this account.
drprrsResourcePolicies :: Lens' DescribeResourcePoliciesResponse [ResourcePolicy]
drprrsResourcePolicies = lens _drprrsResourcePolicies (\s a -> s {_drprrsResourcePolicies = a}) . _Default . _Coerce

-- | -- | The response status code.
drprrsResponseStatus :: Lens' DescribeResourcePoliciesResponse Int
drprrsResponseStatus = lens _drprrsResponseStatus (\s a -> s {_drprrsResponseStatus = a})

instance NFData DescribeResourcePoliciesResponse
