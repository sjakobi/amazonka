{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelMetrics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelMetrics where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.Bias
import Network.AWS.SageMaker.Types.Explainability
import Network.AWS.SageMaker.Types.ModelDataQuality
import Network.AWS.SageMaker.Types.ModelQuality

-- | Contains metrics captured from a model.
--
--
--
-- /See:/ 'modelMetrics' smart constructor.
data ModelMetrics = ModelMetrics'
  { _mmBias ::
      !(Maybe Bias),
    _mmExplainability :: !(Maybe Explainability),
    _mmModelDataQuality ::
      !(Maybe ModelDataQuality),
    _mmModelQuality :: !(Maybe ModelQuality)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ModelMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mmBias' - Metrics that measure bais in a model.
--
-- * 'mmExplainability' - Metrics that help explain a model.
--
-- * 'mmModelDataQuality' - Metrics that measure the quality of the input data for a model.
--
-- * 'mmModelQuality' - Metrics that measure the quality of a model.
modelMetrics ::
  ModelMetrics
modelMetrics =
  ModelMetrics'
    { _mmBias = Nothing,
      _mmExplainability = Nothing,
      _mmModelDataQuality = Nothing,
      _mmModelQuality = Nothing
    }

-- | Metrics that measure bais in a model.
mmBias :: Lens' ModelMetrics (Maybe Bias)
mmBias = lens _mmBias (\s a -> s {_mmBias = a})

-- | Metrics that help explain a model.
mmExplainability :: Lens' ModelMetrics (Maybe Explainability)
mmExplainability = lens _mmExplainability (\s a -> s {_mmExplainability = a})

-- | Metrics that measure the quality of the input data for a model.
mmModelDataQuality :: Lens' ModelMetrics (Maybe ModelDataQuality)
mmModelDataQuality = lens _mmModelDataQuality (\s a -> s {_mmModelDataQuality = a})

-- | Metrics that measure the quality of a model.
mmModelQuality :: Lens' ModelMetrics (Maybe ModelQuality)
mmModelQuality = lens _mmModelQuality (\s a -> s {_mmModelQuality = a})

instance FromJSON ModelMetrics where
  parseJSON =
    withObject
      "ModelMetrics"
      ( \x ->
          ModelMetrics'
            <$> (x .:? "Bias")
            <*> (x .:? "Explainability")
            <*> (x .:? "ModelDataQuality")
            <*> (x .:? "ModelQuality")
      )

instance Hashable ModelMetrics

instance NFData ModelMetrics

instance ToJSON ModelMetrics where
  toJSON ModelMetrics' {..} =
    object
      ( catMaybes
          [ ("Bias" .=) <$> _mmBias,
            ("Explainability" .=) <$> _mmExplainability,
            ("ModelDataQuality" .=) <$> _mmModelDataQuality,
            ("ModelQuality" .=) <$> _mmModelQuality
          ]
      )
