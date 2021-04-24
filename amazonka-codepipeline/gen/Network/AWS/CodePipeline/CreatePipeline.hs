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
-- Module      : Network.AWS.CodePipeline.CreatePipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a pipeline.
module Network.AWS.CodePipeline.CreatePipeline
  ( -- * Creating a Request
    createPipeline,
    CreatePipeline,

    -- * Request Lenses
    cpTags,
    cpPipeline,

    -- * Destructuring the Response
    createPipelineResponse,
    CreatePipelineResponse,

    -- * Response Lenses
    cprrsTags,
    cprrsPipeline,
    cprrsResponseStatus,
  )
where

import Network.AWS.CodePipeline.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @CreatePipeline@ action.
--
--
--
-- /See:/ 'createPipeline' smart constructor.
data CreatePipeline = CreatePipeline'
  { _cpTags ::
      !(Maybe [Tag]),
    _cpPipeline :: !PipelineDeclaration
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreatePipeline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpTags' - The tags for the pipeline.
--
-- * 'cpPipeline' - Represents the structure of actions and stages to be performed in the pipeline.
createPipeline ::
  -- | 'cpPipeline'
  PipelineDeclaration ->
  CreatePipeline
createPipeline pPipeline_ =
  CreatePipeline'
    { _cpTags = Nothing,
      _cpPipeline = pPipeline_
    }

-- | The tags for the pipeline.
cpTags :: Lens' CreatePipeline [Tag]
cpTags = lens _cpTags (\s a -> s {_cpTags = a}) . _Default . _Coerce

-- | Represents the structure of actions and stages to be performed in the pipeline.
cpPipeline :: Lens' CreatePipeline PipelineDeclaration
cpPipeline = lens _cpPipeline (\s a -> s {_cpPipeline = a})

instance AWSRequest CreatePipeline where
  type Rs CreatePipeline = CreatePipelineResponse
  request = postJSON codePipeline
  response =
    receiveJSON
      ( \s h x ->
          CreatePipelineResponse'
            <$> (x .?> "tags" .!@ mempty)
            <*> (x .?> "pipeline")
            <*> (pure (fromEnum s))
      )

instance Hashable CreatePipeline

instance NFData CreatePipeline

instance ToHeaders CreatePipeline where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodePipeline_20150709.CreatePipeline" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreatePipeline where
  toJSON CreatePipeline' {..} =
    object
      ( catMaybes
          [ ("tags" .=) <$> _cpTags,
            Just ("pipeline" .= _cpPipeline)
          ]
      )

instance ToPath CreatePipeline where
  toPath = const "/"

instance ToQuery CreatePipeline where
  toQuery = const mempty

-- | Represents the output of a @CreatePipeline@ action.
--
--
--
-- /See:/ 'createPipelineResponse' smart constructor.
data CreatePipelineResponse = CreatePipelineResponse'
  { _cprrsTags ::
      !(Maybe [Tag]),
    _cprrsPipeline ::
      !( Maybe
           PipelineDeclaration
       ),
    _cprrsResponseStatus ::
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
-- * 'cprrsTags' - Specifies the tags applied to the pipeline.
--
-- * 'cprrsPipeline' - Represents the structure of actions and stages to be performed in the pipeline.
--
-- * 'cprrsResponseStatus' - -- | The response status code.
createPipelineResponse ::
  -- | 'cprrsResponseStatus'
  Int ->
  CreatePipelineResponse
createPipelineResponse pResponseStatus_ =
  CreatePipelineResponse'
    { _cprrsTags = Nothing,
      _cprrsPipeline = Nothing,
      _cprrsResponseStatus = pResponseStatus_
    }

-- | Specifies the tags applied to the pipeline.
cprrsTags :: Lens' CreatePipelineResponse [Tag]
cprrsTags = lens _cprrsTags (\s a -> s {_cprrsTags = a}) . _Default . _Coerce

-- | Represents the structure of actions and stages to be performed in the pipeline.
cprrsPipeline :: Lens' CreatePipelineResponse (Maybe PipelineDeclaration)
cprrsPipeline = lens _cprrsPipeline (\s a -> s {_cprrsPipeline = a})

-- | -- | The response status code.
cprrsResponseStatus :: Lens' CreatePipelineResponse Int
cprrsResponseStatus = lens _cprrsResponseStatus (\s a -> s {_cprrsResponseStatus = a})

instance NFData CreatePipelineResponse
