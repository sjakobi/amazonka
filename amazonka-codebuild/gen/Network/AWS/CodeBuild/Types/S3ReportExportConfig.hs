{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.S3ReportExportConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.S3ReportExportConfig where

import Network.AWS.CodeBuild.Types.ReportPackagingType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the S3 bucket where the raw data of a report are exported.
--
--
--
-- /See:/ 's3ReportExportConfig' smart constructor.
data S3ReportExportConfig = S3ReportExportConfig'
  { _srecBucketOwner ::
      !(Maybe Text),
    _srecEncryptionKey ::
      !(Maybe Text),
    _srecPackaging ::
      !(Maybe ReportPackagingType),
    _srecEncryptionDisabled ::
      !(Maybe Bool),
    _srecBucket :: !(Maybe Text),
    _srecPath :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'S3ReportExportConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srecBucketOwner' - The AWS account identifier of the owner of the Amazon S3 bucket. This allows report data to be exported to an Amazon S3 bucket that is owned by an account other than the account running the build.
--
-- * 'srecEncryptionKey' - The encryption key for the report's encrypted raw data.
--
-- * 'srecPackaging' - The type of build output artifact to create. Valid values include:      * @NONE@ : AWS CodeBuild creates the raw data in the output bucket. This is the default if packaging is not specified.      * @ZIP@ : AWS CodeBuild creates a ZIP file with the raw data in the output bucket.
--
-- * 'srecEncryptionDisabled' - A boolean value that specifies if the results of a report are encrypted.
--
-- * 'srecBucket' - The name of the S3 bucket where the raw data of a report are exported.
--
-- * 'srecPath' - The path to the exported report's raw data results.
s3ReportExportConfig ::
  S3ReportExportConfig
s3ReportExportConfig =
  S3ReportExportConfig'
    { _srecBucketOwner = Nothing,
      _srecEncryptionKey = Nothing,
      _srecPackaging = Nothing,
      _srecEncryptionDisabled = Nothing,
      _srecBucket = Nothing,
      _srecPath = Nothing
    }

-- | The AWS account identifier of the owner of the Amazon S3 bucket. This allows report data to be exported to an Amazon S3 bucket that is owned by an account other than the account running the build.
srecBucketOwner :: Lens' S3ReportExportConfig (Maybe Text)
srecBucketOwner = lens _srecBucketOwner (\s a -> s {_srecBucketOwner = a})

-- | The encryption key for the report's encrypted raw data.
srecEncryptionKey :: Lens' S3ReportExportConfig (Maybe Text)
srecEncryptionKey = lens _srecEncryptionKey (\s a -> s {_srecEncryptionKey = a})

-- | The type of build output artifact to create. Valid values include:      * @NONE@ : AWS CodeBuild creates the raw data in the output bucket. This is the default if packaging is not specified.      * @ZIP@ : AWS CodeBuild creates a ZIP file with the raw data in the output bucket.
srecPackaging :: Lens' S3ReportExportConfig (Maybe ReportPackagingType)
srecPackaging = lens _srecPackaging (\s a -> s {_srecPackaging = a})

-- | A boolean value that specifies if the results of a report are encrypted.
srecEncryptionDisabled :: Lens' S3ReportExportConfig (Maybe Bool)
srecEncryptionDisabled = lens _srecEncryptionDisabled (\s a -> s {_srecEncryptionDisabled = a})

-- | The name of the S3 bucket where the raw data of a report are exported.
srecBucket :: Lens' S3ReportExportConfig (Maybe Text)
srecBucket = lens _srecBucket (\s a -> s {_srecBucket = a})

-- | The path to the exported report's raw data results.
srecPath :: Lens' S3ReportExportConfig (Maybe Text)
srecPath = lens _srecPath (\s a -> s {_srecPath = a})

instance FromJSON S3ReportExportConfig where
  parseJSON =
    withObject
      "S3ReportExportConfig"
      ( \x ->
          S3ReportExportConfig'
            <$> (x .:? "bucketOwner")
            <*> (x .:? "encryptionKey")
            <*> (x .:? "packaging")
            <*> (x .:? "encryptionDisabled")
            <*> (x .:? "bucket")
            <*> (x .:? "path")
      )

instance Hashable S3ReportExportConfig

instance NFData S3ReportExportConfig

instance ToJSON S3ReportExportConfig where
  toJSON S3ReportExportConfig' {..} =
    object
      ( catMaybes
          [ ("bucketOwner" .=) <$> _srecBucketOwner,
            ("encryptionKey" .=) <$> _srecEncryptionKey,
            ("packaging" .=) <$> _srecPackaging,
            ("encryptionDisabled" .=)
              <$> _srecEncryptionDisabled,
            ("bucket" .=) <$> _srecBucket,
            ("path" .=) <$> _srecPath
          ]
      )
