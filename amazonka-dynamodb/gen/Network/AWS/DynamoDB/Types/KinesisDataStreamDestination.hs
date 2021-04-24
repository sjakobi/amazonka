{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.KinesisDataStreamDestination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.KinesisDataStreamDestination where

import Network.AWS.DynamoDB.Types.DestinationStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a Kinesis data stream destination.
--
--
--
-- /See:/ 'kinesisDataStreamDestination' smart constructor.
data KinesisDataStreamDestination = KinesisDataStreamDestination'
  { _kdsdDestinationStatusDescription ::
      !(Maybe Text),
    _kdsdStreamARN ::
      !(Maybe Text),
    _kdsdDestinationStatus ::
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

-- | Creates a value of 'KinesisDataStreamDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kdsdDestinationStatusDescription' - The human-readable string that corresponds to the replica status.
--
-- * 'kdsdStreamARN' - The ARN for a specific Kinesis data stream.
--
-- * 'kdsdDestinationStatus' - The current status of replication.
kinesisDataStreamDestination ::
  KinesisDataStreamDestination
kinesisDataStreamDestination =
  KinesisDataStreamDestination'
    { _kdsdDestinationStatusDescription =
        Nothing,
      _kdsdStreamARN = Nothing,
      _kdsdDestinationStatus = Nothing
    }

-- | The human-readable string that corresponds to the replica status.
kdsdDestinationStatusDescription :: Lens' KinesisDataStreamDestination (Maybe Text)
kdsdDestinationStatusDescription = lens _kdsdDestinationStatusDescription (\s a -> s {_kdsdDestinationStatusDescription = a})

-- | The ARN for a specific Kinesis data stream.
kdsdStreamARN :: Lens' KinesisDataStreamDestination (Maybe Text)
kdsdStreamARN = lens _kdsdStreamARN (\s a -> s {_kdsdStreamARN = a})

-- | The current status of replication.
kdsdDestinationStatus :: Lens' KinesisDataStreamDestination (Maybe DestinationStatus)
kdsdDestinationStatus = lens _kdsdDestinationStatus (\s a -> s {_kdsdDestinationStatus = a})

instance FromJSON KinesisDataStreamDestination where
  parseJSON =
    withObject
      "KinesisDataStreamDestination"
      ( \x ->
          KinesisDataStreamDestination'
            <$> (x .:? "DestinationStatusDescription")
            <*> (x .:? "StreamArn")
            <*> (x .:? "DestinationStatus")
      )

instance Hashable KinesisDataStreamDestination

instance NFData KinesisDataStreamDestination
