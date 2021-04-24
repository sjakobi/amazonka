{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.ApplicationSettingsResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.ApplicationSettingsResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the persistent application settings for users of a stack.
--
--
--
-- /See:/ 'applicationSettingsResponse' smart constructor.
data ApplicationSettingsResponse = ApplicationSettingsResponse'
  { _asrEnabled ::
      !(Maybe Bool),
    _asrSettingsGroup ::
      !(Maybe Text),
    _asrS3BucketName ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ApplicationSettingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asrEnabled' - Specifies whether persistent application settings are enabled for users during their streaming sessions.
--
-- * 'asrSettingsGroup' - The path prefix for the S3 bucket where users’ persistent application settings are stored.
--
-- * 'asrS3BucketName' - The S3 bucket where users’ persistent application settings are stored. When persistent application settings are enabled for the first time for an account in an AWS Region, an S3 bucket is created. The bucket is unique to the AWS account and the Region.
applicationSettingsResponse ::
  ApplicationSettingsResponse
applicationSettingsResponse =
  ApplicationSettingsResponse'
    { _asrEnabled = Nothing,
      _asrSettingsGroup = Nothing,
      _asrS3BucketName = Nothing
    }

-- | Specifies whether persistent application settings are enabled for users during their streaming sessions.
asrEnabled :: Lens' ApplicationSettingsResponse (Maybe Bool)
asrEnabled = lens _asrEnabled (\s a -> s {_asrEnabled = a})

-- | The path prefix for the S3 bucket where users’ persistent application settings are stored.
asrSettingsGroup :: Lens' ApplicationSettingsResponse (Maybe Text)
asrSettingsGroup = lens _asrSettingsGroup (\s a -> s {_asrSettingsGroup = a})

-- | The S3 bucket where users’ persistent application settings are stored. When persistent application settings are enabled for the first time for an account in an AWS Region, an S3 bucket is created. The bucket is unique to the AWS account and the Region.
asrS3BucketName :: Lens' ApplicationSettingsResponse (Maybe Text)
asrS3BucketName = lens _asrS3BucketName (\s a -> s {_asrS3BucketName = a})

instance FromJSON ApplicationSettingsResponse where
  parseJSON =
    withObject
      "ApplicationSettingsResponse"
      ( \x ->
          ApplicationSettingsResponse'
            <$> (x .:? "Enabled")
            <*> (x .:? "SettingsGroup")
            <*> (x .:? "S3BucketName")
      )

instance Hashable ApplicationSettingsResponse

instance NFData ApplicationSettingsResponse
