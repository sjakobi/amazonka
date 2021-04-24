{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AnalysisPacketHeader
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AnalysisPacketHeader where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.PortRange
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a header. Reflects any changes made by a component as traffic passes through. The fields of an inbound header are null except for the first component of a path.
--
--
--
-- /See:/ 'analysisPacketHeader' smart constructor.
data AnalysisPacketHeader = AnalysisPacketHeader'
  { _aphDestinationAddresses ::
      !(Maybe [Text]),
    _aphSourceAddresses ::
      !(Maybe [Text]),
    _aphDestinationPortRanges ::
      !(Maybe [PortRange]),
    _aphProtocol :: !(Maybe Text),
    _aphSourcePortRanges ::
      !(Maybe [PortRange])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AnalysisPacketHeader' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aphDestinationAddresses' - The destination addresses.
--
-- * 'aphSourceAddresses' - The source addresses.
--
-- * 'aphDestinationPortRanges' - The destination port ranges.
--
-- * 'aphProtocol' - The protocol.
--
-- * 'aphSourcePortRanges' - The source port ranges.
analysisPacketHeader ::
  AnalysisPacketHeader
analysisPacketHeader =
  AnalysisPacketHeader'
    { _aphDestinationAddresses =
        Nothing,
      _aphSourceAddresses = Nothing,
      _aphDestinationPortRanges = Nothing,
      _aphProtocol = Nothing,
      _aphSourcePortRanges = Nothing
    }

-- | The destination addresses.
aphDestinationAddresses :: Lens' AnalysisPacketHeader [Text]
aphDestinationAddresses = lens _aphDestinationAddresses (\s a -> s {_aphDestinationAddresses = a}) . _Default . _Coerce

-- | The source addresses.
aphSourceAddresses :: Lens' AnalysisPacketHeader [Text]
aphSourceAddresses = lens _aphSourceAddresses (\s a -> s {_aphSourceAddresses = a}) . _Default . _Coerce

-- | The destination port ranges.
aphDestinationPortRanges :: Lens' AnalysisPacketHeader [PortRange]
aphDestinationPortRanges = lens _aphDestinationPortRanges (\s a -> s {_aphDestinationPortRanges = a}) . _Default . _Coerce

-- | The protocol.
aphProtocol :: Lens' AnalysisPacketHeader (Maybe Text)
aphProtocol = lens _aphProtocol (\s a -> s {_aphProtocol = a})

-- | The source port ranges.
aphSourcePortRanges :: Lens' AnalysisPacketHeader [PortRange]
aphSourcePortRanges = lens _aphSourcePortRanges (\s a -> s {_aphSourcePortRanges = a}) . _Default . _Coerce

instance FromXML AnalysisPacketHeader where
  parseXML x =
    AnalysisPacketHeader'
      <$> ( x .@? "destinationAddressSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "sourceAddressSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "destinationPortRangeSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "protocol")
      <*> ( x .@? "sourcePortRangeSet" .!@ mempty
              >>= may (parseXMLList "item")
          )

instance Hashable AnalysisPacketHeader

instance NFData AnalysisPacketHeader
