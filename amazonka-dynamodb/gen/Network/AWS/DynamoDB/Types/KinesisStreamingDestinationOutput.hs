{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.KinesisStreamingDestinationOutput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.KinesisStreamingDestinationOutput where

import Network.AWS.DynamoDB.Types.DestinationStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | /See:/ 'kinesisStreamingDestinationOutput' smart constructor.
data KinesisStreamingDestinationOutput = KinesisStreamingDestinationOutput'
  { _ksdoTableName ::
      !( Maybe
           Text
       ),
    _ksdoStreamARN ::
      !( Maybe
           Text
       ),
    _ksdoDestinationStatus ::
      !( Maybe
           DestinationStatus
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'KinesisStreamingDestinationOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ksdoTableName' - The name of the table being modified.
--
-- * 'ksdoStreamARN' - The ARN for the specific Kinesis data stream.
--
-- * 'ksdoDestinationStatus' - The current status of the replication.
kinesisStreamingDestinationOutput ::
  KinesisStreamingDestinationOutput
kinesisStreamingDestinationOutput =
  KinesisStreamingDestinationOutput'
    { _ksdoTableName =
        Nothing,
      _ksdoStreamARN = Nothing,
      _ksdoDestinationStatus = Nothing
    }

-- | The name of the table being modified.
ksdoTableName :: Lens' KinesisStreamingDestinationOutput (Maybe Text)
ksdoTableName = lens _ksdoTableName (\s a -> s {_ksdoTableName = a})

-- | The ARN for the specific Kinesis data stream.
ksdoStreamARN :: Lens' KinesisStreamingDestinationOutput (Maybe Text)
ksdoStreamARN = lens _ksdoStreamARN (\s a -> s {_ksdoStreamARN = a})

-- | The current status of the replication.
ksdoDestinationStatus :: Lens' KinesisStreamingDestinationOutput (Maybe DestinationStatus)
ksdoDestinationStatus = lens _ksdoDestinationStatus (\s a -> s {_ksdoDestinationStatus = a})

instance FromJSON KinesisStreamingDestinationOutput where
  parseJSON =
    withObject
      "KinesisStreamingDestinationOutput"
      ( \x ->
          KinesisStreamingDestinationOutput'
            <$> (x .:? "TableName")
            <*> (x .:? "StreamArn")
            <*> (x .:? "DestinationStatus")
      )

instance Hashable KinesisStreamingDestinationOutput

instance NFData KinesisStreamingDestinationOutput
