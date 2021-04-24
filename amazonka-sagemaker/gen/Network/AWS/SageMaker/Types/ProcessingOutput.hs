{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProcessingOutput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProcessingOutput where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ProcessingFeatureStoreOutput
import Network.AWS.SageMaker.Types.ProcessingS3Output

-- | Describes the results of a processing job. The processing output must specify exactly one of either @S3Output@ or @FeatureStoreOutput@ types.
--
--
--
-- /See:/ 'processingOutput' smart constructor.
data ProcessingOutput = ProcessingOutput'
  { _poS3Output ::
      !(Maybe ProcessingS3Output),
    _poFeatureStoreOutput ::
      !(Maybe ProcessingFeatureStoreOutput),
    _poAppManaged :: !(Maybe Bool),
    _poOutputName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProcessingOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'poS3Output' - Configuration for processing job outputs in Amazon S3.
--
-- * 'poFeatureStoreOutput' - Configuration for processing job outputs in Amazon SageMaker Feature Store. This processing output type is only supported when @AppManaged@ is specified.
--
-- * 'poAppManaged' - When @True@ , output operations such as data upload are managed natively by the processing job application. When @False@ (default), output operations are managed by Amazon SageMaker.
--
-- * 'poOutputName' - The name for the processing job output.
processingOutput ::
  -- | 'poOutputName'
  Text ->
  ProcessingOutput
processingOutput pOutputName_ =
  ProcessingOutput'
    { _poS3Output = Nothing,
      _poFeatureStoreOutput = Nothing,
      _poAppManaged = Nothing,
      _poOutputName = pOutputName_
    }

-- | Configuration for processing job outputs in Amazon S3.
poS3Output :: Lens' ProcessingOutput (Maybe ProcessingS3Output)
poS3Output = lens _poS3Output (\s a -> s {_poS3Output = a})

-- | Configuration for processing job outputs in Amazon SageMaker Feature Store. This processing output type is only supported when @AppManaged@ is specified.
poFeatureStoreOutput :: Lens' ProcessingOutput (Maybe ProcessingFeatureStoreOutput)
poFeatureStoreOutput = lens _poFeatureStoreOutput (\s a -> s {_poFeatureStoreOutput = a})

-- | When @True@ , output operations such as data upload are managed natively by the processing job application. When @False@ (default), output operations are managed by Amazon SageMaker.
poAppManaged :: Lens' ProcessingOutput (Maybe Bool)
poAppManaged = lens _poAppManaged (\s a -> s {_poAppManaged = a})

-- | The name for the processing job output.
poOutputName :: Lens' ProcessingOutput Text
poOutputName = lens _poOutputName (\s a -> s {_poOutputName = a})

instance FromJSON ProcessingOutput where
  parseJSON =
    withObject
      "ProcessingOutput"
      ( \x ->
          ProcessingOutput'
            <$> (x .:? "S3Output")
            <*> (x .:? "FeatureStoreOutput")
            <*> (x .:? "AppManaged")
            <*> (x .: "OutputName")
      )

instance Hashable ProcessingOutput

instance NFData ProcessingOutput

instance ToJSON ProcessingOutput where
  toJSON ProcessingOutput' {..} =
    object
      ( catMaybes
          [ ("S3Output" .=) <$> _poS3Output,
            ("FeatureStoreOutput" .=) <$> _poFeatureStoreOutput,
            ("AppManaged" .=) <$> _poAppManaged,
            Just ("OutputName" .= _poOutputName)
          ]
      )
