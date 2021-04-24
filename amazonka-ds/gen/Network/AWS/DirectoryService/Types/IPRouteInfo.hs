{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.IPRouteInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.IPRouteInfo where

import Network.AWS.DirectoryService.Types.IPRouteStatusMsg
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about one or more IP address blocks.
--
--
--
-- /See:/ 'ipRouteInfo' smart constructor.
data IPRouteInfo = IPRouteInfo'
  { _iriCidrIP ::
      !(Maybe Text),
    _iriIPRouteStatusMsg ::
      !(Maybe IPRouteStatusMsg),
    _iriDirectoryId :: !(Maybe Text),
    _iriAddedDateTime :: !(Maybe POSIX),
    _iriDescription :: !(Maybe Text),
    _iriIPRouteStatusReason :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'IPRouteInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iriCidrIP' - IP address block in the 'IpRoute' .
--
-- * 'iriIPRouteStatusMsg' - The status of the IP address block.
--
-- * 'iriDirectoryId' - Identifier (ID) of the directory associated with the IP addresses.
--
-- * 'iriAddedDateTime' - The date and time the address block was added to the directory.
--
-- * 'iriDescription' - Description of the 'IpRouteInfo' .
--
-- * 'iriIPRouteStatusReason' - The reason for the IpRouteStatusMsg.
ipRouteInfo ::
  IPRouteInfo
ipRouteInfo =
  IPRouteInfo'
    { _iriCidrIP = Nothing,
      _iriIPRouteStatusMsg = Nothing,
      _iriDirectoryId = Nothing,
      _iriAddedDateTime = Nothing,
      _iriDescription = Nothing,
      _iriIPRouteStatusReason = Nothing
    }

-- | IP address block in the 'IpRoute' .
iriCidrIP :: Lens' IPRouteInfo (Maybe Text)
iriCidrIP = lens _iriCidrIP (\s a -> s {_iriCidrIP = a})

-- | The status of the IP address block.
iriIPRouteStatusMsg :: Lens' IPRouteInfo (Maybe IPRouteStatusMsg)
iriIPRouteStatusMsg = lens _iriIPRouteStatusMsg (\s a -> s {_iriIPRouteStatusMsg = a})

-- | Identifier (ID) of the directory associated with the IP addresses.
iriDirectoryId :: Lens' IPRouteInfo (Maybe Text)
iriDirectoryId = lens _iriDirectoryId (\s a -> s {_iriDirectoryId = a})

-- | The date and time the address block was added to the directory.
iriAddedDateTime :: Lens' IPRouteInfo (Maybe UTCTime)
iriAddedDateTime = lens _iriAddedDateTime (\s a -> s {_iriAddedDateTime = a}) . mapping _Time

-- | Description of the 'IpRouteInfo' .
iriDescription :: Lens' IPRouteInfo (Maybe Text)
iriDescription = lens _iriDescription (\s a -> s {_iriDescription = a})

-- | The reason for the IpRouteStatusMsg.
iriIPRouteStatusReason :: Lens' IPRouteInfo (Maybe Text)
iriIPRouteStatusReason = lens _iriIPRouteStatusReason (\s a -> s {_iriIPRouteStatusReason = a})

instance FromJSON IPRouteInfo where
  parseJSON =
    withObject
      "IPRouteInfo"
      ( \x ->
          IPRouteInfo'
            <$> (x .:? "CidrIp")
            <*> (x .:? "IpRouteStatusMsg")
            <*> (x .:? "DirectoryId")
            <*> (x .:? "AddedDateTime")
            <*> (x .:? "Description")
            <*> (x .:? "IpRouteStatusReason")
      )

instance Hashable IPRouteInfo

instance NFData IPRouteInfo
