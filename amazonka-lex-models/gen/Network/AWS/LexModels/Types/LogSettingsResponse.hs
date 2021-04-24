{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.Types.LogSettingsResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.LogSettingsResponse where

import Network.AWS.Lens
import Network.AWS.LexModels.Types.Destination
import Network.AWS.LexModels.Types.LogType
import Network.AWS.Prelude

-- | The settings for conversation logs.
--
--
--
-- /See:/ 'logSettingsResponse' smart constructor.
data LogSettingsResponse = LogSettingsResponse'
  { _lResourceARN ::
      !(Maybe Text),
    _lLogType :: !(Maybe LogType),
    _lKmsKeyARN :: !(Maybe Text),
    _lDestination ::
      !(Maybe Destination),
    _lResourcePrefix ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LogSettingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lResourceARN' - The Amazon Resource Name (ARN) of the CloudWatch Logs log group or S3 bucket where the logs are delivered.
--
-- * 'lLogType' - The type of logging that is enabled.
--
-- * 'lKmsKeyARN' - The Amazon Resource Name (ARN) of the key used to encrypt audio logs in an S3 bucket.
--
-- * 'lDestination' - The destination where logs are delivered.
--
-- * 'lResourcePrefix' - The resource prefix is the first part of the S3 object key within the S3 bucket that you specified to contain audio logs. For CloudWatch Logs it is the prefix of the log stream name within the log group that you specified.
logSettingsResponse ::
  LogSettingsResponse
logSettingsResponse =
  LogSettingsResponse'
    { _lResourceARN = Nothing,
      _lLogType = Nothing,
      _lKmsKeyARN = Nothing,
      _lDestination = Nothing,
      _lResourcePrefix = Nothing
    }

-- | The Amazon Resource Name (ARN) of the CloudWatch Logs log group or S3 bucket where the logs are delivered.
lResourceARN :: Lens' LogSettingsResponse (Maybe Text)
lResourceARN = lens _lResourceARN (\s a -> s {_lResourceARN = a})

-- | The type of logging that is enabled.
lLogType :: Lens' LogSettingsResponse (Maybe LogType)
lLogType = lens _lLogType (\s a -> s {_lLogType = a})

-- | The Amazon Resource Name (ARN) of the key used to encrypt audio logs in an S3 bucket.
lKmsKeyARN :: Lens' LogSettingsResponse (Maybe Text)
lKmsKeyARN = lens _lKmsKeyARN (\s a -> s {_lKmsKeyARN = a})

-- | The destination where logs are delivered.
lDestination :: Lens' LogSettingsResponse (Maybe Destination)
lDestination = lens _lDestination (\s a -> s {_lDestination = a})

-- | The resource prefix is the first part of the S3 object key within the S3 bucket that you specified to contain audio logs. For CloudWatch Logs it is the prefix of the log stream name within the log group that you specified.
lResourcePrefix :: Lens' LogSettingsResponse (Maybe Text)
lResourcePrefix = lens _lResourcePrefix (\s a -> s {_lResourcePrefix = a})

instance FromJSON LogSettingsResponse where
  parseJSON =
    withObject
      "LogSettingsResponse"
      ( \x ->
          LogSettingsResponse'
            <$> (x .:? "resourceArn")
            <*> (x .:? "logType")
            <*> (x .:? "kmsKeyArn")
            <*> (x .:? "destination")
            <*> (x .:? "resourcePrefix")
      )

instance Hashable LogSettingsResponse

instance NFData LogSettingsResponse
