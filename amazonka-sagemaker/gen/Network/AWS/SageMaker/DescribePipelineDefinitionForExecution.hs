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
-- Module      : Network.AWS.SageMaker.DescribePipelineDefinitionForExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the details of an execution's pipeline definition.
module Network.AWS.SageMaker.DescribePipelineDefinitionForExecution
  ( -- * Creating a Request
    describePipelineDefinitionForExecution,
    DescribePipelineDefinitionForExecution,

    -- * Request Lenses
    dpdfePipelineExecutionARN,

    -- * Destructuring the Response
    describePipelineDefinitionForExecutionResponse,
    DescribePipelineDefinitionForExecutionResponse,

    -- * Response Lenses
    dpdferrsCreationTime,
    dpdferrsPipelineDefinition,
    dpdferrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describePipelineDefinitionForExecution' smart constructor.
newtype DescribePipelineDefinitionForExecution = DescribePipelineDefinitionForExecution'
  { _dpdfePipelineExecutionARN ::
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

-- | Creates a value of 'DescribePipelineDefinitionForExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpdfePipelineExecutionARN' - The Amazon Resource Name (ARN) of the pipeline execution.
describePipelineDefinitionForExecution ::
  -- | 'dpdfePipelineExecutionARN'
  Text ->
  DescribePipelineDefinitionForExecution
describePipelineDefinitionForExecution
  pPipelineExecutionARN_ =
    DescribePipelineDefinitionForExecution'
      { _dpdfePipelineExecutionARN =
          pPipelineExecutionARN_
      }

-- | The Amazon Resource Name (ARN) of the pipeline execution.
dpdfePipelineExecutionARN :: Lens' DescribePipelineDefinitionForExecution Text
dpdfePipelineExecutionARN = lens _dpdfePipelineExecutionARN (\s a -> s {_dpdfePipelineExecutionARN = a})

instance
  AWSRequest
    DescribePipelineDefinitionForExecution
  where
  type
    Rs DescribePipelineDefinitionForExecution =
      DescribePipelineDefinitionForExecutionResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribePipelineDefinitionForExecutionResponse'
            <$> (x .?> "CreationTime")
            <*> (x .?> "PipelineDefinition")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribePipelineDefinitionForExecution

instance
  NFData
    DescribePipelineDefinitionForExecution

instance
  ToHeaders
    DescribePipelineDefinitionForExecution
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.DescribePipelineDefinitionForExecution" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    DescribePipelineDefinitionForExecution
  where
  toJSON DescribePipelineDefinitionForExecution' {..} =
    object
      ( catMaybes
          [ Just
              ( "PipelineExecutionArn"
                  .= _dpdfePipelineExecutionARN
              )
          ]
      )

instance
  ToPath
    DescribePipelineDefinitionForExecution
  where
  toPath = const "/"

instance
  ToQuery
    DescribePipelineDefinitionForExecution
  where
  toQuery = const mempty

-- | /See:/ 'describePipelineDefinitionForExecutionResponse' smart constructor.
data DescribePipelineDefinitionForExecutionResponse = DescribePipelineDefinitionForExecutionResponse'
  { _dpdferrsCreationTime ::
      !( Maybe
           POSIX
       ),
    _dpdferrsPipelineDefinition ::
      !( Maybe
           Text
       ),
    _dpdferrsResponseStatus ::
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

-- | Creates a value of 'DescribePipelineDefinitionForExecutionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpdferrsCreationTime' - The time when the pipeline was created.
--
-- * 'dpdferrsPipelineDefinition' - The JSON pipeline definition.
--
-- * 'dpdferrsResponseStatus' - -- | The response status code.
describePipelineDefinitionForExecutionResponse ::
  -- | 'dpdferrsResponseStatus'
  Int ->
  DescribePipelineDefinitionForExecutionResponse
describePipelineDefinitionForExecutionResponse
  pResponseStatus_ =
    DescribePipelineDefinitionForExecutionResponse'
      { _dpdferrsCreationTime =
          Nothing,
        _dpdferrsPipelineDefinition =
          Nothing,
        _dpdferrsResponseStatus =
          pResponseStatus_
      }

-- | The time when the pipeline was created.
dpdferrsCreationTime :: Lens' DescribePipelineDefinitionForExecutionResponse (Maybe UTCTime)
dpdferrsCreationTime = lens _dpdferrsCreationTime (\s a -> s {_dpdferrsCreationTime = a}) . mapping _Time

-- | The JSON pipeline definition.
dpdferrsPipelineDefinition :: Lens' DescribePipelineDefinitionForExecutionResponse (Maybe Text)
dpdferrsPipelineDefinition = lens _dpdferrsPipelineDefinition (\s a -> s {_dpdferrsPipelineDefinition = a})

-- | -- | The response status code.
dpdferrsResponseStatus :: Lens' DescribePipelineDefinitionForExecutionResponse Int
dpdferrsResponseStatus = lens _dpdferrsResponseStatus (\s a -> s {_dpdferrsResponseStatus = a})

instance
  NFData
    DescribePipelineDefinitionForExecutionResponse
