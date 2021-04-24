{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DvbNitSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DvbNitSettings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Inserts DVB Network Information Table (NIT) at the specified table repetition interval.
--
-- /See:/ 'dvbNitSettings' smart constructor.
data DvbNitSettings = DvbNitSettings'
  { _dnsNitInterval ::
      !(Maybe Nat),
    _dnsNetworkName :: !(Maybe Text),
    _dnsNetworkId :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DvbNitSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dnsNitInterval' - The number of milliseconds between instances of this table in the output transport stream.
--
-- * 'dnsNetworkName' - The network name text placed in the network_name_descriptor inside the Network Information Table. Maximum length is 256 characters.
--
-- * 'dnsNetworkId' - The numeric value placed in the Network Information Table (NIT).
dvbNitSettings ::
  DvbNitSettings
dvbNitSettings =
  DvbNitSettings'
    { _dnsNitInterval = Nothing,
      _dnsNetworkName = Nothing,
      _dnsNetworkId = Nothing
    }

-- | The number of milliseconds between instances of this table in the output transport stream.
dnsNitInterval :: Lens' DvbNitSettings (Maybe Natural)
dnsNitInterval = lens _dnsNitInterval (\s a -> s {_dnsNitInterval = a}) . mapping _Nat

-- | The network name text placed in the network_name_descriptor inside the Network Information Table. Maximum length is 256 characters.
dnsNetworkName :: Lens' DvbNitSettings (Maybe Text)
dnsNetworkName = lens _dnsNetworkName (\s a -> s {_dnsNetworkName = a})

-- | The numeric value placed in the Network Information Table (NIT).
dnsNetworkId :: Lens' DvbNitSettings (Maybe Natural)
dnsNetworkId = lens _dnsNetworkId (\s a -> s {_dnsNetworkId = a}) . mapping _Nat

instance FromJSON DvbNitSettings where
  parseJSON =
    withObject
      "DvbNitSettings"
      ( \x ->
          DvbNitSettings'
            <$> (x .:? "nitInterval")
            <*> (x .:? "networkName")
            <*> (x .:? "networkId")
      )

instance Hashable DvbNitSettings

instance NFData DvbNitSettings

instance ToJSON DvbNitSettings where
  toJSON DvbNitSettings' {..} =
    object
      ( catMaybes
          [ ("nitInterval" .=) <$> _dnsNitInterval,
            ("networkName" .=) <$> _dnsNetworkName,
            ("networkId" .=) <$> _dnsNetworkId
          ]
      )
