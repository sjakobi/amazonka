{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchLogs.Types.Destination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchLogs.Types.Destination where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a cross-account destination that receives subscription log events.
--
--
--
-- /See:/ 'destination' smart constructor.
data Destination = Destination'
  { _dCreationTime ::
      !(Maybe Nat),
    _dRoleARN :: !(Maybe Text),
    _dDestinationName :: !(Maybe Text),
    _dArn :: !(Maybe Text),
    _dTargetARN :: !(Maybe Text),
    _dAccessPolicy :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Destination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dCreationTime' - The creation time of the destination, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.
--
-- * 'dRoleARN' - A role for impersonation, used when delivering log events to the target.
--
-- * 'dDestinationName' - The name of the destination.
--
-- * 'dArn' - The ARN of this destination.
--
-- * 'dTargetARN' - The Amazon Resource Name (ARN) of the physical target where the log events are delivered (for example, a Kinesis stream).
--
-- * 'dAccessPolicy' - An IAM policy document that governs which AWS accounts can create subscription filters against this destination.
destination ::
  Destination
destination =
  Destination'
    { _dCreationTime = Nothing,
      _dRoleARN = Nothing,
      _dDestinationName = Nothing,
      _dArn = Nothing,
      _dTargetARN = Nothing,
      _dAccessPolicy = Nothing
    }

-- | The creation time of the destination, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.
dCreationTime :: Lens' Destination (Maybe Natural)
dCreationTime = lens _dCreationTime (\s a -> s {_dCreationTime = a}) . mapping _Nat

-- | A role for impersonation, used when delivering log events to the target.
dRoleARN :: Lens' Destination (Maybe Text)
dRoleARN = lens _dRoleARN (\s a -> s {_dRoleARN = a})

-- | The name of the destination.
dDestinationName :: Lens' Destination (Maybe Text)
dDestinationName = lens _dDestinationName (\s a -> s {_dDestinationName = a})

-- | The ARN of this destination.
dArn :: Lens' Destination (Maybe Text)
dArn = lens _dArn (\s a -> s {_dArn = a})

-- | The Amazon Resource Name (ARN) of the physical target where the log events are delivered (for example, a Kinesis stream).
dTargetARN :: Lens' Destination (Maybe Text)
dTargetARN = lens _dTargetARN (\s a -> s {_dTargetARN = a})

-- | An IAM policy document that governs which AWS accounts can create subscription filters against this destination.
dAccessPolicy :: Lens' Destination (Maybe Text)
dAccessPolicy = lens _dAccessPolicy (\s a -> s {_dAccessPolicy = a})

instance FromJSON Destination where
  parseJSON =
    withObject
      "Destination"
      ( \x ->
          Destination'
            <$> (x .:? "creationTime")
            <*> (x .:? "roleArn")
            <*> (x .:? "destinationName")
            <*> (x .:? "arn")
            <*> (x .:? "targetArn")
            <*> (x .:? "accessPolicy")
      )

instance Hashable Destination

instance NFData Destination
