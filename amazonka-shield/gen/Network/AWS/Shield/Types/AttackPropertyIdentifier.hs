{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Shield.Types.AttackPropertyIdentifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types.AttackPropertyIdentifier
  ( AttackPropertyIdentifier
      ( ..,
        DestinationURL,
        Referrer,
        SourceASN,
        SourceCountry,
        SourceIPAddress,
        SourceUserAgent,
        WordpressPingbackReflector,
        WordpressPingbackSource
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AttackPropertyIdentifier
  = AttackPropertyIdentifier'
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

pattern DestinationURL :: AttackPropertyIdentifier
pattern DestinationURL = AttackPropertyIdentifier' "DESTINATION_URL"

pattern Referrer :: AttackPropertyIdentifier
pattern Referrer = AttackPropertyIdentifier' "REFERRER"

pattern SourceASN :: AttackPropertyIdentifier
pattern SourceASN = AttackPropertyIdentifier' "SOURCE_ASN"

pattern SourceCountry :: AttackPropertyIdentifier
pattern SourceCountry = AttackPropertyIdentifier' "SOURCE_COUNTRY"

pattern SourceIPAddress :: AttackPropertyIdentifier
pattern SourceIPAddress = AttackPropertyIdentifier' "SOURCE_IP_ADDRESS"

pattern SourceUserAgent :: AttackPropertyIdentifier
pattern SourceUserAgent = AttackPropertyIdentifier' "SOURCE_USER_AGENT"

pattern WordpressPingbackReflector :: AttackPropertyIdentifier
pattern WordpressPingbackReflector = AttackPropertyIdentifier' "WORDPRESS_PINGBACK_REFLECTOR"

pattern WordpressPingbackSource :: AttackPropertyIdentifier
pattern WordpressPingbackSource = AttackPropertyIdentifier' "WORDPRESS_PINGBACK_SOURCE"

{-# COMPLETE
  DestinationURL,
  Referrer,
  SourceASN,
  SourceCountry,
  SourceIPAddress,
  SourceUserAgent,
  WordpressPingbackReflector,
  WordpressPingbackSource,
  AttackPropertyIdentifier'
  #-}

instance FromText AttackPropertyIdentifier where
  parser = (AttackPropertyIdentifier' . mk) <$> takeText

instance ToText AttackPropertyIdentifier where
  toText (AttackPropertyIdentifier' ci) = original ci

instance Hashable AttackPropertyIdentifier

instance NFData AttackPropertyIdentifier

instance ToByteString AttackPropertyIdentifier

instance ToQuery AttackPropertyIdentifier

instance ToHeader AttackPropertyIdentifier

instance FromJSON AttackPropertyIdentifier where
  parseJSON = parseJSONText "AttackPropertyIdentifier"
