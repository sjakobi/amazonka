{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.Destination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.Destination where

import Network.AWS.GuardDuty.Types.DestinationType
import Network.AWS.GuardDuty.Types.PublishingStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about the publishing destination, including the ID, type, and status.
--
--
--
-- /See:/ 'destination' smart constructor.
data Destination = Destination'
  { _desDestinationId ::
      !Text,
    _desDestinationType :: !DestinationType,
    _desStatus :: !PublishingStatus
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Destination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desDestinationId' - The unique ID of the publishing destination.
--
-- * 'desDestinationType' - The type of resource used for the publishing destination. Currently, only Amazon S3 buckets are supported.
--
-- * 'desStatus' - The status of the publishing destination.
destination ::
  -- | 'desDestinationId'
  Text ->
  -- | 'desDestinationType'
  DestinationType ->
  -- | 'desStatus'
  PublishingStatus ->
  Destination
destination
  pDestinationId_
  pDestinationType_
  pStatus_ =
    Destination'
      { _desDestinationId = pDestinationId_,
        _desDestinationType = pDestinationType_,
        _desStatus = pStatus_
      }

-- | The unique ID of the publishing destination.
desDestinationId :: Lens' Destination Text
desDestinationId = lens _desDestinationId (\s a -> s {_desDestinationId = a})

-- | The type of resource used for the publishing destination. Currently, only Amazon S3 buckets are supported.
desDestinationType :: Lens' Destination DestinationType
desDestinationType = lens _desDestinationType (\s a -> s {_desDestinationType = a})

-- | The status of the publishing destination.
desStatus :: Lens' Destination PublishingStatus
desStatus = lens _desStatus (\s a -> s {_desStatus = a})

instance FromJSON Destination where
  parseJSON =
    withObject
      "Destination"
      ( \x ->
          Destination'
            <$> (x .: "destinationId")
            <*> (x .: "destinationType")
            <*> (x .: "status")
      )

instance Hashable Destination

instance NFData Destination
