{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.S3Object
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.S3Object where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides the S3 bucket name and object name.
--
--
-- The region for the S3 bucket containing the S3 object must match the region you use for Amazon Rekognition operations.
--
-- For Amazon Rekognition to process an S3 object, the user must have permission to access the S3 object. For more information, see Resource-Based Policies in the Amazon Rekognition Developer Guide.
--
--
-- /See:/ 's3Object' smart constructor.
data S3Object = S3Object'
  { _soVersion ::
      !(Maybe Text),
    _soName :: !(Maybe Text),
    _soBucket :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'S3Object' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'soVersion' - If the bucket is versioning enabled, you can specify the object version.
--
-- * 'soName' - S3 object key name.
--
-- * 'soBucket' - Name of the S3 bucket.
s3Object ::
  S3Object
s3Object =
  S3Object'
    { _soVersion = Nothing,
      _soName = Nothing,
      _soBucket = Nothing
    }

-- | If the bucket is versioning enabled, you can specify the object version.
soVersion :: Lens' S3Object (Maybe Text)
soVersion = lens _soVersion (\s a -> s {_soVersion = a})

-- | S3 object key name.
soName :: Lens' S3Object (Maybe Text)
soName = lens _soName (\s a -> s {_soName = a})

-- | Name of the S3 bucket.
soBucket :: Lens' S3Object (Maybe Text)
soBucket = lens _soBucket (\s a -> s {_soBucket = a})

instance FromJSON S3Object where
  parseJSON =
    withObject
      "S3Object"
      ( \x ->
          S3Object'
            <$> (x .:? "Version")
            <*> (x .:? "Name")
            <*> (x .:? "Bucket")
      )

instance Hashable S3Object

instance NFData S3Object

instance ToJSON S3Object where
  toJSON S3Object' {..} =
    object
      ( catMaybes
          [ ("Version" .=) <$> _soVersion,
            ("Name" .=) <$> _soName,
            ("Bucket" .=) <$> _soBucket
          ]
      )
