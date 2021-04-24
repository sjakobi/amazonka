{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelQualityJobInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelQualityJobInput where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.EndpointInput
import Network.AWS.SageMaker.Types.MonitoringGroundTruthS3Input

-- | The input for the model quality monitoring job. Currently endponts are supported for input for model quality monitoring jobs.
--
--
--
-- /See:/ 'modelQualityJobInput' smart constructor.
data ModelQualityJobInput = ModelQualityJobInput'
  { _mqjiEndpointInput ::
      !EndpointInput,
    _mqjiGroundTruthS3Input ::
      !MonitoringGroundTruthS3Input
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ModelQualityJobInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mqjiEndpointInput' - Undocumented member.
--
-- * 'mqjiGroundTruthS3Input' - The ground truth label provided for the model.
modelQualityJobInput ::
  -- | 'mqjiEndpointInput'
  EndpointInput ->
  -- | 'mqjiGroundTruthS3Input'
  MonitoringGroundTruthS3Input ->
  ModelQualityJobInput
modelQualityJobInput
  pEndpointInput_
  pGroundTruthS3Input_ =
    ModelQualityJobInput'
      { _mqjiEndpointInput =
          pEndpointInput_,
        _mqjiGroundTruthS3Input = pGroundTruthS3Input_
      }

-- | Undocumented member.
mqjiEndpointInput :: Lens' ModelQualityJobInput EndpointInput
mqjiEndpointInput = lens _mqjiEndpointInput (\s a -> s {_mqjiEndpointInput = a})

-- | The ground truth label provided for the model.
mqjiGroundTruthS3Input :: Lens' ModelQualityJobInput MonitoringGroundTruthS3Input
mqjiGroundTruthS3Input = lens _mqjiGroundTruthS3Input (\s a -> s {_mqjiGroundTruthS3Input = a})

instance FromJSON ModelQualityJobInput where
  parseJSON =
    withObject
      "ModelQualityJobInput"
      ( \x ->
          ModelQualityJobInput'
            <$> (x .: "EndpointInput")
            <*> (x .: "GroundTruthS3Input")
      )

instance Hashable ModelQualityJobInput

instance NFData ModelQualityJobInput

instance ToJSON ModelQualityJobInput where
  toJSON ModelQualityJobInput' {..} =
    object
      ( catMaybes
          [ Just ("EndpointInput" .= _mqjiEndpointInput),
            Just
              ("GroundTruthS3Input" .= _mqjiGroundTruthS3Input)
          ]
      )
