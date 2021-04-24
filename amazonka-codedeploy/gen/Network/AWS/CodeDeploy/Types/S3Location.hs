{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.S3Location
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.S3Location where

import Network.AWS.CodeDeploy.Types.BundleType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the location of application artifacts stored in Amazon S3.
--
--
--
-- /See:/ 's3Location' smart constructor.
data S3Location = S3Location'
  { _slETag ::
      !(Maybe Text),
    _slKey :: !(Maybe Text),
    _slBundleType :: !(Maybe BundleType),
    _slVersion :: !(Maybe Text),
    _slBucket :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'S3Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slETag' - The ETag of the Amazon S3 object that represents the bundled artifacts for the application revision. If the ETag is not specified as an input parameter, ETag validation of the object is skipped.
--
-- * 'slKey' - The name of the Amazon S3 object that represents the bundled artifacts for the application revision.
--
-- * 'slBundleType' - The file type of the application revision. Must be one of the following:     * @tar@ : A tar archive file.     * @tgz@ : A compressed tar archive file.     * @zip@ : A zip archive file.
--
-- * 'slVersion' - A specific version of the Amazon S3 object that represents the bundled artifacts for the application revision. If the version is not specified, the system uses the most recent version by default.
--
-- * 'slBucket' - The name of the Amazon S3 bucket where the application revision is stored.
s3Location ::
  S3Location
s3Location =
  S3Location'
    { _slETag = Nothing,
      _slKey = Nothing,
      _slBundleType = Nothing,
      _slVersion = Nothing,
      _slBucket = Nothing
    }

-- | The ETag of the Amazon S3 object that represents the bundled artifacts for the application revision. If the ETag is not specified as an input parameter, ETag validation of the object is skipped.
slETag :: Lens' S3Location (Maybe Text)
slETag = lens _slETag (\s a -> s {_slETag = a})

-- | The name of the Amazon S3 object that represents the bundled artifacts for the application revision.
slKey :: Lens' S3Location (Maybe Text)
slKey = lens _slKey (\s a -> s {_slKey = a})

-- | The file type of the application revision. Must be one of the following:     * @tar@ : A tar archive file.     * @tgz@ : A compressed tar archive file.     * @zip@ : A zip archive file.
slBundleType :: Lens' S3Location (Maybe BundleType)
slBundleType = lens _slBundleType (\s a -> s {_slBundleType = a})

-- | A specific version of the Amazon S3 object that represents the bundled artifacts for the application revision. If the version is not specified, the system uses the most recent version by default.
slVersion :: Lens' S3Location (Maybe Text)
slVersion = lens _slVersion (\s a -> s {_slVersion = a})

-- | The name of the Amazon S3 bucket where the application revision is stored.
slBucket :: Lens' S3Location (Maybe Text)
slBucket = lens _slBucket (\s a -> s {_slBucket = a})

instance FromJSON S3Location where
  parseJSON =
    withObject
      "S3Location"
      ( \x ->
          S3Location'
            <$> (x .:? "eTag")
            <*> (x .:? "key")
            <*> (x .:? "bundleType")
            <*> (x .:? "version")
            <*> (x .:? "bucket")
      )

instance Hashable S3Location

instance NFData S3Location

instance ToJSON S3Location where
  toJSON S3Location' {..} =
    object
      ( catMaybes
          [ ("eTag" .=) <$> _slETag,
            ("key" .=) <$> _slKey,
            ("bundleType" .=) <$> _slBundleType,
            ("version" .=) <$> _slVersion,
            ("bucket" .=) <$> _slBucket
          ]
      )
