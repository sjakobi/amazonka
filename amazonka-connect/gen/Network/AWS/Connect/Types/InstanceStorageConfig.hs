{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.InstanceStorageConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.InstanceStorageConfig where

import Network.AWS.Connect.Types.KinesisFirehoseConfig
import Network.AWS.Connect.Types.KinesisStreamConfig
import Network.AWS.Connect.Types.KinesisVideoStreamConfig
import Network.AWS.Connect.Types.S3Config
import Network.AWS.Connect.Types.StorageType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The storage configuration for the instance.
--
--
--
-- /See:/ 'instanceStorageConfig' smart constructor.
data InstanceStorageConfig = InstanceStorageConfig'
  { _iscKinesisStreamConfig ::
      !( Maybe
           KinesisStreamConfig
       ),
    _iscKinesisFirehoseConfig ::
      !( Maybe
           KinesisFirehoseConfig
       ),
    _iscKinesisVideoStreamConfig ::
      !( Maybe
           KinesisVideoStreamConfig
       ),
    _iscAssociationId ::
      !(Maybe Text),
    _iscS3Config ::
      !(Maybe S3Config),
    _iscStorageType ::
      !StorageType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'InstanceStorageConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iscKinesisStreamConfig' - The configuration of the Kinesis data stream.
--
-- * 'iscKinesisFirehoseConfig' - The configuration of the Kinesis Firehose delivery stream.
--
-- * 'iscKinesisVideoStreamConfig' - The configuration of the Kinesis video stream.
--
-- * 'iscAssociationId' - The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.
--
-- * 'iscS3Config' - The S3 bucket configuration.
--
-- * 'iscStorageType' - A valid storage type.
instanceStorageConfig ::
  -- | 'iscStorageType'
  StorageType ->
  InstanceStorageConfig
instanceStorageConfig pStorageType_ =
  InstanceStorageConfig'
    { _iscKinesisStreamConfig =
        Nothing,
      _iscKinesisFirehoseConfig = Nothing,
      _iscKinesisVideoStreamConfig = Nothing,
      _iscAssociationId = Nothing,
      _iscS3Config = Nothing,
      _iscStorageType = pStorageType_
    }

-- | The configuration of the Kinesis data stream.
iscKinesisStreamConfig :: Lens' InstanceStorageConfig (Maybe KinesisStreamConfig)
iscKinesisStreamConfig = lens _iscKinesisStreamConfig (\s a -> s {_iscKinesisStreamConfig = a})

-- | The configuration of the Kinesis Firehose delivery stream.
iscKinesisFirehoseConfig :: Lens' InstanceStorageConfig (Maybe KinesisFirehoseConfig)
iscKinesisFirehoseConfig = lens _iscKinesisFirehoseConfig (\s a -> s {_iscKinesisFirehoseConfig = a})

-- | The configuration of the Kinesis video stream.
iscKinesisVideoStreamConfig :: Lens' InstanceStorageConfig (Maybe KinesisVideoStreamConfig)
iscKinesisVideoStreamConfig = lens _iscKinesisVideoStreamConfig (\s a -> s {_iscKinesisVideoStreamConfig = a})

-- | The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.
iscAssociationId :: Lens' InstanceStorageConfig (Maybe Text)
iscAssociationId = lens _iscAssociationId (\s a -> s {_iscAssociationId = a})

-- | The S3 bucket configuration.
iscS3Config :: Lens' InstanceStorageConfig (Maybe S3Config)
iscS3Config = lens _iscS3Config (\s a -> s {_iscS3Config = a})

-- | A valid storage type.
iscStorageType :: Lens' InstanceStorageConfig StorageType
iscStorageType = lens _iscStorageType (\s a -> s {_iscStorageType = a})

instance FromJSON InstanceStorageConfig where
  parseJSON =
    withObject
      "InstanceStorageConfig"
      ( \x ->
          InstanceStorageConfig'
            <$> (x .:? "KinesisStreamConfig")
            <*> (x .:? "KinesisFirehoseConfig")
            <*> (x .:? "KinesisVideoStreamConfig")
            <*> (x .:? "AssociationId")
            <*> (x .:? "S3Config")
            <*> (x .: "StorageType")
      )

instance Hashable InstanceStorageConfig

instance NFData InstanceStorageConfig

instance ToJSON InstanceStorageConfig where
  toJSON InstanceStorageConfig' {..} =
    object
      ( catMaybes
          [ ("KinesisStreamConfig" .=)
              <$> _iscKinesisStreamConfig,
            ("KinesisFirehoseConfig" .=)
              <$> _iscKinesisFirehoseConfig,
            ("KinesisVideoStreamConfig" .=)
              <$> _iscKinesisVideoStreamConfig,
            ("AssociationId" .=) <$> _iscAssociationId,
            ("S3Config" .=) <$> _iscS3Config,
            Just ("StorageType" .= _iscStorageType)
          ]
      )
