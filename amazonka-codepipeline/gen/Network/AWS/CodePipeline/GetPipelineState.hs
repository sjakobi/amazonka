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
-- Module      : Network.AWS.CodePipeline.GetPipelineState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the state of a pipeline, including the stages and actions.
module Network.AWS.CodePipeline.GetPipelineState
  ( -- * Creating a Request
    getPipelineState,
    GetPipelineState,

    -- * Request Lenses
    gpsName,

    -- * Destructuring the Response
    getPipelineStateResponse,
    GetPipelineStateResponse,

    -- * Response Lenses
    gpsrrsStageStates,
    gpsrrsCreated,
    gpsrrsPipelineVersion,
    gpsrrsUpdated,
    gpsrrsPipelineName,
    gpsrrsResponseStatus,
  )
where

import Network.AWS.CodePipeline.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @GetPipelineState@ action.
--
--
--
-- /See:/ 'getPipelineState' smart constructor.
newtype GetPipelineState = GetPipelineState'
  { _gpsName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetPipelineState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpsName' - The name of the pipeline about which you want to get information.
getPipelineState ::
  -- | 'gpsName'
  Text ->
  GetPipelineState
getPipelineState pName_ =
  GetPipelineState' {_gpsName = pName_}

-- | The name of the pipeline about which you want to get information.
gpsName :: Lens' GetPipelineState Text
gpsName = lens _gpsName (\s a -> s {_gpsName = a})

instance AWSRequest GetPipelineState where
  type Rs GetPipelineState = GetPipelineStateResponse
  request = postJSON codePipeline
  response =
    receiveJSON
      ( \s h x ->
          GetPipelineStateResponse'
            <$> (x .?> "stageStates" .!@ mempty)
            <*> (x .?> "created")
            <*> (x .?> "pipelineVersion")
            <*> (x .?> "updated")
            <*> (x .?> "pipelineName")
            <*> (pure (fromEnum s))
      )

instance Hashable GetPipelineState

instance NFData GetPipelineState

instance ToHeaders GetPipelineState where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodePipeline_20150709.GetPipelineState" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetPipelineState where
  toJSON GetPipelineState' {..} =
    object (catMaybes [Just ("name" .= _gpsName)])

instance ToPath GetPipelineState where
  toPath = const "/"

instance ToQuery GetPipelineState where
  toQuery = const mempty

-- | Represents the output of a @GetPipelineState@ action.
--
--
--
-- /See:/ 'getPipelineStateResponse' smart constructor.
data GetPipelineStateResponse = GetPipelineStateResponse'
  { _gpsrrsStageStates ::
      !(Maybe [StageState]),
    _gpsrrsCreated ::
      !(Maybe POSIX),
    _gpsrrsPipelineVersion ::
      !(Maybe Nat),
    _gpsrrsUpdated ::
      !(Maybe POSIX),
    _gpsrrsPipelineName ::
      !(Maybe Text),
    _gpsrrsResponseStatus ::
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

-- | Creates a value of 'GetPipelineStateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpsrrsStageStates' - A list of the pipeline stage output information, including stage name, state, most recent run details, whether the stage is disabled, and other data.
--
-- * 'gpsrrsCreated' - The date and time the pipeline was created, in timestamp format.
--
-- * 'gpsrrsPipelineVersion' - The version number of the pipeline.
--
-- * 'gpsrrsUpdated' - The date and time the pipeline was last updated, in timestamp format.
--
-- * 'gpsrrsPipelineName' - The name of the pipeline for which you want to get the state.
--
-- * 'gpsrrsResponseStatus' - -- | The response status code.
getPipelineStateResponse ::
  -- | 'gpsrrsResponseStatus'
  Int ->
  GetPipelineStateResponse
getPipelineStateResponse pResponseStatus_ =
  GetPipelineStateResponse'
    { _gpsrrsStageStates =
        Nothing,
      _gpsrrsCreated = Nothing,
      _gpsrrsPipelineVersion = Nothing,
      _gpsrrsUpdated = Nothing,
      _gpsrrsPipelineName = Nothing,
      _gpsrrsResponseStatus = pResponseStatus_
    }

-- | A list of the pipeline stage output information, including stage name, state, most recent run details, whether the stage is disabled, and other data.
gpsrrsStageStates :: Lens' GetPipelineStateResponse [StageState]
gpsrrsStageStates = lens _gpsrrsStageStates (\s a -> s {_gpsrrsStageStates = a}) . _Default . _Coerce

-- | The date and time the pipeline was created, in timestamp format.
gpsrrsCreated :: Lens' GetPipelineStateResponse (Maybe UTCTime)
gpsrrsCreated = lens _gpsrrsCreated (\s a -> s {_gpsrrsCreated = a}) . mapping _Time

-- | The version number of the pipeline.
gpsrrsPipelineVersion :: Lens' GetPipelineStateResponse (Maybe Natural)
gpsrrsPipelineVersion = lens _gpsrrsPipelineVersion (\s a -> s {_gpsrrsPipelineVersion = a}) . mapping _Nat

-- | The date and time the pipeline was last updated, in timestamp format.
gpsrrsUpdated :: Lens' GetPipelineStateResponse (Maybe UTCTime)
gpsrrsUpdated = lens _gpsrrsUpdated (\s a -> s {_gpsrrsUpdated = a}) . mapping _Time

-- | The name of the pipeline for which you want to get the state.
gpsrrsPipelineName :: Lens' GetPipelineStateResponse (Maybe Text)
gpsrrsPipelineName = lens _gpsrrsPipelineName (\s a -> s {_gpsrrsPipelineName = a})

-- | -- | The response status code.
gpsrrsResponseStatus :: Lens' GetPipelineStateResponse Int
gpsrrsResponseStatus = lens _gpsrrsResponseStatus (\s a -> s {_gpsrrsResponseStatus = a})

instance NFData GetPipelineStateResponse
