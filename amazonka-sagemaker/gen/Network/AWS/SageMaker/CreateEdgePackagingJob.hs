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
-- Module      : Network.AWS.SageMaker.CreateEdgePackagingJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a SageMaker Edge Manager model packaging job. Edge Manager will use the model artifacts from the Amazon Simple Storage Service bucket that you specify. After the model has been packaged, Amazon SageMaker saves the resulting artifacts to an S3 bucket that you specify.
module Network.AWS.SageMaker.CreateEdgePackagingJob
  ( -- * Creating a Request
    createEdgePackagingJob,
    CreateEdgePackagingJob,

    -- * Request Lenses
    cepjResourceKey,
    cepjTags,
    cepjEdgePackagingJobName,
    cepjCompilationJobName,
    cepjModelName,
    cepjModelVersion,
    cepjRoleARN,
    cepjOutputConfig,

    -- * Destructuring the Response
    createEdgePackagingJobResponse,
    CreateEdgePackagingJobResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createEdgePackagingJob' smart constructor.
data CreateEdgePackagingJob = CreateEdgePackagingJob'
  { _cepjResourceKey ::
      !(Maybe Text),
    _cepjTags ::
      !(Maybe [Tag]),
    _cepjEdgePackagingJobName ::
      !Text,
    _cepjCompilationJobName ::
      !Text,
    _cepjModelName :: !Text,
    _cepjModelVersion ::
      !Text,
    _cepjRoleARN :: !Text,
    _cepjOutputConfig ::
      !EdgeOutputConfig
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateEdgePackagingJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cepjResourceKey' - The CMK to use when encrypting the EBS volume the edge packaging job runs on.
--
-- * 'cepjTags' - Creates tags for the packaging job.
--
-- * 'cepjEdgePackagingJobName' - The name of the edge packaging job.
--
-- * 'cepjCompilationJobName' - The name of the SageMaker Neo compilation job that will be used to locate model artifacts for packaging.
--
-- * 'cepjModelName' - The name of the model.
--
-- * 'cepjModelVersion' - The version of the model.
--
-- * 'cepjRoleARN' - The Amazon Resource Name (ARN) of an IAM role that enables Amazon SageMaker to download and upload the model, and to contact SageMaker Neo.
--
-- * 'cepjOutputConfig' - Provides information about the output location for the packaged model.
createEdgePackagingJob ::
  -- | 'cepjEdgePackagingJobName'
  Text ->
  -- | 'cepjCompilationJobName'
  Text ->
  -- | 'cepjModelName'
  Text ->
  -- | 'cepjModelVersion'
  Text ->
  -- | 'cepjRoleARN'
  Text ->
  -- | 'cepjOutputConfig'
  EdgeOutputConfig ->
  CreateEdgePackagingJob
createEdgePackagingJob
  pEdgePackagingJobName_
  pCompilationJobName_
  pModelName_
  pModelVersion_
  pRoleARN_
  pOutputConfig_ =
    CreateEdgePackagingJob'
      { _cepjResourceKey = Nothing,
        _cepjTags = Nothing,
        _cepjEdgePackagingJobName = pEdgePackagingJobName_,
        _cepjCompilationJobName = pCompilationJobName_,
        _cepjModelName = pModelName_,
        _cepjModelVersion = pModelVersion_,
        _cepjRoleARN = pRoleARN_,
        _cepjOutputConfig = pOutputConfig_
      }

-- | The CMK to use when encrypting the EBS volume the edge packaging job runs on.
cepjResourceKey :: Lens' CreateEdgePackagingJob (Maybe Text)
cepjResourceKey = lens _cepjResourceKey (\s a -> s {_cepjResourceKey = a})

-- | Creates tags for the packaging job.
cepjTags :: Lens' CreateEdgePackagingJob [Tag]
cepjTags = lens _cepjTags (\s a -> s {_cepjTags = a}) . _Default . _Coerce

-- | The name of the edge packaging job.
cepjEdgePackagingJobName :: Lens' CreateEdgePackagingJob Text
cepjEdgePackagingJobName = lens _cepjEdgePackagingJobName (\s a -> s {_cepjEdgePackagingJobName = a})

-- | The name of the SageMaker Neo compilation job that will be used to locate model artifacts for packaging.
cepjCompilationJobName :: Lens' CreateEdgePackagingJob Text
cepjCompilationJobName = lens _cepjCompilationJobName (\s a -> s {_cepjCompilationJobName = a})

-- | The name of the model.
cepjModelName :: Lens' CreateEdgePackagingJob Text
cepjModelName = lens _cepjModelName (\s a -> s {_cepjModelName = a})

-- | The version of the model.
cepjModelVersion :: Lens' CreateEdgePackagingJob Text
cepjModelVersion = lens _cepjModelVersion (\s a -> s {_cepjModelVersion = a})

-- | The Amazon Resource Name (ARN) of an IAM role that enables Amazon SageMaker to download and upload the model, and to contact SageMaker Neo.
cepjRoleARN :: Lens' CreateEdgePackagingJob Text
cepjRoleARN = lens _cepjRoleARN (\s a -> s {_cepjRoleARN = a})

-- | Provides information about the output location for the packaged model.
cepjOutputConfig :: Lens' CreateEdgePackagingJob EdgeOutputConfig
cepjOutputConfig = lens _cepjOutputConfig (\s a -> s {_cepjOutputConfig = a})

instance AWSRequest CreateEdgePackagingJob where
  type
    Rs CreateEdgePackagingJob =
      CreateEdgePackagingJobResponse
  request = postJSON sageMaker
  response =
    receiveNull CreateEdgePackagingJobResponse'

instance Hashable CreateEdgePackagingJob

instance NFData CreateEdgePackagingJob

instance ToHeaders CreateEdgePackagingJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.CreateEdgePackagingJob" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateEdgePackagingJob where
  toJSON CreateEdgePackagingJob' {..} =
    object
      ( catMaybes
          [ ("ResourceKey" .=) <$> _cepjResourceKey,
            ("Tags" .=) <$> _cepjTags,
            Just
              ( "EdgePackagingJobName"
                  .= _cepjEdgePackagingJobName
              ),
            Just
              ("CompilationJobName" .= _cepjCompilationJobName),
            Just ("ModelName" .= _cepjModelName),
            Just ("ModelVersion" .= _cepjModelVersion),
            Just ("RoleArn" .= _cepjRoleARN),
            Just ("OutputConfig" .= _cepjOutputConfig)
          ]
      )

instance ToPath CreateEdgePackagingJob where
  toPath = const "/"

instance ToQuery CreateEdgePackagingJob where
  toQuery = const mempty

-- | /See:/ 'createEdgePackagingJobResponse' smart constructor.
data CreateEdgePackagingJobResponse = CreateEdgePackagingJobResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateEdgePackagingJobResponse' with the minimum fields required to make a request.
createEdgePackagingJobResponse ::
  CreateEdgePackagingJobResponse
createEdgePackagingJobResponse =
  CreateEdgePackagingJobResponse'

instance NFData CreateEdgePackagingJobResponse
