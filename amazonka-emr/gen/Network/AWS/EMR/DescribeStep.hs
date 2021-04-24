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
-- Module      : Network.AWS.EMR.DescribeStep
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides more detail about the cluster step.
module Network.AWS.EMR.DescribeStep
  ( -- * Creating a Request
    describeStep,
    DescribeStep,

    -- * Request Lenses
    dsClusterId,
    dsStepId,

    -- * Destructuring the Response
    describeStepResponse,
    DescribeStepResponse,

    -- * Response Lenses
    dsrrsStep,
    dsrrsResponseStatus,
  )
where

import Network.AWS.EMR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | This input determines which step to describe.
--
--
--
-- /See:/ 'describeStep' smart constructor.
data DescribeStep = DescribeStep'
  { _dsClusterId ::
      !Text,
    _dsStepId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeStep' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsClusterId' - The identifier of the cluster with steps to describe.
--
-- * 'dsStepId' - The identifier of the step to describe.
describeStep ::
  -- | 'dsClusterId'
  Text ->
  -- | 'dsStepId'
  Text ->
  DescribeStep
describeStep pClusterId_ pStepId_ =
  DescribeStep'
    { _dsClusterId = pClusterId_,
      _dsStepId = pStepId_
    }

-- | The identifier of the cluster with steps to describe.
dsClusterId :: Lens' DescribeStep Text
dsClusterId = lens _dsClusterId (\s a -> s {_dsClusterId = a})

-- | The identifier of the step to describe.
dsStepId :: Lens' DescribeStep Text
dsStepId = lens _dsStepId (\s a -> s {_dsStepId = a})

instance AWSRequest DescribeStep where
  type Rs DescribeStep = DescribeStepResponse
  request = postJSON emr
  response =
    receiveJSON
      ( \s h x ->
          DescribeStepResponse'
            <$> (x .?> "Step") <*> (pure (fromEnum s))
      )

instance Hashable DescribeStep

instance NFData DescribeStep

instance ToHeaders DescribeStep where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("ElasticMapReduce.DescribeStep" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeStep where
  toJSON DescribeStep' {..} =
    object
      ( catMaybes
          [ Just ("ClusterId" .= _dsClusterId),
            Just ("StepId" .= _dsStepId)
          ]
      )

instance ToPath DescribeStep where
  toPath = const "/"

instance ToQuery DescribeStep where
  toQuery = const mempty

-- | This output contains the description of the cluster step.
--
--
--
-- /See:/ 'describeStepResponse' smart constructor.
data DescribeStepResponse = DescribeStepResponse'
  { _dsrrsStep ::
      !(Maybe Step),
    _dsrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeStepResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrrsStep' - The step details for the requested step identifier.
--
-- * 'dsrrsResponseStatus' - -- | The response status code.
describeStepResponse ::
  -- | 'dsrrsResponseStatus'
  Int ->
  DescribeStepResponse
describeStepResponse pResponseStatus_ =
  DescribeStepResponse'
    { _dsrrsStep = Nothing,
      _dsrrsResponseStatus = pResponseStatus_
    }

-- | The step details for the requested step identifier.
dsrrsStep :: Lens' DescribeStepResponse (Maybe Step)
dsrrsStep = lens _dsrrsStep (\s a -> s {_dsrrsStep = a})

-- | -- | The response status code.
dsrrsResponseStatus :: Lens' DescribeStepResponse Int
dsrrsResponseStatus = lens _dsrrsResponseStatus (\s a -> s {_dsrrsResponseStatus = a})

instance NFData DescribeStepResponse
