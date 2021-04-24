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
-- Module      : Network.AWS.AutoScaling.DescribeLifecycleHookTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the available types of lifecycle hooks.
--
--
-- The following hook types are supported:
--
--     * autoscaling:EC2_INSTANCE_LAUNCHING
--
--     * autoscaling:EC2_INSTANCE_TERMINATING
module Network.AWS.AutoScaling.DescribeLifecycleHookTypes
  ( -- * Creating a Request
    describeLifecycleHookTypes,
    DescribeLifecycleHookTypes,

    -- * Destructuring the Response
    describeLifecycleHookTypesResponse,
    DescribeLifecycleHookTypesResponse,

    -- * Response Lenses
    dlhtrrsLifecycleHookTypes,
    dlhtrrsResponseStatus,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeLifecycleHookTypes' smart constructor.
data DescribeLifecycleHookTypes = DescribeLifecycleHookTypes'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeLifecycleHookTypes' with the minimum fields required to make a request.
describeLifecycleHookTypes ::
  DescribeLifecycleHookTypes
describeLifecycleHookTypes =
  DescribeLifecycleHookTypes'

instance AWSRequest DescribeLifecycleHookTypes where
  type
    Rs DescribeLifecycleHookTypes =
      DescribeLifecycleHookTypesResponse
  request = postQuery autoScaling
  response =
    receiveXMLWrapper
      "DescribeLifecycleHookTypesResult"
      ( \s h x ->
          DescribeLifecycleHookTypesResponse'
            <$> ( x .@? "LifecycleHookTypes" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeLifecycleHookTypes

instance NFData DescribeLifecycleHookTypes

instance ToHeaders DescribeLifecycleHookTypes where
  toHeaders = const mempty

instance ToPath DescribeLifecycleHookTypes where
  toPath = const "/"

instance ToQuery DescribeLifecycleHookTypes where
  toQuery =
    const
      ( mconcat
          [ "Action"
              =: ("DescribeLifecycleHookTypes" :: ByteString),
            "Version" =: ("2011-01-01" :: ByteString)
          ]
      )

-- | /See:/ 'describeLifecycleHookTypesResponse' smart constructor.
data DescribeLifecycleHookTypesResponse = DescribeLifecycleHookTypesResponse'
  { _dlhtrrsLifecycleHookTypes ::
      !( Maybe
           [Text]
       ),
    _dlhtrrsResponseStatus ::
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

-- | Creates a value of 'DescribeLifecycleHookTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlhtrrsLifecycleHookTypes' - The lifecycle hook types.
--
-- * 'dlhtrrsResponseStatus' - -- | The response status code.
describeLifecycleHookTypesResponse ::
  -- | 'dlhtrrsResponseStatus'
  Int ->
  DescribeLifecycleHookTypesResponse
describeLifecycleHookTypesResponse pResponseStatus_ =
  DescribeLifecycleHookTypesResponse'
    { _dlhtrrsLifecycleHookTypes =
        Nothing,
      _dlhtrrsResponseStatus =
        pResponseStatus_
    }

-- | The lifecycle hook types.
dlhtrrsLifecycleHookTypes :: Lens' DescribeLifecycleHookTypesResponse [Text]
dlhtrrsLifecycleHookTypes = lens _dlhtrrsLifecycleHookTypes (\s a -> s {_dlhtrrsLifecycleHookTypes = a}) . _Default . _Coerce

-- | -- | The response status code.
dlhtrrsResponseStatus :: Lens' DescribeLifecycleHookTypesResponse Int
dlhtrrsResponseStatus = lens _dlhtrrsResponseStatus (\s a -> s {_dlhtrrsResponseStatus = a})

instance NFData DescribeLifecycleHookTypesResponse
