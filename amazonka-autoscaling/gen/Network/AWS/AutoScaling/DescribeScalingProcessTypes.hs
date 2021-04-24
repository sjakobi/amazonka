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
-- Module      : Network.AWS.AutoScaling.DescribeScalingProcessTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the scaling process types for use with the 'ResumeProcesses' and 'SuspendProcesses' APIs.
module Network.AWS.AutoScaling.DescribeScalingProcessTypes
  ( -- * Creating a Request
    describeScalingProcessTypes,
    DescribeScalingProcessTypes,

    -- * Destructuring the Response
    describeScalingProcessTypesResponse,
    DescribeScalingProcessTypesResponse,

    -- * Response Lenses
    dsptrrsProcesses,
    dsptrrsResponseStatus,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeScalingProcessTypes' smart constructor.
data DescribeScalingProcessTypes = DescribeScalingProcessTypes'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeScalingProcessTypes' with the minimum fields required to make a request.
describeScalingProcessTypes ::
  DescribeScalingProcessTypes
describeScalingProcessTypes =
  DescribeScalingProcessTypes'

instance AWSRequest DescribeScalingProcessTypes where
  type
    Rs DescribeScalingProcessTypes =
      DescribeScalingProcessTypesResponse
  request = postQuery autoScaling
  response =
    receiveXMLWrapper
      "DescribeScalingProcessTypesResult"
      ( \s h x ->
          DescribeScalingProcessTypesResponse'
            <$> ( x .@? "Processes" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeScalingProcessTypes

instance NFData DescribeScalingProcessTypes

instance ToHeaders DescribeScalingProcessTypes where
  toHeaders = const mempty

instance ToPath DescribeScalingProcessTypes where
  toPath = const "/"

instance ToQuery DescribeScalingProcessTypes where
  toQuery =
    const
      ( mconcat
          [ "Action"
              =: ("DescribeScalingProcessTypes" :: ByteString),
            "Version" =: ("2011-01-01" :: ByteString)
          ]
      )

-- | /See:/ 'describeScalingProcessTypesResponse' smart constructor.
data DescribeScalingProcessTypesResponse = DescribeScalingProcessTypesResponse'
  { _dsptrrsProcesses ::
      !( Maybe
           [ProcessType]
       ),
    _dsptrrsResponseStatus ::
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

-- | Creates a value of 'DescribeScalingProcessTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsptrrsProcesses' - The names of the process types.
--
-- * 'dsptrrsResponseStatus' - -- | The response status code.
describeScalingProcessTypesResponse ::
  -- | 'dsptrrsResponseStatus'
  Int ->
  DescribeScalingProcessTypesResponse
describeScalingProcessTypesResponse pResponseStatus_ =
  DescribeScalingProcessTypesResponse'
    { _dsptrrsProcesses =
        Nothing,
      _dsptrrsResponseStatus =
        pResponseStatus_
    }

-- | The names of the process types.
dsptrrsProcesses :: Lens' DescribeScalingProcessTypesResponse [ProcessType]
dsptrrsProcesses = lens _dsptrrsProcesses (\s a -> s {_dsptrrsProcesses = a}) . _Default . _Coerce

-- | -- | The response status code.
dsptrrsResponseStatus :: Lens' DescribeScalingProcessTypesResponse Int
dsptrrsResponseStatus = lens _dsptrrsResponseStatus (\s a -> s {_dsptrrsResponseStatus = a})

instance NFData DescribeScalingProcessTypesResponse
