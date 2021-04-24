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
-- Module      : Network.AWS.AutoScaling.DescribeLifecycleHooks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the lifecycle hooks for the specified Auto Scaling group.
module Network.AWS.AutoScaling.DescribeLifecycleHooks
  ( -- * Creating a Request
    describeLifecycleHooks,
    DescribeLifecycleHooks,

    -- * Request Lenses
    dlhsLifecycleHookNames,
    dlhsAutoScalingGroupName,

    -- * Destructuring the Response
    describeLifecycleHooksResponse,
    DescribeLifecycleHooksResponse,

    -- * Response Lenses
    drsLifecycleHooks,
    drsResponseStatus,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeLifecycleHooks' smart constructor.
data DescribeLifecycleHooks = DescribeLifecycleHooks'
  { _dlhsLifecycleHookNames ::
      !(Maybe [Text]),
    _dlhsAutoScalingGroupName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeLifecycleHooks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlhsLifecycleHookNames' - The names of one or more lifecycle hooks. If you omit this parameter, all lifecycle hooks are described.
--
-- * 'dlhsAutoScalingGroupName' - The name of the Auto Scaling group.
describeLifecycleHooks ::
  -- | 'dlhsAutoScalingGroupName'
  Text ->
  DescribeLifecycleHooks
describeLifecycleHooks pAutoScalingGroupName_ =
  DescribeLifecycleHooks'
    { _dlhsLifecycleHookNames =
        Nothing,
      _dlhsAutoScalingGroupName = pAutoScalingGroupName_
    }

-- | The names of one or more lifecycle hooks. If you omit this parameter, all lifecycle hooks are described.
dlhsLifecycleHookNames :: Lens' DescribeLifecycleHooks [Text]
dlhsLifecycleHookNames = lens _dlhsLifecycleHookNames (\s a -> s {_dlhsLifecycleHookNames = a}) . _Default . _Coerce

-- | The name of the Auto Scaling group.
dlhsAutoScalingGroupName :: Lens' DescribeLifecycleHooks Text
dlhsAutoScalingGroupName = lens _dlhsAutoScalingGroupName (\s a -> s {_dlhsAutoScalingGroupName = a})

instance AWSRequest DescribeLifecycleHooks where
  type
    Rs DescribeLifecycleHooks =
      DescribeLifecycleHooksResponse
  request = postQuery autoScaling
  response =
    receiveXMLWrapper
      "DescribeLifecycleHooksResult"
      ( \s h x ->
          DescribeLifecycleHooksResponse'
            <$> ( x .@? "LifecycleHooks" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeLifecycleHooks

instance NFData DescribeLifecycleHooks

instance ToHeaders DescribeLifecycleHooks where
  toHeaders = const mempty

instance ToPath DescribeLifecycleHooks where
  toPath = const "/"

instance ToQuery DescribeLifecycleHooks where
  toQuery DescribeLifecycleHooks' {..} =
    mconcat
      [ "Action"
          =: ("DescribeLifecycleHooks" :: ByteString),
        "Version" =: ("2011-01-01" :: ByteString),
        "LifecycleHookNames"
          =: toQuery
            (toQueryList "member" <$> _dlhsLifecycleHookNames),
        "AutoScalingGroupName" =: _dlhsAutoScalingGroupName
      ]

-- | /See:/ 'describeLifecycleHooksResponse' smart constructor.
data DescribeLifecycleHooksResponse = DescribeLifecycleHooksResponse'
  { _drsLifecycleHooks ::
      !( Maybe
           [LifecycleHook]
       ),
    _drsResponseStatus ::
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

-- | Creates a value of 'DescribeLifecycleHooksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsLifecycleHooks' - The lifecycle hooks for the specified group.
--
-- * 'drsResponseStatus' - -- | The response status code.
describeLifecycleHooksResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeLifecycleHooksResponse
describeLifecycleHooksResponse pResponseStatus_ =
  DescribeLifecycleHooksResponse'
    { _drsLifecycleHooks =
        Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | The lifecycle hooks for the specified group.
drsLifecycleHooks :: Lens' DescribeLifecycleHooksResponse [LifecycleHook]
drsLifecycleHooks = lens _drsLifecycleHooks (\s a -> s {_drsLifecycleHooks = a}) . _Default . _Coerce

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeLifecycleHooksResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DescribeLifecycleHooksResponse
