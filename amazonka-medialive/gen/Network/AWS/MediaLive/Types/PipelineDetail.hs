{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.PipelineDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.PipelineDetail where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Runtime details of a pipeline when a channel is running.
--
-- /See:/ 'pipelineDetail' smart constructor.
data PipelineDetail = PipelineDetail'
  { _pdPipelineId ::
      !(Maybe Text),
    _pdActiveInputAttachmentName ::
      !(Maybe Text),
    _pdActiveInputSwitchActionName ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PipelineDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdPipelineId' - Pipeline ID
--
-- * 'pdActiveInputAttachmentName' - The name of the active input attachment currently being ingested by this pipeline.
--
-- * 'pdActiveInputSwitchActionName' - The name of the input switch schedule action that occurred most recently and that resulted in the switch to the current input attachment for this pipeline.
pipelineDetail ::
  PipelineDetail
pipelineDetail =
  PipelineDetail'
    { _pdPipelineId = Nothing,
      _pdActiveInputAttachmentName = Nothing,
      _pdActiveInputSwitchActionName = Nothing
    }

-- | Pipeline ID
pdPipelineId :: Lens' PipelineDetail (Maybe Text)
pdPipelineId = lens _pdPipelineId (\s a -> s {_pdPipelineId = a})

-- | The name of the active input attachment currently being ingested by this pipeline.
pdActiveInputAttachmentName :: Lens' PipelineDetail (Maybe Text)
pdActiveInputAttachmentName = lens _pdActiveInputAttachmentName (\s a -> s {_pdActiveInputAttachmentName = a})

-- | The name of the input switch schedule action that occurred most recently and that resulted in the switch to the current input attachment for this pipeline.
pdActiveInputSwitchActionName :: Lens' PipelineDetail (Maybe Text)
pdActiveInputSwitchActionName = lens _pdActiveInputSwitchActionName (\s a -> s {_pdActiveInputSwitchActionName = a})

instance FromJSON PipelineDetail where
  parseJSON =
    withObject
      "PipelineDetail"
      ( \x ->
          PipelineDetail'
            <$> (x .:? "pipelineId")
            <*> (x .:? "activeInputAttachmentName")
            <*> (x .:? "activeInputSwitchActionName")
      )

instance Hashable PipelineDetail

instance NFData PipelineDetail
