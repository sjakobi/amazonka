{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.NetworkInterfaceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.NetworkInterfaceStatus
  ( NetworkInterfaceStatus
      ( ..,
        NISAssociated,
        NISAttaching,
        NISAvailable,
        NISDetaching,
        NISInUse
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data NetworkInterfaceStatus
  = NetworkInterfaceStatus'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern NISAssociated :: NetworkInterfaceStatus
pattern NISAssociated = NetworkInterfaceStatus' "associated"

pattern NISAttaching :: NetworkInterfaceStatus
pattern NISAttaching = NetworkInterfaceStatus' "attaching"

pattern NISAvailable :: NetworkInterfaceStatus
pattern NISAvailable = NetworkInterfaceStatus' "available"

pattern NISDetaching :: NetworkInterfaceStatus
pattern NISDetaching = NetworkInterfaceStatus' "detaching"

pattern NISInUse :: NetworkInterfaceStatus
pattern NISInUse = NetworkInterfaceStatus' "in-use"

{-# COMPLETE
  NISAssociated,
  NISAttaching,
  NISAvailable,
  NISDetaching,
  NISInUse,
  NetworkInterfaceStatus'
  #-}

instance FromText NetworkInterfaceStatus where
  parser = (NetworkInterfaceStatus' . mk) <$> takeText

instance ToText NetworkInterfaceStatus where
  toText (NetworkInterfaceStatus' ci) = original ci

instance Hashable NetworkInterfaceStatus

instance NFData NetworkInterfaceStatus

instance ToByteString NetworkInterfaceStatus

instance ToQuery NetworkInterfaceStatus

instance ToHeader NetworkInterfaceStatus

instance FromXML NetworkInterfaceStatus where
  parseXML = parseXMLText "NetworkInterfaceStatus"
