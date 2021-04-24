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
-- Module      : Network.AWS.AutoScaling.DescribeAccountLimits
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the current Amazon EC2 Auto Scaling resource quotas for your AWS account.
--
--
-- For information about requesting an increase, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-account-limits.html Amazon EC2 Auto Scaling service quotas> in the /Amazon EC2 Auto Scaling User Guide/ .
module Network.AWS.AutoScaling.DescribeAccountLimits
  ( -- * Creating a Request
    describeAccountLimits,
    DescribeAccountLimits,

    -- * Destructuring the Response
    describeAccountLimitsResponse,
    DescribeAccountLimitsResponse,

    -- * Response Lenses
    dalrrsNumberOfAutoScalingGroups,
    dalrrsMaxNumberOfLaunchConfigurations,
    dalrrsNumberOfLaunchConfigurations,
    dalrrsMaxNumberOfAutoScalingGroups,
    dalrrsResponseStatus,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAccountLimits' smart constructor.
data DescribeAccountLimits = DescribeAccountLimits'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAccountLimits' with the minimum fields required to make a request.
describeAccountLimits ::
  DescribeAccountLimits
describeAccountLimits = DescribeAccountLimits'

instance AWSRequest DescribeAccountLimits where
  type
    Rs DescribeAccountLimits =
      DescribeAccountLimitsResponse
  request = postQuery autoScaling
  response =
    receiveXMLWrapper
      "DescribeAccountLimitsResult"
      ( \s h x ->
          DescribeAccountLimitsResponse'
            <$> (x .@? "NumberOfAutoScalingGroups")
            <*> (x .@? "MaxNumberOfLaunchConfigurations")
            <*> (x .@? "NumberOfLaunchConfigurations")
            <*> (x .@? "MaxNumberOfAutoScalingGroups")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAccountLimits

instance NFData DescribeAccountLimits

instance ToHeaders DescribeAccountLimits where
  toHeaders = const mempty

instance ToPath DescribeAccountLimits where
  toPath = const "/"

instance ToQuery DescribeAccountLimits where
  toQuery =
    const
      ( mconcat
          [ "Action" =: ("DescribeAccountLimits" :: ByteString),
            "Version" =: ("2011-01-01" :: ByteString)
          ]
      )

-- | /See:/ 'describeAccountLimitsResponse' smart constructor.
data DescribeAccountLimitsResponse = DescribeAccountLimitsResponse'
  { _dalrrsNumberOfAutoScalingGroups ::
      !( Maybe
           Int
       ),
    _dalrrsMaxNumberOfLaunchConfigurations ::
      !( Maybe
           Int
       ),
    _dalrrsNumberOfLaunchConfigurations ::
      !( Maybe
           Int
       ),
    _dalrrsMaxNumberOfAutoScalingGroups ::
      !( Maybe
           Int
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
-- * 'dalrrsNumberOfAutoScalingGroups' - The current number of groups for your AWS account.
--
-- * 'dalrrsMaxNumberOfLaunchConfigurations' - The maximum number of launch configurations allowed for your AWS account. The default is 200 launch configurations per AWS Region.
--
-- * 'dalrrsNumberOfLaunchConfigurations' - The current number of launch configurations for your AWS account.
--
-- * 'dalrrsMaxNumberOfAutoScalingGroups' - The maximum number of groups allowed for your AWS account. The default is 200 groups per AWS Region.
--
-- * 'dalrrsResponseStatus' - -- | The response status code.
describeAccountLimitsResponse ::
  -- | 'dalrrsResponseStatus'
  Int ->
  DescribeAccountLimitsResponse
describeAccountLimitsResponse pResponseStatus_ =
  DescribeAccountLimitsResponse'
    { _dalrrsNumberOfAutoScalingGroups =
        Nothing,
      _dalrrsMaxNumberOfLaunchConfigurations =
        Nothing,
      _dalrrsNumberOfLaunchConfigurations =
        Nothing,
      _dalrrsMaxNumberOfAutoScalingGroups =
        Nothing,
      _dalrrsResponseStatus = pResponseStatus_
    }

-- | The current number of groups for your AWS account.
dalrrsNumberOfAutoScalingGroups :: Lens' DescribeAccountLimitsResponse (Maybe Int)
dalrrsNumberOfAutoScalingGroups = lens _dalrrsNumberOfAutoScalingGroups (\s a -> s {_dalrrsNumberOfAutoScalingGroups = a})

-- | The maximum number of launch configurations allowed for your AWS account. The default is 200 launch configurations per AWS Region.
dalrrsMaxNumberOfLaunchConfigurations :: Lens' DescribeAccountLimitsResponse (Maybe Int)
dalrrsMaxNumberOfLaunchConfigurations = lens _dalrrsMaxNumberOfLaunchConfigurations (\s a -> s {_dalrrsMaxNumberOfLaunchConfigurations = a})

-- | The current number of launch configurations for your AWS account.
dalrrsNumberOfLaunchConfigurations :: Lens' DescribeAccountLimitsResponse (Maybe Int)
dalrrsNumberOfLaunchConfigurations = lens _dalrrsNumberOfLaunchConfigurations (\s a -> s {_dalrrsNumberOfLaunchConfigurations = a})

-- | The maximum number of groups allowed for your AWS account. The default is 200 groups per AWS Region.
dalrrsMaxNumberOfAutoScalingGroups :: Lens' DescribeAccountLimitsResponse (Maybe Int)
dalrrsMaxNumberOfAutoScalingGroups = lens _dalrrsMaxNumberOfAutoScalingGroups (\s a -> s {_dalrrsMaxNumberOfAutoScalingGroups = a})

-- | -- | The response status code.
dalrrsResponseStatus :: Lens' DescribeAccountLimitsResponse Int
dalrrsResponseStatus = lens _dalrrsResponseStatus (\s a -> s {_dalrrsResponseStatus = a})

instance NFData DescribeAccountLimitsResponse
