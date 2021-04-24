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
-- Module      : Network.AWS.SageMaker.CreatePipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a pipeline using a JSON pipeline definition.
module Network.AWS.SageMaker.CreatePipeline
  ( -- * Creating a Request
    createPipeline,
    CreatePipeline,

    -- * Request Lenses
    cPipelineDescription,
    cPipelineDisplayName,
    cTags,
    cPipelineName,
    cPipelineDefinition,
    cClientRequestToken,
    cRoleARN,

    -- * Destructuring the Response
    createPipelineResponse,
    CreatePipelineResponse,

    -- * Response Lenses
    cprprsPipelineARN,
    cprprsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createPipeline' smart constructor.
data CreatePipeline = CreatePipeline'
  { _cPipelineDescription ::
      !(Maybe Text),
    _cPipelineDisplayName :: !(Maybe Text),
    _cTags :: !(Maybe [Tag]),
    _cPipelineName :: !Text,
    _cPipelineDefinition :: !Text,
    _cClientRequestToken :: !Text,
    _cRoleARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreatePipeline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cPipelineDescription' - A description of the pipeline.
--
-- * 'cPipelineDisplayName' - The display name of the pipeline.
--
-- * 'cTags' - A list of tags to apply to the created pipeline.
--
-- * 'cPipelineName' - The name of the pipeline.
--
-- * 'cPipelineDefinition' - The JSON pipeline definition of the pipeline.
--
-- * 'cClientRequestToken' - A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time.
--
-- * 'cRoleARN' - The Amazon Resource Name (ARN) of the role used by the pipeline to access and create resources.
createPipeline ::
  -- | 'cPipelineName'
  Text ->
  -- | 'cPipelineDefinition'
  Text ->
  -- | 'cClientRequestToken'
  Text ->
  -- | 'cRoleARN'
  Text ->
  CreatePipeline
createPipeline
  pPipelineName_
  pPipelineDefinition_
  pClientRequestToken_
  pRoleARN_ =
    CreatePipeline'
      { _cPipelineDescription = Nothing,
        _cPipelineDisplayName = Nothing,
        _cTags = Nothing,
        _cPipelineName = pPipelineName_,
        _cPipelineDefinition = pPipelineDefinition_,
        _cClientRequestToken = pClientRequestToken_,
        _cRoleARN = pRoleARN_
      }

-- | A description of the pipeline.
cPipelineDescription :: Lens' CreatePipeline (Maybe Text)
cPipelineDescription = lens _cPipelineDescription (\s a -> s {_cPipelineDescription = a})

-- | The display name of the pipeline.
cPipelineDisplayName :: Lens' CreatePipeline (Maybe Text)
cPipelineDisplayName = lens _cPipelineDisplayName (\s a -> s {_cPipelineDisplayName = a})

-- | A list of tags to apply to the created pipeline.
cTags :: Lens' CreatePipeline [Tag]
cTags = lens _cTags (\s a -> s {_cTags = a}) . _Default . _Coerce

-- | The name of the pipeline.
cPipelineName :: Lens' CreatePipeline Text
cPipelineName = lens _cPipelineName (\s a -> s {_cPipelineName = a})

-- | The JSON pipeline definition of the pipeline.
cPipelineDefinition :: Lens' CreatePipeline Text
cPipelineDefinition = lens _cPipelineDefinition (\s a -> s {_cPipelineDefinition = a})

-- | A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time.
cClientRequestToken :: Lens' CreatePipeline Text
cClientRequestToken = lens _cClientRequestToken (\s a -> s {_cClientRequestToken = a})

-- | The Amazon Resource Name (ARN) of the role used by the pipeline to access and create resources.
cRoleARN :: Lens' CreatePipeline Text
cRoleARN = lens _cRoleARN (\s a -> s {_cRoleARN = a})

instance AWSRequest CreatePipeline where
  type Rs CreatePipeline = CreatePipelineResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreatePipelineResponse'
            <$> (x .?> "PipelineArn") <*> (pure (fromEnum s))
      )

instance Hashable CreatePipeline

instance NFData CreatePipeline

instance ToHeaders CreatePipeline where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.CreatePipeline" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreatePipeline where
  toJSON CreatePipeline' {..} =
    object
      ( catMaybes
          [ ("PipelineDescription" .=)
              <$> _cPipelineDescription,
            ("PipelineDisplayName" .=) <$> _cPipelineDisplayName,
            ("Tags" .=) <$> _cTags,
            Just ("PipelineName" .= _cPipelineName),
            Just ("PipelineDefinition" .= _cPipelineDefinition),
            Just ("ClientRequestToken" .= _cClientRequestToken),
            Just ("RoleArn" .= _cRoleARN)
          ]
      )

instance ToPath CreatePipeline where
  toPath = const "/"

instance ToQuery CreatePipeline where
  toQuery = const mempty

-- | /See:/ 'createPipelineResponse' smart constructor.
data CreatePipelineResponse = CreatePipelineResponse'
  { _cprprsPipelineARN ::
      !(Maybe Text),
    _cprprsResponseStatus ::
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

-- | Creates a value of 'CreatePipelineResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cprprsPipelineARN' - The Amazon Resource Name (ARN) of the created pipeline.
--
-- * 'cprprsResponseStatus' - -- | The response status code.
createPipelineResponse ::
  -- | 'cprprsResponseStatus'
  Int ->
  CreatePipelineResponse
createPipelineResponse pResponseStatus_ =
  CreatePipelineResponse'
    { _cprprsPipelineARN =
        Nothing,
      _cprprsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the created pipeline.
cprprsPipelineARN :: Lens' CreatePipelineResponse (Maybe Text)
cprprsPipelineARN = lens _cprprsPipelineARN (\s a -> s {_cprprsPipelineARN = a})

-- | -- | The response status code.
cprprsResponseStatus :: Lens' CreatePipelineResponse Int
cprprsResponseStatus = lens _cprprsResponseStatus (\s a -> s {_cprprsResponseStatus = a})

instance NFData CreatePipelineResponse
