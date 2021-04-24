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
-- Module      : Network.AWS.DataPipeline.GetPipelineDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the definition of the specified pipeline. You can call @GetPipelineDefinition@ to retrieve the pipeline definition that you provided using 'PutPipelineDefinition' .
module Network.AWS.DataPipeline.GetPipelineDefinition
  ( -- * Creating a Request
    getPipelineDefinition,
    GetPipelineDefinition,

    -- * Request Lenses
    gpdVersion,
    gpdPipelineId,

    -- * Destructuring the Response
    getPipelineDefinitionResponse,
    GetPipelineDefinitionResponse,

    -- * Response Lenses
    gpdrrsParameterValues,
    gpdrrsParameterObjects,
    gpdrrsPipelineObjects,
    gpdrrsResponseStatus,
  )
where

import Network.AWS.DataPipeline.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for GetPipelineDefinition.
--
--
--
-- /See:/ 'getPipelineDefinition' smart constructor.
data GetPipelineDefinition = GetPipelineDefinition'
  { _gpdVersion ::
      !(Maybe Text),
    _gpdPipelineId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetPipelineDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdVersion' - The version of the pipeline definition to retrieve. Set this parameter to @latest@ (default) to use the last definition saved to the pipeline or @active@ to use the last definition that was activated.
--
-- * 'gpdPipelineId' - The ID of the pipeline.
getPipelineDefinition ::
  -- | 'gpdPipelineId'
  Text ->
  GetPipelineDefinition
getPipelineDefinition pPipelineId_ =
  GetPipelineDefinition'
    { _gpdVersion = Nothing,
      _gpdPipelineId = pPipelineId_
    }

-- | The version of the pipeline definition to retrieve. Set this parameter to @latest@ (default) to use the last definition saved to the pipeline or @active@ to use the last definition that was activated.
gpdVersion :: Lens' GetPipelineDefinition (Maybe Text)
gpdVersion = lens _gpdVersion (\s a -> s {_gpdVersion = a})

-- | The ID of the pipeline.
gpdPipelineId :: Lens' GetPipelineDefinition Text
gpdPipelineId = lens _gpdPipelineId (\s a -> s {_gpdPipelineId = a})

instance AWSRequest GetPipelineDefinition where
  type
    Rs GetPipelineDefinition =
      GetPipelineDefinitionResponse
  request = postJSON dataPipeline
  response =
    receiveJSON
      ( \s h x ->
          GetPipelineDefinitionResponse'
            <$> (x .?> "parameterValues" .!@ mempty)
            <*> (x .?> "parameterObjects" .!@ mempty)
            <*> (x .?> "pipelineObjects" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetPipelineDefinition

instance NFData GetPipelineDefinition

instance ToHeaders GetPipelineDefinition where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DataPipeline.GetPipelineDefinition" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetPipelineDefinition where
  toJSON GetPipelineDefinition' {..} =
    object
      ( catMaybes
          [ ("version" .=) <$> _gpdVersion,
            Just ("pipelineId" .= _gpdPipelineId)
          ]
      )

instance ToPath GetPipelineDefinition where
  toPath = const "/"

instance ToQuery GetPipelineDefinition where
  toQuery = const mempty

-- | Contains the output of GetPipelineDefinition.
--
--
--
-- /See:/ 'getPipelineDefinitionResponse' smart constructor.
data GetPipelineDefinitionResponse = GetPipelineDefinitionResponse'
  { _gpdrrsParameterValues ::
      !( Maybe
           [ParameterValue]
       ),
    _gpdrrsParameterObjects ::
      !( Maybe
           [ParameterObject]
       ),
    _gpdrrsPipelineObjects ::
      !( Maybe
           [PipelineObject]
       ),
    _gpdrrsResponseStatus ::
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

-- | Creates a value of 'GetPipelineDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdrrsParameterValues' - The parameter values used in the pipeline definition.
--
-- * 'gpdrrsParameterObjects' - The parameter objects used in the pipeline definition.
--
-- * 'gpdrrsPipelineObjects' - The objects defined in the pipeline.
--
-- * 'gpdrrsResponseStatus' - -- | The response status code.
getPipelineDefinitionResponse ::
  -- | 'gpdrrsResponseStatus'
  Int ->
  GetPipelineDefinitionResponse
getPipelineDefinitionResponse pResponseStatus_ =
  GetPipelineDefinitionResponse'
    { _gpdrrsParameterValues =
        Nothing,
      _gpdrrsParameterObjects = Nothing,
      _gpdrrsPipelineObjects = Nothing,
      _gpdrrsResponseStatus = pResponseStatus_
    }

-- | The parameter values used in the pipeline definition.
gpdrrsParameterValues :: Lens' GetPipelineDefinitionResponse [ParameterValue]
gpdrrsParameterValues = lens _gpdrrsParameterValues (\s a -> s {_gpdrrsParameterValues = a}) . _Default . _Coerce

-- | The parameter objects used in the pipeline definition.
gpdrrsParameterObjects :: Lens' GetPipelineDefinitionResponse [ParameterObject]
gpdrrsParameterObjects = lens _gpdrrsParameterObjects (\s a -> s {_gpdrrsParameterObjects = a}) . _Default . _Coerce

-- | The objects defined in the pipeline.
gpdrrsPipelineObjects :: Lens' GetPipelineDefinitionResponse [PipelineObject]
gpdrrsPipelineObjects = lens _gpdrrsPipelineObjects (\s a -> s {_gpdrrsPipelineObjects = a}) . _Default . _Coerce

-- | -- | The response status code.
gpdrrsResponseStatus :: Lens' GetPipelineDefinitionResponse Int
gpdrrsResponseStatus = lens _gpdrrsResponseStatus (\s a -> s {_gpdrrsResponseStatus = a})

instance NFData GetPipelineDefinitionResponse
