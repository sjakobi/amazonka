{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.PipelineMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.PipelineMetadata where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a pipeline.
--
--
--
-- /See:/ 'pipelineMetadata' smart constructor.
data PipelineMetadata = PipelineMetadata'
  { _pmPipelineARN ::
      !(Maybe Text),
    _pmCreated :: !(Maybe POSIX),
    _pmUpdated :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PipelineMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmPipelineARN' - The Amazon Resource Name (ARN) of the pipeline.
--
-- * 'pmCreated' - The date and time the pipeline was created, in timestamp format.
--
-- * 'pmUpdated' - The date and time the pipeline was last updated, in timestamp format.
pipelineMetadata ::
  PipelineMetadata
pipelineMetadata =
  PipelineMetadata'
    { _pmPipelineARN = Nothing,
      _pmCreated = Nothing,
      _pmUpdated = Nothing
    }

-- | The Amazon Resource Name (ARN) of the pipeline.
pmPipelineARN :: Lens' PipelineMetadata (Maybe Text)
pmPipelineARN = lens _pmPipelineARN (\s a -> s {_pmPipelineARN = a})

-- | The date and time the pipeline was created, in timestamp format.
pmCreated :: Lens' PipelineMetadata (Maybe UTCTime)
pmCreated = lens _pmCreated (\s a -> s {_pmCreated = a}) . mapping _Time

-- | The date and time the pipeline was last updated, in timestamp format.
pmUpdated :: Lens' PipelineMetadata (Maybe UTCTime)
pmUpdated = lens _pmUpdated (\s a -> s {_pmUpdated = a}) . mapping _Time

instance FromJSON PipelineMetadata where
  parseJSON =
    withObject
      "PipelineMetadata"
      ( \x ->
          PipelineMetadata'
            <$> (x .:? "pipelineArn")
            <*> (x .:? "created")
            <*> (x .:? "updated")
      )

instance Hashable PipelineMetadata

instance NFData PipelineMetadata
