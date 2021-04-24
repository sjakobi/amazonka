{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProcessingInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProcessingInput where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.DatasetDefinition
import Network.AWS.SageMaker.Types.ProcessingS3Input

-- | The inputs for a processing job. The processing input must specify exactly one of either @S3Input@ or @DatasetDefinition@ types.
--
--
--
-- /See:/ 'processingInput' smart constructor.
data ProcessingInput = ProcessingInput'
  { _piDatasetDefinition ::
      !(Maybe DatasetDefinition),
    _piAppManaged :: !(Maybe Bool),
    _piS3Input ::
      !(Maybe ProcessingS3Input),
    _piInputName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProcessingInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piDatasetDefinition' - Configuration for a Dataset Definition input.
--
-- * 'piAppManaged' - When @True@ , input operations such as data download are managed natively by the processing job application. When @False@ (default), input operations are managed by Amazon SageMaker.
--
-- * 'piS3Input' - Configuration for downloading input data from Amazon S3 into the processing container.
--
-- * 'piInputName' - The name for the processing job input.
processingInput ::
  -- | 'piInputName'
  Text ->
  ProcessingInput
processingInput pInputName_ =
  ProcessingInput'
    { _piDatasetDefinition = Nothing,
      _piAppManaged = Nothing,
      _piS3Input = Nothing,
      _piInputName = pInputName_
    }

-- | Configuration for a Dataset Definition input.
piDatasetDefinition :: Lens' ProcessingInput (Maybe DatasetDefinition)
piDatasetDefinition = lens _piDatasetDefinition (\s a -> s {_piDatasetDefinition = a})

-- | When @True@ , input operations such as data download are managed natively by the processing job application. When @False@ (default), input operations are managed by Amazon SageMaker.
piAppManaged :: Lens' ProcessingInput (Maybe Bool)
piAppManaged = lens _piAppManaged (\s a -> s {_piAppManaged = a})

-- | Configuration for downloading input data from Amazon S3 into the processing container.
piS3Input :: Lens' ProcessingInput (Maybe ProcessingS3Input)
piS3Input = lens _piS3Input (\s a -> s {_piS3Input = a})

-- | The name for the processing job input.
piInputName :: Lens' ProcessingInput Text
piInputName = lens _piInputName (\s a -> s {_piInputName = a})

instance FromJSON ProcessingInput where
  parseJSON =
    withObject
      "ProcessingInput"
      ( \x ->
          ProcessingInput'
            <$> (x .:? "DatasetDefinition")
            <*> (x .:? "AppManaged")
            <*> (x .:? "S3Input")
            <*> (x .: "InputName")
      )

instance Hashable ProcessingInput

instance NFData ProcessingInput

instance ToJSON ProcessingInput where
  toJSON ProcessingInput' {..} =
    object
      ( catMaybes
          [ ("DatasetDefinition" .=) <$> _piDatasetDefinition,
            ("AppManaged" .=) <$> _piAppManaged,
            ("S3Input" .=) <$> _piS3Input,
            Just ("InputName" .= _piInputName)
          ]
      )
