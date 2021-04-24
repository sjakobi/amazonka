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
-- Module      : Network.AWS.AutoScaling.DescribeTerminationPolicyTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the termination policies supported by Amazon EC2 Auto Scaling.
--
--
-- For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html Controlling which Auto Scaling instances terminate during scale in> in the /Amazon EC2 Auto Scaling User Guide/ .
module Network.AWS.AutoScaling.DescribeTerminationPolicyTypes
  ( -- * Creating a Request
    describeTerminationPolicyTypes,
    DescribeTerminationPolicyTypes,

    -- * Destructuring the Response
    describeTerminationPolicyTypesResponse,
    DescribeTerminationPolicyTypesResponse,

    -- * Response Lenses
    dtptrrsTerminationPolicyTypes,
    dtptrrsResponseStatus,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTerminationPolicyTypes' smart constructor.
data DescribeTerminationPolicyTypes = DescribeTerminationPolicyTypes'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeTerminationPolicyTypes' with the minimum fields required to make a request.
describeTerminationPolicyTypes ::
  DescribeTerminationPolicyTypes
describeTerminationPolicyTypes =
  DescribeTerminationPolicyTypes'

instance AWSRequest DescribeTerminationPolicyTypes where
  type
    Rs DescribeTerminationPolicyTypes =
      DescribeTerminationPolicyTypesResponse
  request = postQuery autoScaling
  response =
    receiveXMLWrapper
      "DescribeTerminationPolicyTypesResult"
      ( \s h x ->
          DescribeTerminationPolicyTypesResponse'
            <$> ( x .@? "TerminationPolicyTypes" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTerminationPolicyTypes

instance NFData DescribeTerminationPolicyTypes

instance ToHeaders DescribeTerminationPolicyTypes where
  toHeaders = const mempty

instance ToPath DescribeTerminationPolicyTypes where
  toPath = const "/"

instance ToQuery DescribeTerminationPolicyTypes where
  toQuery =
    const
      ( mconcat
          [ "Action"
              =: ("DescribeTerminationPolicyTypes" :: ByteString),
            "Version" =: ("2011-01-01" :: ByteString)
          ]
      )

-- | /See:/ 'describeTerminationPolicyTypesResponse' smart constructor.
data DescribeTerminationPolicyTypesResponse = DescribeTerminationPolicyTypesResponse'
  { _dtptrrsTerminationPolicyTypes ::
      !( Maybe
           [Text]
       ),
    _dtptrrsResponseStatus ::
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

-- | Creates a value of 'DescribeTerminationPolicyTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtptrrsTerminationPolicyTypes' - The termination policies supported by Amazon EC2 Auto Scaling: @OldestInstance@ , @OldestLaunchConfiguration@ , @NewestInstance@ , @ClosestToNextInstanceHour@ , @Default@ , @OldestLaunchTemplate@ , and @AllocationStrategy@ .
--
-- * 'dtptrrsResponseStatus' - -- | The response status code.
describeTerminationPolicyTypesResponse ::
  -- | 'dtptrrsResponseStatus'
  Int ->
  DescribeTerminationPolicyTypesResponse
describeTerminationPolicyTypesResponse
  pResponseStatus_ =
    DescribeTerminationPolicyTypesResponse'
      { _dtptrrsTerminationPolicyTypes =
          Nothing,
        _dtptrrsResponseStatus =
          pResponseStatus_
      }

-- | The termination policies supported by Amazon EC2 Auto Scaling: @OldestInstance@ , @OldestLaunchConfiguration@ , @NewestInstance@ , @ClosestToNextInstanceHour@ , @Default@ , @OldestLaunchTemplate@ , and @AllocationStrategy@ .
dtptrrsTerminationPolicyTypes :: Lens' DescribeTerminationPolicyTypesResponse [Text]
dtptrrsTerminationPolicyTypes = lens _dtptrrsTerminationPolicyTypes (\s a -> s {_dtptrrsTerminationPolicyTypes = a}) . _Default . _Coerce

-- | -- | The response status code.
dtptrrsResponseStatus :: Lens' DescribeTerminationPolicyTypesResponse Int
dtptrrsResponseStatus = lens _dtptrrsResponseStatus (\s a -> s {_dtptrrsResponseStatus = a})

instance
  NFData
    DescribeTerminationPolicyTypesResponse
