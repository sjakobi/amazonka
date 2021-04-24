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
-- Module      : Network.AWS.CodePipeline.GetPipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the metadata, structure, stages, and actions of a pipeline. Can be used to return the entire structure of a pipeline in JSON format, which can then be modified and used to update the pipeline structure with 'UpdatePipeline' .
module Network.AWS.CodePipeline.GetPipeline
  ( -- * Creating a Request
    getPipeline,
    GetPipeline,

    -- * Request Lenses
    gpVersion,
    gpName,

    -- * Destructuring the Response
    getPipelineResponse,
    GetPipelineResponse,

    -- * Response Lenses
    gprrsMetadata,
    gprrsPipeline,
    gprrsResponseStatus,
  )
where

import Network.AWS.CodePipeline.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @GetPipeline@ action.
--
--
--
-- /See:/ 'getPipeline' smart constructor.
data GetPipeline = GetPipeline'
  { _gpVersion ::
      !(Maybe Nat),
    _gpName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetPipeline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpVersion' - The version number of the pipeline. If you do not specify a version, defaults to the current version.
--
-- * 'gpName' - The name of the pipeline for which you want to get information. Pipeline names must be unique under an AWS user account.
getPipeline ::
  -- | 'gpName'
  Text ->
  GetPipeline
getPipeline pName_ =
  GetPipeline'
    { _gpVersion = Nothing,
      _gpName = pName_
    }

-- | The version number of the pipeline. If you do not specify a version, defaults to the current version.
gpVersion :: Lens' GetPipeline (Maybe Natural)
gpVersion = lens _gpVersion (\s a -> s {_gpVersion = a}) . mapping _Nat

-- | The name of the pipeline for which you want to get information. Pipeline names must be unique under an AWS user account.
gpName :: Lens' GetPipeline Text
gpName = lens _gpName (\s a -> s {_gpName = a})

instance AWSRequest GetPipeline where
  type Rs GetPipeline = GetPipelineResponse
  request = postJSON codePipeline
  response =
    receiveJSON
      ( \s h x ->
          GetPipelineResponse'
            <$> (x .?> "metadata")
            <*> (x .?> "pipeline")
            <*> (pure (fromEnum s))
      )

instance Hashable GetPipeline

instance NFData GetPipeline

instance ToHeaders GetPipeline where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodePipeline_20150709.GetPipeline" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetPipeline where
  toJSON GetPipeline' {..} =
    object
      ( catMaybes
          [ ("version" .=) <$> _gpVersion,
            Just ("name" .= _gpName)
          ]
      )

instance ToPath GetPipeline where
  toPath = const "/"

instance ToQuery GetPipeline where
  toQuery = const mempty

-- | Represents the output of a @GetPipeline@ action.
--
--
--
-- /See:/ 'getPipelineResponse' smart constructor.
data GetPipelineResponse = GetPipelineResponse'
  { _gprrsMetadata ::
      !(Maybe PipelineMetadata),
    _gprrsPipeline ::
      !(Maybe PipelineDeclaration),
    _gprrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetPipelineResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gprrsMetadata' - Represents the pipeline metadata information returned as part of the output of a @GetPipeline@ action.
--
-- * 'gprrsPipeline' - Represents the structure of actions and stages to be performed in the pipeline.
--
-- * 'gprrsResponseStatus' - -- | The response status code.
getPipelineResponse ::
  -- | 'gprrsResponseStatus'
  Int ->
  GetPipelineResponse
getPipelineResponse pResponseStatus_ =
  GetPipelineResponse'
    { _gprrsMetadata = Nothing,
      _gprrsPipeline = Nothing,
      _gprrsResponseStatus = pResponseStatus_
    }

-- | Represents the pipeline metadata information returned as part of the output of a @GetPipeline@ action.
gprrsMetadata :: Lens' GetPipelineResponse (Maybe PipelineMetadata)
gprrsMetadata = lens _gprrsMetadata (\s a -> s {_gprrsMetadata = a})

-- | Represents the structure of actions and stages to be performed in the pipeline.
gprrsPipeline :: Lens' GetPipelineResponse (Maybe PipelineDeclaration)
gprrsPipeline = lens _gprrsPipeline (\s a -> s {_gprrsPipeline = a})

-- | -- | The response status code.
gprrsResponseStatus :: Lens' GetPipelineResponse Int
gprrsResponseStatus = lens _gprrsResponseStatus (\s a -> s {_gprrsResponseStatus = a})

instance NFData GetPipelineResponse
