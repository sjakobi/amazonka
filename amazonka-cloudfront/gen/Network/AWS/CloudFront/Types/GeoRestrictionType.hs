{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        GeoRestrictionTypeBlacklist,
        GeoRestrictionTypeNone,
        GeoRestrictionTypeWhitelist
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GeoRestrictionType = GeoRestrictionType'
  { fromGeoRestrictionType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern GeoRestrictionTypeBlacklist :: GeoRestrictionType
pattern GeoRestrictionTypeBlacklist = GeoRestrictionType' "blacklist"

pattern GeoRestrictionTypeNone :: GeoRestrictionType
pattern GeoRestrictionTypeNone = GeoRestrictionType' "none"

pattern GeoRestrictionTypeWhitelist :: GeoRestrictionType
pattern GeoRestrictionTypeWhitelist = GeoRestrictionType' "whitelist"

{-# COMPLETE
  GeoRestrictionTypeBlacklist,
  GeoRestrictionTypeNone,
  GeoRestrictionTypeWhitelist,
  GeoRestrictionType'
  #-}

instance Prelude.FromText GeoRestrictionType where
  parser = GeoRestrictionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText GeoRestrictionType where
  toText (GeoRestrictionType' x) = x

instance Prelude.Hashable GeoRestrictionType

instance Prelude.NFData GeoRestrictionType

instance Prelude.ToByteString GeoRestrictionType

instance Prelude.ToQuery GeoRestrictionType

instance Prelude.ToHeader GeoRestrictionType

instance Prelude.FromXML GeoRestrictionType where
  parseXML = Prelude.parseXMLText "GeoRestrictionType"

instance Prelude.ToXML GeoRestrictionType where
  toXML = Prelude.toXMLText
