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
-- Module      : Network.AWS.CloudFormation.DescribeAccountLimits
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves your account's AWS CloudFormation limits, such as the maximum number of stacks that you can create in your account. For more information about account limits, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html AWS CloudFormation Limits> in the /AWS CloudFormation User Guide/ .
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudFormation.DescribeAccountLimits
  ( -- * Creating a Request
    describeAccountLimits,
    DescribeAccountLimits,

    -- * Request Lenses
    dalNextToken,

    -- * Destructuring the Response
    describeAccountLimitsResponse,
    DescribeAccountLimitsResponse,

    -- * Response Lenses
    dalrrsAccountLimits,
    dalrrsNextToken,
    dalrrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the 'DescribeAccountLimits' action.
--
--
--
-- /See:/ 'describeAccountLimits' smart constructor.
newtype DescribeAccountLimits = DescribeAccountLimits'
  { _dalNextToken ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAccountLimits' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dalNextToken' - A string that identifies the next page of limits that you want to retrieve.
describeAccountLimits ::
  DescribeAccountLimits
describeAccountLimits =
  DescribeAccountLimits' {_dalNextToken = Nothing}

-- | A string that identifies the next page of limits that you want to retrieve.
dalNextToken :: Lens' DescribeAccountLimits (Maybe Text)
dalNextToken = lens _dalNextToken (\s a -> s {_dalNextToken = a})

instance AWSPager DescribeAccountLimits where
  page rq rs
    | stop (rs ^. dalrrsNextToken) = Nothing
    | stop (rs ^. dalrrsAccountLimits) = Nothing
    | otherwise =
      Just $ rq & dalNextToken .~ rs ^. dalrrsNextToken

instance AWSRequest DescribeAccountLimits where
  type
    Rs DescribeAccountLimits =
      DescribeAccountLimitsResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "DescribeAccountLimitsResult"
      ( \s h x ->
          DescribeAccountLimitsResponse'
            <$> ( x .@? "AccountLimits" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAccountLimits

instance NFData DescribeAccountLimits

instance ToHeaders DescribeAccountLimits where
  toHeaders = const mempty

instance ToPath DescribeAccountLimits where
  toPath = const "/"

instance ToQuery DescribeAccountLimits where
  toQuery DescribeAccountLimits' {..} =
    mconcat
      [ "Action" =: ("DescribeAccountLimits" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "NextToken" =: _dalNextToken
      ]

-- | The output for the 'DescribeAccountLimits' action.
--
--
--
-- /See:/ 'describeAccountLimitsResponse' smart constructor.
data DescribeAccountLimitsResponse = DescribeAccountLimitsResponse'
  { _dalrrsAccountLimits ::
      !( Maybe
           [AccountLimit]
       ),
    _dalrrsNextToken ::
      !( Maybe
           Text
       ),
    _dalrrsResponseStatus ::
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

-- | Creates a value of 'DescribeAccountLimitsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dalrrsAccountLimits' - An account limit structure that contain a list of AWS CloudFormation account limits and their values.
--
-- * 'dalrrsNextToken' - If the output exceeds 1 MB in size, a string that identifies the next page of limits. If no additional page exists, this value is null.
--
-- * 'dalrrsResponseStatus' - -- | The response status code.
describeAccountLimitsResponse ::
  -- | 'dalrrsResponseStatus'
  Int ->
  DescribeAccountLimitsResponse
describeAccountLimitsResponse pResponseStatus_ =
  DescribeAccountLimitsResponse'
    { _dalrrsAccountLimits =
        Nothing,
      _dalrrsNextToken = Nothing,
      _dalrrsResponseStatus = pResponseStatus_
    }

-- | An account limit structure that contain a list of AWS CloudFormation account limits and their values.
dalrrsAccountLimits :: Lens' DescribeAccountLimitsResponse [AccountLimit]
dalrrsAccountLimits = lens _dalrrsAccountLimits (\s a -> s {_dalrrsAccountLimits = a}) . _Default . _Coerce

-- | If the output exceeds 1 MB in size, a string that identifies the next page of limits. If no additional page exists, this value is null.
dalrrsNextToken :: Lens' DescribeAccountLimitsResponse (Maybe Text)
dalrrsNextToken = lens _dalrrsNextToken (\s a -> s {_dalrrsNextToken = a})

-- | -- | The response status code.
dalrrsResponseStatus :: Lens' DescribeAccountLimitsResponse Int
dalrrsResponseStatus = lens _dalrrsResponseStatus (\s a -> s {_dalrrsResponseStatus = a})

instance NFData DescribeAccountLimitsResponse
