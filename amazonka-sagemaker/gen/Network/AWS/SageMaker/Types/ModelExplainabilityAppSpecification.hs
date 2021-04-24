{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelExplainabilityAppSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelExplainabilityAppSpecification where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Docker container image configuration object for the model explainability job.
--
--
--
-- /See:/ 'modelExplainabilityAppSpecification' smart constructor.
data ModelExplainabilityAppSpecification = ModelExplainabilityAppSpecification'
  { _measEnvironment ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _measImageURI ::
      !Text,
    _measConfigURI ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ModelExplainabilityAppSpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'measEnvironment' - Sets the environment variables in the Docker container.
--
-- * 'measImageURI' - The container image to be run by the model explainability job.
--
-- * 'measConfigURI' - JSON formatted S3 file that defines explainability parameters. For more information on this JSON configuration file, see <https://docs.aws.amazon.com/sagemaker/latest/json-model-explainability-parameter-config.html Configure model explainability parameters> .
modelExplainabilityAppSpecification ::
  -- | 'measImageURI'
  Text ->
  -- | 'measConfigURI'
  Text ->
  ModelExplainabilityAppSpecification
modelExplainabilityAppSpecification
  pImageURI_
  pConfigURI_ =
    ModelExplainabilityAppSpecification'
      { _measEnvironment =
          Nothing,
        _measImageURI = pImageURI_,
        _measConfigURI = pConfigURI_
      }

-- | Sets the environment variables in the Docker container.
measEnvironment :: Lens' ModelExplainabilityAppSpecification (HashMap Text Text)
measEnvironment = lens _measEnvironment (\s a -> s {_measEnvironment = a}) . _Default . _Map

-- | The container image to be run by the model explainability job.
measImageURI :: Lens' ModelExplainabilityAppSpecification Text
measImageURI = lens _measImageURI (\s a -> s {_measImageURI = a})

-- | JSON formatted S3 file that defines explainability parameters. For more information on this JSON configuration file, see <https://docs.aws.amazon.com/sagemaker/latest/json-model-explainability-parameter-config.html Configure model explainability parameters> .
measConfigURI :: Lens' ModelExplainabilityAppSpecification Text
measConfigURI = lens _measConfigURI (\s a -> s {_measConfigURI = a})

instance FromJSON ModelExplainabilityAppSpecification where
  parseJSON =
    withObject
      "ModelExplainabilityAppSpecification"
      ( \x ->
          ModelExplainabilityAppSpecification'
            <$> (x .:? "Environment" .!= mempty)
            <*> (x .: "ImageUri")
            <*> (x .: "ConfigUri")
      )

instance Hashable ModelExplainabilityAppSpecification

instance NFData ModelExplainabilityAppSpecification

instance ToJSON ModelExplainabilityAppSpecification where
  toJSON ModelExplainabilityAppSpecification' {..} =
    object
      ( catMaybes
          [ ("Environment" .=) <$> _measEnvironment,
            Just ("ImageUri" .= _measImageURI),
            Just ("ConfigUri" .= _measConfigURI)
          ]
      )
