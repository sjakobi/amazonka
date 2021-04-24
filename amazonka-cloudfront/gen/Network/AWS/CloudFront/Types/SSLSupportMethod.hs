{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.SSLSupportMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.SSLSupportMethod
  ( SSLSupportMethod
      ( ..,
        SNIOnly,
        StaticIP,
        VIP
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SSLSupportMethod = SSLSupportMethod' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SNIOnly :: SSLSupportMethod
pattern SNIOnly = SSLSupportMethod' "sni-only"

pattern StaticIP :: SSLSupportMethod
pattern StaticIP = SSLSupportMethod' "static-ip"

pattern VIP :: SSLSupportMethod
pattern VIP = SSLSupportMethod' "vip"

{-# COMPLETE
  SNIOnly,
  StaticIP,
  VIP,
  SSLSupportMethod'
  #-}

instance FromText SSLSupportMethod where
  parser = (SSLSupportMethod' . mk) <$> takeText

instance ToText SSLSupportMethod where
  toText (SSLSupportMethod' ci) = original ci

instance Hashable SSLSupportMethod

instance NFData SSLSupportMethod

instance ToByteString SSLSupportMethod

instance ToQuery SSLSupportMethod

instance ToHeader SSLSupportMethod

instance FromXML SSLSupportMethod where
  parseXML = parseXMLText "SSLSupportMethod"

instance ToXML SSLSupportMethod where
  toXML = toXMLText
