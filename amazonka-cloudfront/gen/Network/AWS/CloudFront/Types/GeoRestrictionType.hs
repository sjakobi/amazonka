{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.GeoRestrictionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.GeoRestrictionType
  ( GeoRestrictionType
      ( ..,
        Blacklist,
        None,
        Whitelist
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GeoRestrictionType
  = GeoRestrictionType'
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

pattern Blacklist :: GeoRestrictionType
pattern Blacklist = GeoRestrictionType' "blacklist"

pattern None :: GeoRestrictionType
pattern None = GeoRestrictionType' "none"

pattern Whitelist :: GeoRestrictionType
pattern Whitelist = GeoRestrictionType' "whitelist"

{-# COMPLETE
  Blacklist,
  None,
  Whitelist,
  GeoRestrictionType'
  #-}

instance FromText GeoRestrictionType where
  parser = (GeoRestrictionType' . mk) <$> takeText

instance ToText GeoRestrictionType where
  toText (GeoRestrictionType' ci) = original ci

instance Hashable GeoRestrictionType

instance NFData GeoRestrictionType

instance ToByteString GeoRestrictionType

instance ToQuery GeoRestrictionType

instance ToHeader GeoRestrictionType

instance FromXML GeoRestrictionType where
  parseXML = parseXMLText "GeoRestrictionType"

instance ToXML GeoRestrictionType where
  toXML = toXMLText
