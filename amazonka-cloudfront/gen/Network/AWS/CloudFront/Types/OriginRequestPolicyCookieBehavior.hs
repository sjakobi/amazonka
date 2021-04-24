{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.OriginRequestPolicyCookieBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.OriginRequestPolicyCookieBehavior
  ( OriginRequestPolicyCookieBehavior
      ( ..,
        ORPCBAll,
        ORPCBNone,
        ORPCBWhitelist
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OriginRequestPolicyCookieBehavior
  = OriginRequestPolicyCookieBehavior'
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

pattern ORPCBAll :: OriginRequestPolicyCookieBehavior
pattern ORPCBAll = OriginRequestPolicyCookieBehavior' "all"

pattern ORPCBNone :: OriginRequestPolicyCookieBehavior
pattern ORPCBNone = OriginRequestPolicyCookieBehavior' "none"

pattern ORPCBWhitelist :: OriginRequestPolicyCookieBehavior
pattern ORPCBWhitelist = OriginRequestPolicyCookieBehavior' "whitelist"

{-# COMPLETE
  ORPCBAll,
  ORPCBNone,
  ORPCBWhitelist,
  OriginRequestPolicyCookieBehavior'
  #-}

instance FromText OriginRequestPolicyCookieBehavior where
  parser = (OriginRequestPolicyCookieBehavior' . mk) <$> takeText

instance ToText OriginRequestPolicyCookieBehavior where
  toText (OriginRequestPolicyCookieBehavior' ci) = original ci

instance Hashable OriginRequestPolicyCookieBehavior

instance NFData OriginRequestPolicyCookieBehavior

instance ToByteString OriginRequestPolicyCookieBehavior

instance ToQuery OriginRequestPolicyCookieBehavior

instance ToHeader OriginRequestPolicyCookieBehavior

instance FromXML OriginRequestPolicyCookieBehavior where
  parseXML = parseXMLText "OriginRequestPolicyCookieBehavior"

instance ToXML OriginRequestPolicyCookieBehavior where
  toXML = toXMLText
