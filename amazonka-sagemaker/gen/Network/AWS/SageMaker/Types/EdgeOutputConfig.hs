{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.EdgeOutputConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.EdgeOutputConfig where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The output configuration.
--
--
--
-- /See:/ 'edgeOutputConfig' smart constructor.
data EdgeOutputConfig = EdgeOutputConfig'
  { _eocKMSKeyId ::
      !(Maybe Text),
    _eocS3OutputLocation :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EdgeOutputConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eocKMSKeyId' - The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt data on the storage volume after compilation job. If you don't provide a KMS key ID, Amazon SageMaker uses the default KMS key for Amazon S3 for your role's account.
--
-- * 'eocS3OutputLocation' - The Amazon Simple Storage (S3) bucker URI.
edgeOutputConfig ::
  -- | 'eocS3OutputLocation'
  Text ->
  EdgeOutputConfig
edgeOutputConfig pS3OutputLocation_ =
  EdgeOutputConfig'
    { _eocKMSKeyId = Nothing,
      _eocS3OutputLocation = pS3OutputLocation_
    }

-- | The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt data on the storage volume after compilation job. If you don't provide a KMS key ID, Amazon SageMaker uses the default KMS key for Amazon S3 for your role's account.
eocKMSKeyId :: Lens' EdgeOutputConfig (Maybe Text)
eocKMSKeyId = lens _eocKMSKeyId (\s a -> s {_eocKMSKeyId = a})

-- | The Amazon Simple Storage (S3) bucker URI.
eocS3OutputLocation :: Lens' EdgeOutputConfig Text
eocS3OutputLocation = lens _eocS3OutputLocation (\s a -> s {_eocS3OutputLocation = a})

instance FromJSON EdgeOutputConfig where
  parseJSON =
    withObject
      "EdgeOutputConfig"
      ( \x ->
          EdgeOutputConfig'
            <$> (x .:? "KmsKeyId") <*> (x .: "S3OutputLocation")
      )

instance Hashable EdgeOutputConfig

instance NFData EdgeOutputConfig

instance ToJSON EdgeOutputConfig where
  toJSON EdgeOutputConfig' {..} =
    object
      ( catMaybes
          [ ("KmsKeyId" .=) <$> _eocKMSKeyId,
            Just ("S3OutputLocation" .= _eocS3OutputLocation)
          ]
      )
