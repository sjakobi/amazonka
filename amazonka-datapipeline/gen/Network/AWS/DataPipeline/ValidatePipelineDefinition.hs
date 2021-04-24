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
-- Module      : Network.AWS.DataPipeline.ValidatePipelineDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates the specified pipeline definition to ensure that it is well formed and can be run without error.
module Network.AWS.DataPipeline.ValidatePipelineDefinition
  ( -- * Creating a Request
    validatePipelineDefinition,
    ValidatePipelineDefinition,

    -- * Request Lenses
    vpdParameterValues,
    vpdParameterObjects,
    vpdPipelineId,
    vpdPipelineObjects,

    -- * Destructuring the Response
    validatePipelineDefinitionResponse,
    ValidatePipelineDefinitionResponse,

    -- * Response Lenses
    vpdrrsValidationErrors,
    vpdrrsValidationWarnings,
    vpdrrsResponseStatus,
    vpdrrsErrored,
  )
where

import Network.AWS.DataPipeline.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for ValidatePipelineDefinition.
--
--
--
-- /See:/ 'validatePipelineDefinition' smart constructor.
data ValidatePipelineDefinition = ValidatePipelineDefinition'
  { _vpdParameterValues ::
      !( Maybe
           [ParameterValue]
       ),
    _vpdParameterObjects ::
      !( Maybe
           [ParameterObject]
       ),
    _vpdPipelineId ::
      !Text,
    _vpdPipelineObjects ::
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

-- | Creates a value of 'ValidatePipelineDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpdParameterValues' - The parameter values used with the pipeline.
--
-- * 'vpdParameterObjects' - The parameter objects used with the pipeline.
--
-- * 'vpdPipelineId' - The ID of the pipeline.
--
-- * 'vpdPipelineObjects' - The objects that define the pipeline changes to validate against the pipeline.
validatePipelineDefinition ::
  -- | 'vpdPipelineId'
  Text ->
  ValidatePipelineDefinition
validatePipelineDefinition pPipelineId_ =
  ValidatePipelineDefinition'
    { _vpdParameterValues =
        Nothing,
      _vpdParameterObjects = Nothing,
      _vpdPipelineId = pPipelineId_,
      _vpdPipelineObjects = mempty
    }

-- | The parameter values used with the pipeline.
vpdParameterValues :: Lens' ValidatePipelineDefinition [ParameterValue]
vpdParameterValues = lens _vpdParameterValues (\s a -> s {_vpdParameterValues = a}) . _Default . _Coerce

-- | The parameter objects used with the pipeline.
vpdParameterObjects :: Lens' ValidatePipelineDefinition [ParameterObject]
vpdParameterObjects = lens _vpdParameterObjects (\s a -> s {_vpdParameterObjects = a}) . _Default . _Coerce

-- | The ID of the pipeline.
vpdPipelineId :: Lens' ValidatePipelineDefinition Text
vpdPipelineId = lens _vpdPipelineId (\s a -> s {_vpdPipelineId = a})

-- | The objects that define the pipeline changes to validate against the pipeline.
vpdPipelineObjects :: Lens' ValidatePipelineDefinition [PipelineObject]
vpdPipelineObjects = lens _vpdPipelineObjects (\s a -> s {_vpdPipelineObjects = a}) . _Coerce

instance AWSRequest ValidatePipelineDefinition where
  type
    Rs ValidatePipelineDefinition =
      ValidatePipelineDefinitionResponse
  request = postJSON dataPipeline
  response =
    receiveJSON
      ( \s h x ->
          ValidatePipelineDefinitionResponse'
            <$> (x .?> "validationErrors" .!@ mempty)
            <*> (x .?> "validationWarnings" .!@ mempty)
            <*> (pure (fromEnum s))
            <*> (x .:> "errored")
      )

instance Hashable ValidatePipelineDefinition

instance NFData ValidatePipelineDefinition

instance ToHeaders ValidatePipelineDefinition where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DataPipeline.ValidatePipelineDefinition" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ValidatePipelineDefinition where
  toJSON ValidatePipelineDefinition' {..} =
    object
      ( catMaybes
          [ ("parameterValues" .=) <$> _vpdParameterValues,
            ("parameterObjects" .=) <$> _vpdParameterObjects,
            Just ("pipelineId" .= _vpdPipelineId),
            Just ("pipelineObjects" .= _vpdPipelineObjects)
          ]
      )

instance ToPath ValidatePipelineDefinition where
  toPath = const "/"

instance ToQuery ValidatePipelineDefinition where
  toQuery = const mempty

-- | Contains the output of ValidatePipelineDefinition.
--
--
--
-- /See:/ 'validatePipelineDefinitionResponse' smart constructor.
data ValidatePipelineDefinitionResponse = ValidatePipelineDefinitionResponse'
  { _vpdrrsValidationErrors ::
      !( Maybe
           [ValidationError]
       ),
    _vpdrrsValidationWarnings ::
      !( Maybe
           [ValidationWarning]
       ),
    _vpdrrsResponseStatus ::
      !Int,
    _vpdrrsErrored ::
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

-- | Creates a value of 'ValidatePipelineDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpdrrsValidationErrors' - Any validation errors that were found.
--
-- * 'vpdrrsValidationWarnings' - Any validation warnings that were found.
--
-- * 'vpdrrsResponseStatus' - -- | The response status code.
--
-- * 'vpdrrsErrored' - Indicates whether there were validation errors.
validatePipelineDefinitionResponse ::
  -- | 'vpdrrsResponseStatus'
  Int ->
  -- | 'vpdrrsErrored'
  Bool ->
  ValidatePipelineDefinitionResponse
validatePipelineDefinitionResponse
  pResponseStatus_
  pErrored_ =
    ValidatePipelineDefinitionResponse'
      { _vpdrrsValidationErrors =
          Nothing,
        _vpdrrsValidationWarnings = Nothing,
        _vpdrrsResponseStatus =
          pResponseStatus_,
        _vpdrrsErrored = pErrored_
      }

-- | Any validation errors that were found.
vpdrrsValidationErrors :: Lens' ValidatePipelineDefinitionResponse [ValidationError]
vpdrrsValidationErrors = lens _vpdrrsValidationErrors (\s a -> s {_vpdrrsValidationErrors = a}) . _Default . _Coerce

-- | Any validation warnings that were found.
vpdrrsValidationWarnings :: Lens' ValidatePipelineDefinitionResponse [ValidationWarning]
vpdrrsValidationWarnings = lens _vpdrrsValidationWarnings (\s a -> s {_vpdrrsValidationWarnings = a}) . _Default . _Coerce

-- | -- | The response status code.
vpdrrsResponseStatus :: Lens' ValidatePipelineDefinitionResponse Int
vpdrrsResponseStatus = lens _vpdrrsResponseStatus (\s a -> s {_vpdrrsResponseStatus = a})

-- | Indicates whether there were validation errors.
vpdrrsErrored :: Lens' ValidatePipelineDefinitionResponse Bool
vpdrrsErrored = lens _vpdrrsErrored (\s a -> s {_vpdrrsErrored = a})

instance NFData ValidatePipelineDefinitionResponse
