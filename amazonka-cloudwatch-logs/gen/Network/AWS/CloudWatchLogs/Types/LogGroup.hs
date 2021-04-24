{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchLogs.Types.LogGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchLogs.Types.LogGroup where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a log group.
--
--
--
-- /See:/ 'logGroup' smart constructor.
data LogGroup = LogGroup'
  { _lgRetentionInDays ::
      !(Maybe Int),
    _lgCreationTime :: !(Maybe Nat),
    _lgArn :: !(Maybe Text),
    _lgStoredBytes :: !(Maybe Nat),
    _lgMetricFilterCount :: !(Maybe Int),
    _lgKmsKeyId :: !(Maybe Text),
    _lgLogGroupName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LogGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgRetentionInDays' - Undocumented member.
--
-- * 'lgCreationTime' - The creation time of the log group, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.
--
-- * 'lgArn' - The Amazon Resource Name (ARN) of the log group.
--
-- * 'lgStoredBytes' - The number of bytes stored.
--
-- * 'lgMetricFilterCount' - The number of metric filters.
--
-- * 'lgKmsKeyId' - The Amazon Resource Name (ARN) of the CMK to use when encrypting log data.
--
-- * 'lgLogGroupName' - The name of the log group.
logGroup ::
  LogGroup
logGroup =
  LogGroup'
    { _lgRetentionInDays = Nothing,
      _lgCreationTime = Nothing,
      _lgArn = Nothing,
      _lgStoredBytes = Nothing,
      _lgMetricFilterCount = Nothing,
      _lgKmsKeyId = Nothing,
      _lgLogGroupName = Nothing
    }

-- | Undocumented member.
lgRetentionInDays :: Lens' LogGroup (Maybe Int)
lgRetentionInDays = lens _lgRetentionInDays (\s a -> s {_lgRetentionInDays = a})

-- | The creation time of the log group, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.
lgCreationTime :: Lens' LogGroup (Maybe Natural)
lgCreationTime = lens _lgCreationTime (\s a -> s {_lgCreationTime = a}) . mapping _Nat

-- | The Amazon Resource Name (ARN) of the log group.
lgArn :: Lens' LogGroup (Maybe Text)
lgArn = lens _lgArn (\s a -> s {_lgArn = a})

-- | The number of bytes stored.
lgStoredBytes :: Lens' LogGroup (Maybe Natural)
lgStoredBytes = lens _lgStoredBytes (\s a -> s {_lgStoredBytes = a}) . mapping _Nat

-- | The number of metric filters.
lgMetricFilterCount :: Lens' LogGroup (Maybe Int)
lgMetricFilterCount = lens _lgMetricFilterCount (\s a -> s {_lgMetricFilterCount = a})

-- | The Amazon Resource Name (ARN) of the CMK to use when encrypting log data.
lgKmsKeyId :: Lens' LogGroup (Maybe Text)
lgKmsKeyId = lens _lgKmsKeyId (\s a -> s {_lgKmsKeyId = a})

-- | The name of the log group.
lgLogGroupName :: Lens' LogGroup (Maybe Text)
lgLogGroupName = lens _lgLogGroupName (\s a -> s {_lgLogGroupName = a})

instance FromJSON LogGroup where
  parseJSON =
    withObject
      "LogGroup"
      ( \x ->
          LogGroup'
            <$> (x .:? "retentionInDays")
            <*> (x .:? "creationTime")
            <*> (x .:? "arn")
            <*> (x .:? "storedBytes")
            <*> (x .:? "metricFilterCount")
            <*> (x .:? "kmsKeyId")
            <*> (x .:? "logGroupName")
      )

instance Hashable LogGroup

instance NFData LogGroup
