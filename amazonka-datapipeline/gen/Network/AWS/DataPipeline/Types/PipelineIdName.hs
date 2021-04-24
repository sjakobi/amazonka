{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DataPipeline.Types.PipelineIdName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataPipeline.Types.PipelineIdName where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the name and identifier of a pipeline.
--
--
--
-- /See:/ 'pipelineIdName' smart constructor.
data PipelineIdName = PipelineIdName'
  { _pinId ::
      !(Maybe Text),
    _pinName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PipelineIdName' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pinId' - The ID of the pipeline that was assigned by AWS Data Pipeline. This is a string of the form @df-297EG78HU43EEXAMPLE@ .
--
-- * 'pinName' - The name of the pipeline.
pipelineIdName ::
  PipelineIdName
pipelineIdName =
  PipelineIdName'
    { _pinId = Nothing,
      _pinName = Nothing
    }

-- | The ID of the pipeline that was assigned by AWS Data Pipeline. This is a string of the form @df-297EG78HU43EEXAMPLE@ .
pinId :: Lens' PipelineIdName (Maybe Text)
pinId = lens _pinId (\s a -> s {_pinId = a})

-- | The name of the pipeline.
pinName :: Lens' PipelineIdName (Maybe Text)
pinName = lens _pinName (\s a -> s {_pinName = a})

instance FromJSON PipelineIdName where
  parseJSON =
    withObject
      "PipelineIdName"
      ( \x ->
          PipelineIdName' <$> (x .:? "id") <*> (x .:? "name")
      )

instance Hashable PipelineIdName

instance NFData PipelineIdName
