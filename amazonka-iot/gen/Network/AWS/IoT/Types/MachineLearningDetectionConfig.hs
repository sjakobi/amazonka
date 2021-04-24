{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.MachineLearningDetectionConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.MachineLearningDetectionConfig where

import Network.AWS.IoT.Types.ConfidenceLevel
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The configuration of an ML Detect Security Profile.
--
--
--
-- /See:/ 'machineLearningDetectionConfig' smart constructor.
newtype MachineLearningDetectionConfig = MachineLearningDetectionConfig'
  { _mldcConfidenceLevel ::
      ConfidenceLevel
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'MachineLearningDetectionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mldcConfidenceLevel' - The sensitivity of anomalous behavior evaluation. Can be @Low@ , @Medium@ , or @High@ .
machineLearningDetectionConfig ::
  -- | 'mldcConfidenceLevel'
  ConfidenceLevel ->
  MachineLearningDetectionConfig
machineLearningDetectionConfig pConfidenceLevel_ =
  MachineLearningDetectionConfig'
    { _mldcConfidenceLevel =
        pConfidenceLevel_
    }

-- | The sensitivity of anomalous behavior evaluation. Can be @Low@ , @Medium@ , or @High@ .
mldcConfidenceLevel :: Lens' MachineLearningDetectionConfig ConfidenceLevel
mldcConfidenceLevel = lens _mldcConfidenceLevel (\s a -> s {_mldcConfidenceLevel = a})

instance FromJSON MachineLearningDetectionConfig where
  parseJSON =
    withObject
      "MachineLearningDetectionConfig"
      ( \x ->
          MachineLearningDetectionConfig'
            <$> (x .: "confidenceLevel")
      )

instance Hashable MachineLearningDetectionConfig

instance NFData MachineLearningDetectionConfig

instance ToJSON MachineLearningDetectionConfig where
  toJSON MachineLearningDetectionConfig' {..} =
    object
      ( catMaybes
          [Just ("confidenceLevel" .= _mldcConfidenceLevel)]
      )
