{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelBiasAppSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelBiasAppSpecification where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Docker container image configuration object for the model bias job.
--
--
--
-- /See:/ 'modelBiasAppSpecification' smart constructor.
data ModelBiasAppSpecification = ModelBiasAppSpecification'
  { _mbasEnvironment ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _mbasImageURI ::
      !Text,
    _mbasConfigURI ::
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

-- | Creates a value of 'ModelBiasAppSpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mbasEnvironment' - Sets the environment variables in the Docker container.
--
-- * 'mbasImageURI' - The container image to be run by the model bias job.
--
-- * 'mbasConfigURI' - JSON formatted S3 file that defines bias parameters. For more information on this JSON configuration file, see <https://docs.aws.amazon.com/sagemaker/latest/json-bias-parameter-config.html Configure bias parameters> .
modelBiasAppSpecification ::
  -- | 'mbasImageURI'
  Text ->
  -- | 'mbasConfigURI'
  Text ->
  ModelBiasAppSpecification
modelBiasAppSpecification pImageURI_ pConfigURI_ =
  ModelBiasAppSpecification'
    { _mbasEnvironment =
        Nothing,
      _mbasImageURI = pImageURI_,
      _mbasConfigURI = pConfigURI_
    }

-- | Sets the environment variables in the Docker container.
mbasEnvironment :: Lens' ModelBiasAppSpecification (HashMap Text Text)
mbasEnvironment = lens _mbasEnvironment (\s a -> s {_mbasEnvironment = a}) . _Default . _Map

-- | The container image to be run by the model bias job.
mbasImageURI :: Lens' ModelBiasAppSpecification Text
mbasImageURI = lens _mbasImageURI (\s a -> s {_mbasImageURI = a})

-- | JSON formatted S3 file that defines bias parameters. For more information on this JSON configuration file, see <https://docs.aws.amazon.com/sagemaker/latest/json-bias-parameter-config.html Configure bias parameters> .
mbasConfigURI :: Lens' ModelBiasAppSpecification Text
mbasConfigURI = lens _mbasConfigURI (\s a -> s {_mbasConfigURI = a})

instance FromJSON ModelBiasAppSpecification where
  parseJSON =
    withObject
      "ModelBiasAppSpecification"
      ( \x ->
          ModelBiasAppSpecification'
            <$> (x .:? "Environment" .!= mempty)
            <*> (x .: "ImageUri")
            <*> (x .: "ConfigUri")
      )

instance Hashable ModelBiasAppSpecification

instance NFData ModelBiasAppSpecification

instance ToJSON ModelBiasAppSpecification where
  toJSON ModelBiasAppSpecification' {..} =
    object
      ( catMaybes
          [ ("Environment" .=) <$> _mbasEnvironment,
            Just ("ImageUri" .= _mbasImageURI),
            Just ("ConfigUri" .= _mbasConfigURI)
          ]
      )
