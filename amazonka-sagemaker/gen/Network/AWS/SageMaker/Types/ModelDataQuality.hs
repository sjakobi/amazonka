{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelDataQuality
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelDataQuality where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.MetricsSource

-- | Data quality constraints and statistics for a model.
--
--
--
-- /See:/ 'modelDataQuality' smart constructor.
data ModelDataQuality = ModelDataQuality'
  { _mdqConstraints ::
      !(Maybe MetricsSource),
    _mdqStatistics ::
      !(Maybe MetricsSource)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ModelDataQuality' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdqConstraints' - Data quality constraints for a model.
--
-- * 'mdqStatistics' - Data quality statistics for a model.
modelDataQuality ::
  ModelDataQuality
modelDataQuality =
  ModelDataQuality'
    { _mdqConstraints = Nothing,
      _mdqStatistics = Nothing
    }

-- | Data quality constraints for a model.
mdqConstraints :: Lens' ModelDataQuality (Maybe MetricsSource)
mdqConstraints = lens _mdqConstraints (\s a -> s {_mdqConstraints = a})

-- | Data quality statistics for a model.
mdqStatistics :: Lens' ModelDataQuality (Maybe MetricsSource)
mdqStatistics = lens _mdqStatistics (\s a -> s {_mdqStatistics = a})

instance FromJSON ModelDataQuality where
  parseJSON =
    withObject
      "ModelDataQuality"
      ( \x ->
          ModelDataQuality'
            <$> (x .:? "Constraints") <*> (x .:? "Statistics")
      )

instance Hashable ModelDataQuality

instance NFData ModelDataQuality

instance ToJSON ModelDataQuality where
  toJSON ModelDataQuality' {..} =
    object
      ( catMaybes
          [ ("Constraints" .=) <$> _mdqConstraints,
            ("Statistics" .=) <$> _mdqStatistics
          ]
      )
