{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.PrivateIP
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.PrivateIP where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a private IP address associated with a network interface. This data type is used as a response element in the 'DescribeFindings' action.
--
--
--
-- /See:/ 'privateIP' smart constructor.
data PrivateIP = PrivateIP'
  { _piPrivateDNSName ::
      !(Maybe Text),
    _piPrivateIPAddress :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PrivateIP' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piPrivateDNSName' - The DNS name of the private IP address.
--
-- * 'piPrivateIPAddress' - The full IP address of the network inteface.
privateIP ::
  PrivateIP
privateIP =
  PrivateIP'
    { _piPrivateDNSName = Nothing,
      _piPrivateIPAddress = Nothing
    }

-- | The DNS name of the private IP address.
piPrivateDNSName :: Lens' PrivateIP (Maybe Text)
piPrivateDNSName = lens _piPrivateDNSName (\s a -> s {_piPrivateDNSName = a})

-- | The full IP address of the network inteface.
piPrivateIPAddress :: Lens' PrivateIP (Maybe Text)
piPrivateIPAddress = lens _piPrivateIPAddress (\s a -> s {_piPrivateIPAddress = a})

instance FromJSON PrivateIP where
  parseJSON =
    withObject
      "PrivateIP"
      ( \x ->
          PrivateIP'
            <$> (x .:? "privateDnsName")
            <*> (x .:? "privateIpAddress")
      )

instance Hashable PrivateIP

instance NFData PrivateIP
