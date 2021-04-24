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
-- Module      : Network.AWS.DataPipeline.PutPipelineDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds tasks, schedules, and preconditions to the specified pipeline. You can use @PutPipelineDefinition@ to populate a new pipeline.
--
--
-- @PutPipelineDefinition@ also validates the configuration as it adds it to the pipeline. Changes to the pipeline are saved unless one of the following three validation errors exists in the pipeline.
--
--     * An object is missing a name or identifier field.    * A string or reference field is empty.    * The number of objects in the pipeline exceeds the maximum allowed objects.    * The pipeline is in a FINISHED state.
--
-- Pipeline object definitions are passed to the @PutPipelineDefinition@ action and returned by the 'GetPipelineDefinition' action.
module Network.AWS.DataPipeline.PutPipelineDefinition
  ( -- * Creating a Request
    putPipelineDefinition,
    PutPipelineDefinition,

    -- * Request Lenses
    ppdParameterValues,
    ppdParameterObjects,
    ppdPipelineId,
    ppdPipelineObjects,

    -- * Destructuring the Response
    putPipelineDefinitionResponse,
    PutPipelineDefinitionResponse,

    -- * Response Lenses
    ppdrrsValidationErrors,
    ppdrrsValidationWarnings,
    ppdrrsResponseStatus,
    ppdrrsErrored,
  )
where

import Network.AWS.DataPipeline.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for PutPipelineDefinition.
--
--
--
-- /See:/ 'putPipelineDefinition' smart constructor.
data PutPipelineDefinition = PutPipelineDefinition'
  { _ppdParameterValues ::
      !(Maybe [ParameterValue]),
    _ppdParameterObjects ::
      !(Maybe [ParameterObject]),
    _ppdPipelineId :: !Text,
    _ppdPipelineObjects ::
      ![PipelineObject]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PutPipelineDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppdParameterValues' - The parameter values used with the pipeline.
--
-- * 'ppdParameterObjects' - The parameter objects used with the pipeline.
--
-- * 'ppdPipelineId' - The ID of the pipeline.
--
-- * 'ppdPipelineObjects' - The objects that define the pipeline. These objects overwrite the existing pipeline definition.
putPipelineDefinition ::
  -- | 'ppdPipelineId'
  Text ->
  PutPipelineDefinition
putPipelineDefinition pPipelineId_ =
  PutPipelineDefinition'
    { _ppdParameterValues =
        Nothing,
      _ppdParameterObjects = Nothing,
      _ppdPipelineId = pPipelineId_,
      _ppdPipelineObjects = mempty
    }

-- | The parameter values used with the pipeline.
ppdParameterValues :: Lens' PutPipelineDefinition [ParameterValue]
ppdParameterValues = lens _ppdParameterValues (\s a -> s {_ppdParameterValues = a}) . _Default . _Coerce

-- | The parameter objects used with the pipeline.
ppdParameterObjects :: Lens' PutPipelineDefinition [ParameterObject]
ppdParameterObjects = lens _ppdParameterObjects (\s a -> s {_ppdParameterObjects = a}) . _Default . _Coerce

-- | The ID of the pipeline.
ppdPipelineId :: Lens' PutPipelineDefinition Text
ppdPipelineId = lens _ppdPipelineId (\s a -> s {_ppdPipelineId = a})

-- | The objects that define the pipeline. These objects overwrite the existing pipeline definition.
ppdPipelineObjects :: Lens' PutPipelineDefinition [PipelineObject]
ppdPipelineObjects = lens _ppdPipelineObjects (\s a -> s {_ppdPipelineObjects = a}) . _Coerce

instance AWSRequest PutPipelineDefinition where
  type
    Rs PutPipelineDefinition =
      PutPipelineDefinitionResponse
  request = postJSON dataPipeline
  response =
    receiveJSON
      ( \s h x ->
          PutPipelineDefinitionResponse'
            <$> (x .?> "validationErrors" .!@ mempty)
            <*> (x .?> "validationWarnings" .!@ mempty)
            <*> (pure (fromEnum s))
            <*> (x .:> "errored")
      )

instance Hashable PutPipelineDefinition

instance NFData PutPipelineDefinition

instance ToHeaders PutPipelineDefinition where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DataPipeline.PutPipelineDefinition" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutPipelineDefinition where
  toJSON PutPipelineDefinition' {..} =
    object
      ( catMaybes
          [ ("parameterValues" .=) <$> _ppdParameterValues,
            ("parameterObjects" .=) <$> _ppdParameterObjects,
            Just ("pipelineId" .= _ppdPipelineId),
            Just ("pipelineObjects" .= _ppdPipelineObjects)
          ]
      )

instance ToPath PutPipelineDefinition where
  toPath = const "/"

instance ToQuery PutPipelineDefinition where
  toQuery = const mempty

-- | Contains the output of PutPipelineDefinition.
--
--
--
-- /See:/ 'putPipelineDefinitionResponse' smart constructor.
data PutPipelineDefinitionResponse = PutPipelineDefinitionResponse'
  { _ppdrrsValidationErrors ::
      !( Maybe
           [ValidationError]
       ),
    _ppdrrsValidationWarnings ::
      !( Maybe
           [ValidationWarning]
       ),
    _ppdrrsResponseStatus ::
      !Int,
    _ppdrrsErrored ::
      !Bool
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PutPipelineDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppdrrsValidationErrors' - The validation errors that are associated with the objects defined in @pipelineObjects@ .
--
-- * 'ppdrrsValidationWarnings' - The validation warnings that are associated with the objects defined in @pipelineObjects@ .
--
-- * 'ppdrrsResponseStatus' - -- | The response status code.
--
-- * 'ppdrrsErrored' - Indicates whether there were validation errors, and the pipeline definition is stored but cannot be activated until you correct the pipeline and call @PutPipelineDefinition@ to commit the corrected pipeline.
putPipelineDefinitionResponse ::
  -- | 'ppdrrsResponseStatus'
  Int ->
  -- | 'ppdrrsErrored'
  Bool ->
  PutPipelineDefinitionResponse
putPipelineDefinitionResponse
  pResponseStatus_
  pErrored_ =
    PutPipelineDefinitionResponse'
      { _ppdrrsValidationErrors =
          Nothing,
        _ppdrrsValidationWarnings = Nothing,
        _ppdrrsResponseStatus = pResponseStatus_,
        _ppdrrsErrored = pErrored_
      }

-- | The validation errors that are associated with the objects defined in @pipelineObjects@ .
ppdrrsValidationErrors :: Lens' PutPipelineDefinitionResponse [ValidationError]
ppdrrsValidationErrors = lens _ppdrrsValidationErrors (\s a -> s {_ppdrrsValidationErrors = a}) . _Default . _Coerce

-- | The validation warnings that are associated with the objects defined in @pipelineObjects@ .
ppdrrsValidationWarnings :: Lens' PutPipelineDefinitionResponse [ValidationWarning]
ppdrrsValidationWarnings = lens _ppdrrsValidationWarnings (\s a -> s {_ppdrrsValidationWarnings = a}) . _Default . _Coerce

-- | -- | The response status code.
ppdrrsResponseStatus :: Lens' PutPipelineDefinitionResponse Int
ppdrrsResponseStatus = lens _ppdrrsResponseStatus (\s a -> s {_ppdrrsResponseStatus = a})

-- | Indicates whether there were validation errors, and the pipeline definition is stored but cannot be activated until you correct the pipeline and call @PutPipelineDefinition@ to commit the corrected pipeline.
ppdrrsErrored :: Lens' PutPipelineDefinitionResponse Bool
ppdrrsErrored = lens _ppdrrsErrored (\s a -> s {_ppdrrsErrored = a})

instance NFData PutPipelineDefinitionResponse
