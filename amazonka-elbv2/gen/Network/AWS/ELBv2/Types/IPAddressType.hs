{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.IPAddressType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.IPAddressType
  ( IPAddressType
      ( ..,
        Dualstack,
        IPV4
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data IPAddressType = IPAddressType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Dualstack :: IPAddressType
pattern Dualstack = IPAddressType' "dualstack"

pattern IPV4 :: IPAddressType
pattern IPV4 = IPAddressType' "ipv4"

{-# COMPLETE
  Dualstack,
  IPV4,
  IPAddressType'
  #-}

instance FromText IPAddressType where
  parser = (IPAddressType' . mk) <$> takeText

instance ToText IPAddressType where
  toText (IPAddressType' ci) = original ci

instance Hashable IPAddressType

instance NFData IPAddressType

instance ToByteString IPAddressType

instance ToQuery IPAddressType

instance ToHeader IPAddressType

instance FromXML IPAddressType where
  parseXML = parseXMLText "IPAddressType"
