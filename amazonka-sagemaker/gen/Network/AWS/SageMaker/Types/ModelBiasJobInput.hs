{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelBiasJobInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelBiasJobInput where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.EndpointInput
import Network.AWS.SageMaker.Types.MonitoringGroundTruthS3Input

-- | Inputs for the model bias job.
--
--
--
-- /See:/ 'modelBiasJobInput' smart constructor.
data ModelBiasJobInput = ModelBiasJobInput'
  { _mbjiEndpointInput ::
      !EndpointInput,
    _mbjiGroundTruthS3Input ::
      !MonitoringGroundTruthS3Input
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ModelBiasJobInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mbjiEndpointInput' - Undocumented member.
--
-- * 'mbjiGroundTruthS3Input' - Location of ground truth labels to use in model bias job.
modelBiasJobInput ::
  -- | 'mbjiEndpointInput'
  EndpointInput ->
  -- | 'mbjiGroundTruthS3Input'
  MonitoringGroundTruthS3Input ->
  ModelBiasJobInput
modelBiasJobInput
  pEndpointInput_
  pGroundTruthS3Input_ =
    ModelBiasJobInput'
      { _mbjiEndpointInput =
          pEndpointInput_,
        _mbjiGroundTruthS3Input = pGroundTruthS3Input_
      }

-- | Undocumented member.
mbjiEndpointInput :: Lens' ModelBiasJobInput EndpointInput
mbjiEndpointInput = lens _mbjiEndpointInput (\s a -> s {_mbjiEndpointInput = a})

-- | Location of ground truth labels to use in model bias job.
mbjiGroundTruthS3Input :: Lens' ModelBiasJobInput MonitoringGroundTruthS3Input
mbjiGroundTruthS3Input = lens _mbjiGroundTruthS3Input (\s a -> s {_mbjiGroundTruthS3Input = a})

instance FromJSON ModelBiasJobInput where
  parseJSON =
    withObject
      "ModelBiasJobInput"
      ( \x ->
          ModelBiasJobInput'
            <$> (x .: "EndpointInput")
            <*> (x .: "GroundTruthS3Input")
      )

instance Hashable ModelBiasJobInput

instance NFData ModelBiasJobInput

instance ToJSON ModelBiasJobInput where
  toJSON ModelBiasJobInput' {..} =
    object
      ( catMaybes
          [ Just ("EndpointInput" .= _mbjiEndpointInput),
            Just
              ("GroundTruthS3Input" .= _mbjiGroundTruthS3Input)
          ]
      )
