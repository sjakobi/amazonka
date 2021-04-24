{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.OriginRequestPolicyQueryStringBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.OriginRequestPolicyQueryStringBehavior
  ( OriginRequestPolicyQueryStringBehavior
      ( ..,
        ORPQSBAll,
        ORPQSBNone,
        ORPQSBWhitelist
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OriginRequestPolicyQueryStringBehavior
  = OriginRequestPolicyQueryStringBehavior'
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

pattern ORPQSBAll :: OriginRequestPolicyQueryStringBehavior
pattern ORPQSBAll = OriginRequestPolicyQueryStringBehavior' "all"

pattern ORPQSBNone :: OriginRequestPolicyQueryStringBehavior
pattern ORPQSBNone = OriginRequestPolicyQueryStringBehavior' "none"

pattern ORPQSBWhitelist :: OriginRequestPolicyQueryStringBehavior
pattern ORPQSBWhitelist = OriginRequestPolicyQueryStringBehavior' "whitelist"

{-# COMPLETE
  ORPQSBAll,
  ORPQSBNone,
  ORPQSBWhitelist,
  OriginRequestPolicyQueryStringBehavior'
  #-}

instance FromText OriginRequestPolicyQueryStringBehavior where
  parser = (OriginRequestPolicyQueryStringBehavior' . mk) <$> takeText

instance ToText OriginRequestPolicyQueryStringBehavior where
  toText (OriginRequestPolicyQueryStringBehavior' ci) = original ci

instance Hashable OriginRequestPolicyQueryStringBehavior

instance NFData OriginRequestPolicyQueryStringBehavior

instance ToByteString OriginRequestPolicyQueryStringBehavior

instance ToQuery OriginRequestPolicyQueryStringBehavior

instance ToHeader OriginRequestPolicyQueryStringBehavior

instance FromXML OriginRequestPolicyQueryStringBehavior where
  parseXML = parseXMLText "OriginRequestPolicyQueryStringBehavior"

instance ToXML OriginRequestPolicyQueryStringBehavior where
  toXML = toXMLText
