{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.Types.Shipment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.Shipment where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The @Status@ and @TrackingNumber@ information for an inbound or outbound shipment.
--
--
--
-- /See:/ 'shipment' smart constructor.
data Shipment = Shipment'
  { _sTrackingNumber ::
      !(Maybe Text),
    _sStatus :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Shipment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sTrackingNumber' - The tracking number for this job. Using this tracking number with your region's carrier's website, you can track a Snow device as the carrier transports it. For India, the carrier is Amazon Logistics. For all other regions, UPS is the carrier.
--
-- * 'sStatus' - Status information for a shipment.
shipment ::
  Shipment
shipment =
  Shipment'
    { _sTrackingNumber = Nothing,
      _sStatus = Nothing
    }

-- | The tracking number for this job. Using this tracking number with your region's carrier's website, you can track a Snow device as the carrier transports it. For India, the carrier is Amazon Logistics. For all other regions, UPS is the carrier.
sTrackingNumber :: Lens' Shipment (Maybe Text)
sTrackingNumber = lens _sTrackingNumber (\s a -> s {_sTrackingNumber = a})

-- | Status information for a shipment.
sStatus :: Lens' Shipment (Maybe Text)
sStatus = lens _sStatus (\s a -> s {_sStatus = a})

instance FromJSON Shipment where
  parseJSON =
    withObject
      "Shipment"
      ( \x ->
          Shipment'
            <$> (x .:? "TrackingNumber") <*> (x .:? "Status")
      )

instance Hashable Shipment

instance NFData Shipment
