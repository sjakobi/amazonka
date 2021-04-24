{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelQuality
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelQuality where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.MetricsSource

-- | Model quality statistics and constraints.
--
--
--
-- /See:/ 'modelQuality' smart constructor.
data ModelQuality = ModelQuality'
  { _mqConstraints ::
      !(Maybe MetricsSource),
    _mqStatistics :: !(Maybe MetricsSource)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ModelQuality' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mqConstraints' - Model quality constraints.
--
-- * 'mqStatistics' - Model quality statistics.
modelQuality ::
  ModelQuality
modelQuality =
  ModelQuality'
    { _mqConstraints = Nothing,
      _mqStatistics = Nothing
    }

-- | Model quality constraints.
mqConstraints :: Lens' ModelQuality (Maybe MetricsSource)
mqConstraints = lens _mqConstraints (\s a -> s {_mqConstraints = a})

-- | Model quality statistics.
mqStatistics :: Lens' ModelQuality (Maybe MetricsSource)
mqStatistics = lens _mqStatistics (\s a -> s {_mqStatistics = a})

instance FromJSON ModelQuality where
  parseJSON =
    withObject
      "ModelQuality"
      ( \x ->
          ModelQuality'
            <$> (x .:? "Constraints") <*> (x .:? "Statistics")
      )

instance Hashable ModelQuality

instance NFData ModelQuality

instance ToJSON ModelQuality where
  toJSON ModelQuality' {..} =
    object
      ( catMaybes
          [ ("Constraints" .=) <$> _mqConstraints,
            ("Statistics" .=) <$> _mqStatistics
          ]
      )
