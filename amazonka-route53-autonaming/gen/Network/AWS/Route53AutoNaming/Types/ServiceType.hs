{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types.ServiceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.ServiceType
  ( ServiceType
      ( ..,
        DNS,
        DNSHTTP,
        HTTP
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ServiceType = ServiceType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DNS :: ServiceType
pattern DNS = ServiceType' "DNS"

pattern DNSHTTP :: ServiceType
pattern DNSHTTP = ServiceType' "DNS_HTTP"

pattern HTTP :: ServiceType
pattern HTTP = ServiceType' "HTTP"

{-# COMPLETE
  DNS,
  DNSHTTP,
  HTTP,
  ServiceType'
  #-}

instance FromText ServiceType where
  parser = (ServiceType' . mk) <$> takeText

instance ToText ServiceType where
  toText (ServiceType' ci) = original ci

instance Hashable ServiceType

instance NFData ServiceType

instance ToByteString ServiceType

instance ToQuery ServiceType

instance ToHeader ServiceType

instance FromJSON ServiceType where
  parseJSON = parseJSONText "ServiceType"
