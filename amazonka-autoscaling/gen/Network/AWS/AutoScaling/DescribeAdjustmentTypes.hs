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
-- Module      : Network.AWS.AutoScaling.DescribeAdjustmentTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the available adjustment types for Amazon EC2 Auto Scaling scaling policies. These settings apply to step scaling policies and simple scaling policies; they do not apply to target tracking scaling policies.
--
--
-- The following adjustment types are supported:
--
--     * ChangeInCapacity
--
--     * ExactCapacity
--
--     * PercentChangeInCapacity
module Network.AWS.AutoScaling.DescribeAdjustmentTypes
  ( -- * Creating a Request
    describeAdjustmentTypes,
    DescribeAdjustmentTypes,

    -- * Destructuring the Response
    describeAdjustmentTypesResponse,
    DescribeAdjustmentTypesResponse,

    -- * Response Lenses
    datrrsAdjustmentTypes,
    datrrsResponseStatus,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAdjustmentTypes' smart constructor.
data DescribeAdjustmentTypes = DescribeAdjustmentTypes'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAdjustmentTypes' with the minimum fields required to make a request.
describeAdjustmentTypes ::
  DescribeAdjustmentTypes
describeAdjustmentTypes = DescribeAdjustmentTypes'

instance AWSRequest DescribeAdjustmentTypes where
  type
    Rs DescribeAdjustmentTypes =
      DescribeAdjustmentTypesResponse
  request = postQuery autoScaling
  response =
    receiveXMLWrapper
      "DescribeAdjustmentTypesResult"
      ( \s h x ->
          DescribeAdjustmentTypesResponse'
            <$> ( x .@? "AdjustmentTypes" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAdjustmentTypes

instance NFData DescribeAdjustmentTypes

instance ToHeaders DescribeAdjustmentTypes where
  toHeaders = const mempty

instance ToPath DescribeAdjustmentTypes where
  toPath = const "/"

instance ToQuery DescribeAdjustmentTypes where
  toQuery =
    const
      ( mconcat
          [ "Action"
              =: ("DescribeAdjustmentTypes" :: ByteString),
            "Version" =: ("2011-01-01" :: ByteString)
          ]
      )

-- | /See:/ 'describeAdjustmentTypesResponse' smart constructor.
data DescribeAdjustmentTypesResponse = DescribeAdjustmentTypesResponse'
  { _datrrsAdjustmentTypes ::
      !( Maybe
           [AdjustmentType]
       ),
    _datrrsResponseStatus ::
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

-- | Creates a value of 'DescribeAdjustmentTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'datrrsAdjustmentTypes' - The policy adjustment types.
--
-- * 'datrrsResponseStatus' - -- | The response status code.
describeAdjustmentTypesResponse ::
  -- | 'datrrsResponseStatus'
  Int ->
  DescribeAdjustmentTypesResponse
describeAdjustmentTypesResponse pResponseStatus_ =
  DescribeAdjustmentTypesResponse'
    { _datrrsAdjustmentTypes =
        Nothing,
      _datrrsResponseStatus = pResponseStatus_
    }

-- | The policy adjustment types.
datrrsAdjustmentTypes :: Lens' DescribeAdjustmentTypesResponse [AdjustmentType]
datrrsAdjustmentTypes = lens _datrrsAdjustmentTypes (\s a -> s {_datrrsAdjustmentTypes = a}) . _Default . _Coerce

-- | -- | The response status code.
datrrsResponseStatus :: Lens' DescribeAdjustmentTypesResponse Int
datrrsResponseStatus = lens _datrrsResponseStatus (\s a -> s {_datrrsResponseStatus = a})

instance NFData DescribeAdjustmentTypesResponse
