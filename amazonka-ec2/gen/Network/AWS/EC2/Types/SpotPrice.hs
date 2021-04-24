{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.SpotPrice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SpotPrice where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.InstanceType
import Network.AWS.EC2.Types.RIProductDescription
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the maximum price per hour that you are willing to pay for a Spot Instance.
--
--
--
-- /See:/ 'spotPrice' smart constructor.
data SpotPrice = SpotPrice'
  { _spoInstanceType ::
      !(Maybe InstanceType),
    _spoSpotPrice :: !(Maybe Text),
    _spoAvailabilityZone :: !(Maybe Text),
    _spoTimestamp :: !(Maybe ISO8601),
    _spoProductDescription ::
      !(Maybe RIProductDescription)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SpotPrice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spoInstanceType' - The instance type.
--
-- * 'spoSpotPrice' - The maximum price per hour that you are willing to pay for a Spot Instance.
--
-- * 'spoAvailabilityZone' - The Availability Zone.
--
-- * 'spoTimestamp' - The date and time the request was created, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z).
--
-- * 'spoProductDescription' - A general description of the AMI.
spotPrice ::
  SpotPrice
spotPrice =
  SpotPrice'
    { _spoInstanceType = Nothing,
      _spoSpotPrice = Nothing,
      _spoAvailabilityZone = Nothing,
      _spoTimestamp = Nothing,
      _spoProductDescription = Nothing
    }

-- | The instance type.
spoInstanceType :: Lens' SpotPrice (Maybe InstanceType)
spoInstanceType = lens _spoInstanceType (\s a -> s {_spoInstanceType = a})

-- | The maximum price per hour that you are willing to pay for a Spot Instance.
spoSpotPrice :: Lens' SpotPrice (Maybe Text)
spoSpotPrice = lens _spoSpotPrice (\s a -> s {_spoSpotPrice = a})

-- | The Availability Zone.
spoAvailabilityZone :: Lens' SpotPrice (Maybe Text)
spoAvailabilityZone = lens _spoAvailabilityZone (\s a -> s {_spoAvailabilityZone = a})

-- | The date and time the request was created, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z).
spoTimestamp :: Lens' SpotPrice (Maybe UTCTime)
spoTimestamp = lens _spoTimestamp (\s a -> s {_spoTimestamp = a}) . mapping _Time

-- | A general description of the AMI.
spoProductDescription :: Lens' SpotPrice (Maybe RIProductDescription)
spoProductDescription = lens _spoProductDescription (\s a -> s {_spoProductDescription = a})

instance FromXML SpotPrice where
  parseXML x =
    SpotPrice'
      <$> (x .@? "instanceType")
      <*> (x .@? "spotPrice")
      <*> (x .@? "availabilityZone")
      <*> (x .@? "timestamp")
      <*> (x .@? "productDescription")

instance Hashable SpotPrice

instance NFData SpotPrice
