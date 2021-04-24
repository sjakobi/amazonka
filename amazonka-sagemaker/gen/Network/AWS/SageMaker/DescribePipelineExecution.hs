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
-- Module      : Network.AWS.SageMaker.DescribePipelineExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the details of a pipeline execution.
module Network.AWS.SageMaker.DescribePipelineExecution
  ( -- * Creating a Request
    describePipelineExecution,
    DescribePipelineExecution,

    -- * Request Lenses
    dpePipelineExecutionARN,

    -- * Destructuring the Response
    describePipelineExecutionResponse,
    DescribePipelineExecutionResponse,

    -- * Response Lenses
    dperrsPipelineARN,
    dperrsCreationTime,
    dperrsPipelineExecutionDescription,
    dperrsPipelineExecutionDisplayName,
    dperrsPipelineExecutionStatus,
    dperrsLastModifiedTime,
    dperrsCreatedBy,
    dperrsLastModifiedBy,
    dperrsPipelineExecutionARN,
    dperrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describePipelineExecution' smart constructor.
newtype DescribePipelineExecution = DescribePipelineExecution'
  { _dpePipelineExecutionARN ::
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

-- | Creates a value of 'DescribePipelineExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpePipelineExecutionARN' - The Amazon Resource Name (ARN) of the pipeline execution.
describePipelineExecution ::
  -- | 'dpePipelineExecutionARN'
  Text ->
  DescribePipelineExecution
describePipelineExecution pPipelineExecutionARN_ =
  DescribePipelineExecution'
    { _dpePipelineExecutionARN =
        pPipelineExecutionARN_
    }

-- | The Amazon Resource Name (ARN) of the pipeline execution.
dpePipelineExecutionARN :: Lens' DescribePipelineExecution Text
dpePipelineExecutionARN = lens _dpePipelineExecutionARN (\s a -> s {_dpePipelineExecutionARN = a})

instance AWSRequest DescribePipelineExecution where
  type
    Rs DescribePipelineExecution =
      DescribePipelineExecutionResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribePipelineExecutionResponse'
            <$> (x .?> "PipelineArn")
            <*> (x .?> "CreationTime")
            <*> (x .?> "PipelineExecutionDescription")
            <*> (x .?> "PipelineExecutionDisplayName")
            <*> (x .?> "PipelineExecutionStatus")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "CreatedBy")
            <*> (x .?> "LastModifiedBy")
            <*> (x .?> "PipelineExecutionArn")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribePipelineExecution

instance NFData DescribePipelineExecution

instance ToHeaders DescribePipelineExecution where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.DescribePipelineExecution" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribePipelineExecution where
  toJSON DescribePipelineExecution' {..} =
    object
      ( catMaybes
          [ Just
              ( "PipelineExecutionArn"
                  .= _dpePipelineExecutionARN
              )
          ]
      )

instance ToPath DescribePipelineExecution where
  toPath = const "/"

instance ToQuery DescribePipelineExecution where
  toQuery = const mempty

-- | /See:/ 'describePipelineExecutionResponse' smart constructor.
data DescribePipelineExecutionResponse = DescribePipelineExecutionResponse'
  { _dperrsPipelineARN ::
      !( Maybe
           Text
       ),
    _dperrsCreationTime ::
      !( Maybe
           POSIX
       ),
    _dperrsPipelineExecutionDescription ::
      !( Maybe
           Text
       ),
    _dperrsPipelineExecutionDisplayName ::
      !( Maybe
           Text
       ),
    _dperrsPipelineExecutionStatus ::
      !( Maybe
           PipelineExecutionStatus
       ),
    _dperrsLastModifiedTime ::
      !( Maybe
           POSIX
       ),
    _dperrsCreatedBy ::
      !( Maybe
           UserContext
       ),
    _dperrsLastModifiedBy ::
      !( Maybe
           UserContext
       ),
    _dperrsPipelineExecutionARN ::
      !( Maybe
           Text
       ),
    _dperrsResponseStatus ::
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

-- | Creates a value of 'DescribePipelineExecutionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dperrsPipelineARN' - The Amazon Resource Name (ARN) of the pipeline.
--
-- * 'dperrsCreationTime' - The time when the pipeline execution was created.
--
-- * 'dperrsPipelineExecutionDescription' - The description of the pipeline execution.
--
-- * 'dperrsPipelineExecutionDisplayName' - The display name of the pipeline execution.
--
-- * 'dperrsPipelineExecutionStatus' - The status of the pipeline execution.
--
-- * 'dperrsLastModifiedTime' - The time when the pipeline execution was modified last.
--
-- * 'dperrsCreatedBy' - Undocumented member.
--
-- * 'dperrsLastModifiedBy' - Undocumented member.
--
-- * 'dperrsPipelineExecutionARN' - The Amazon Resource Name (ARN) of the pipeline execution.
--
-- * 'dperrsResponseStatus' - -- | The response status code.
describePipelineExecutionResponse ::
  -- | 'dperrsResponseStatus'
  Int ->
  DescribePipelineExecutionResponse
describePipelineExecutionResponse pResponseStatus_ =
  DescribePipelineExecutionResponse'
    { _dperrsPipelineARN =
        Nothing,
      _dperrsCreationTime = Nothing,
      _dperrsPipelineExecutionDescription =
        Nothing,
      _dperrsPipelineExecutionDisplayName =
        Nothing,
      _dperrsPipelineExecutionStatus = Nothing,
      _dperrsLastModifiedTime = Nothing,
      _dperrsCreatedBy = Nothing,
      _dperrsLastModifiedBy = Nothing,
      _dperrsPipelineExecutionARN = Nothing,
      _dperrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the pipeline.
dperrsPipelineARN :: Lens' DescribePipelineExecutionResponse (Maybe Text)
dperrsPipelineARN = lens _dperrsPipelineARN (\s a -> s {_dperrsPipelineARN = a})

-- | The time when the pipeline execution was created.
dperrsCreationTime :: Lens' DescribePipelineExecutionResponse (Maybe UTCTime)
dperrsCreationTime = lens _dperrsCreationTime (\s a -> s {_dperrsCreationTime = a}) . mapping _Time

-- | The description of the pipeline execution.
dperrsPipelineExecutionDescription :: Lens' DescribePipelineExecutionResponse (Maybe Text)
dperrsPipelineExecutionDescription = lens _dperrsPipelineExecutionDescription (\s a -> s {_dperrsPipelineExecutionDescription = a})

-- | The display name of the pipeline execution.
dperrsPipelineExecutionDisplayName :: Lens' DescribePipelineExecutionResponse (Maybe Text)
dperrsPipelineExecutionDisplayName = lens _dperrsPipelineExecutionDisplayName (\s a -> s {_dperrsPipelineExecutionDisplayName = a})

-- | The status of the pipeline execution.
dperrsPipelineExecutionStatus :: Lens' DescribePipelineExecutionResponse (Maybe PipelineExecutionStatus)
dperrsPipelineExecutionStatus = lens _dperrsPipelineExecutionStatus (\s a -> s {_dperrsPipelineExecutionStatus = a})

-- | The time when the pipeline execution was modified last.
dperrsLastModifiedTime :: Lens' DescribePipelineExecutionResponse (Maybe UTCTime)
dperrsLastModifiedTime = lens _dperrsLastModifiedTime (\s a -> s {_dperrsLastModifiedTime = a}) . mapping _Time

-- | Undocumented member.
dperrsCreatedBy :: Lens' DescribePipelineExecutionResponse (Maybe UserContext)
dperrsCreatedBy = lens _dperrsCreatedBy (\s a -> s {_dperrsCreatedBy = a})

-- | Undocumented member.
dperrsLastModifiedBy :: Lens' DescribePipelineExecutionResponse (Maybe UserContext)
dperrsLastModifiedBy = lens _dperrsLastModifiedBy (\s a -> s {_dperrsLastModifiedBy = a})

-- | The Amazon Resource Name (ARN) of the pipeline execution.
dperrsPipelineExecutionARN :: Lens' DescribePipelineExecutionResponse (Maybe Text)
dperrsPipelineExecutionARN = lens _dperrsPipelineExecutionARN (\s a -> s {_dperrsPipelineExecutionARN = a})

-- | -- | The response status code.
dperrsResponseStatus :: Lens' DescribePipelineExecutionResponse Int
dperrsResponseStatus = lens _dperrsResponseStatus (\s a -> s {_dperrsResponseStatus = a})

instance NFData DescribePipelineExecutionResponse
