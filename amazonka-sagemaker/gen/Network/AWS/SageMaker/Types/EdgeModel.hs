{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.EdgeModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.EdgeModel where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The model on the edge device.
--
--
--
-- /See:/ 'edgeModel' smart constructor.
data EdgeModel = EdgeModel'
  { _emLatestInference ::
      !(Maybe POSIX),
    _emLatestSampleTime :: !(Maybe POSIX),
    _emModelName :: !Text,
    _emModelVersion :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EdgeModel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'emLatestInference' - The timestamp of the last inference that was made.
--
-- * 'emLatestSampleTime' - The timestamp of the last data sample taken.
--
-- * 'emModelName' - The name of the model.
--
-- * 'emModelVersion' - The model version.
edgeModel ::
  -- | 'emModelName'
  Text ->
  -- | 'emModelVersion'
  Text ->
  EdgeModel
edgeModel pModelName_ pModelVersion_ =
  EdgeModel'
    { _emLatestInference = Nothing,
      _emLatestSampleTime = Nothing,
      _emModelName = pModelName_,
      _emModelVersion = pModelVersion_
    }

-- | The timestamp of the last inference that was made.
emLatestInference :: Lens' EdgeModel (Maybe UTCTime)
emLatestInference = lens _emLatestInference (\s a -> s {_emLatestInference = a}) . mapping _Time

-- | The timestamp of the last data sample taken.
emLatestSampleTime :: Lens' EdgeModel (Maybe UTCTime)
emLatestSampleTime = lens _emLatestSampleTime (\s a -> s {_emLatestSampleTime = a}) . mapping _Time

-- | The name of the model.
emModelName :: Lens' EdgeModel Text
emModelName = lens _emModelName (\s a -> s {_emModelName = a})

-- | The model version.
emModelVersion :: Lens' EdgeModel Text
emModelVersion = lens _emModelVersion (\s a -> s {_emModelVersion = a})

instance FromJSON EdgeModel where
  parseJSON =
    withObject
      "EdgeModel"
      ( \x ->
          EdgeModel'
            <$> (x .:? "LatestInference")
            <*> (x .:? "LatestSampleTime")
            <*> (x .: "ModelName")
            <*> (x .: "ModelVersion")
      )

instance Hashable EdgeModel

instance NFData EdgeModel
