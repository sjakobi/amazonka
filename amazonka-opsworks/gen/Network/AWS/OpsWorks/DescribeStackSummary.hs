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
-- Module      : Network.AWS.OpsWorks.DescribeStackSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the number of layers and apps in a specified stack, and the number of instances in each state, such as @running_setup@ or @online@ .
--
--
-- __Required Permissions__ : To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions> .
module Network.AWS.OpsWorks.DescribeStackSummary
  ( -- * Creating a Request
    describeStackSummary,
    DescribeStackSummary,

    -- * Request Lenses
    dssStackId,

    -- * Destructuring the Response
    describeStackSummaryResponse,
    DescribeStackSummaryResponse,

    -- * Response Lenses
    dssrrsStackSummary,
    dssrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeStackSummary' smart constructor.
newtype DescribeStackSummary = DescribeStackSummary'
  { _dssStackId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeStackSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssStackId' - The stack ID.
describeStackSummary ::
  -- | 'dssStackId'
  Text ->
  DescribeStackSummary
describeStackSummary pStackId_ =
  DescribeStackSummary' {_dssStackId = pStackId_}

-- | The stack ID.
dssStackId :: Lens' DescribeStackSummary Text
dssStackId = lens _dssStackId (\s a -> s {_dssStackId = a})

instance AWSRequest DescribeStackSummary where
  type
    Rs DescribeStackSummary =
      DescribeStackSummaryResponse
  request = postJSON opsWorks
  response =
    receiveJSON
      ( \s h x ->
          DescribeStackSummaryResponse'
            <$> (x .?> "StackSummary") <*> (pure (fromEnum s))
      )

instance Hashable DescribeStackSummary

instance NFData DescribeStackSummary

instance ToHeaders DescribeStackSummary where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OpsWorks_20130218.DescribeStackSummary" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeStackSummary where
  toJSON DescribeStackSummary' {..} =
    object
      (catMaybes [Just ("StackId" .= _dssStackId)])

instance ToPath DescribeStackSummary where
  toPath = const "/"

instance ToQuery DescribeStackSummary where
  toQuery = const mempty

-- | Contains the response to a @DescribeStackSummary@ request.
--
--
--
-- /See:/ 'describeStackSummaryResponse' smart constructor.
data DescribeStackSummaryResponse = DescribeStackSummaryResponse'
  { _dssrrsStackSummary ::
      !( Maybe
           StackSummary
       ),
    _dssrrsResponseStatus ::
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

-- | Creates a value of 'DescribeStackSummaryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssrrsStackSummary' - A @StackSummary@ object that contains the results.
--
-- * 'dssrrsResponseStatus' - -- | The response status code.
describeStackSummaryResponse ::
  -- | 'dssrrsResponseStatus'
  Int ->
  DescribeStackSummaryResponse
describeStackSummaryResponse pResponseStatus_ =
  DescribeStackSummaryResponse'
    { _dssrrsStackSummary =
        Nothing,
      _dssrrsResponseStatus = pResponseStatus_
    }

-- | A @StackSummary@ object that contains the results.
dssrrsStackSummary :: Lens' DescribeStackSummaryResponse (Maybe StackSummary)
dssrrsStackSummary = lens _dssrrsStackSummary (\s a -> s {_dssrrsStackSummary = a})

-- | -- | The response status code.
dssrrsResponseStatus :: Lens' DescribeStackSummaryResponse Int
dssrrsResponseStatus = lens _dssrrsResponseStatus (\s a -> s {_dssrrsResponseStatus = a})

instance NFData DescribeStackSummaryResponse
