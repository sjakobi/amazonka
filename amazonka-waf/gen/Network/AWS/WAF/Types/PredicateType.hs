{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAF.Types.PredicateType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAF.Types.PredicateType
  ( PredicateType
      ( ..,
        ByteMatch,
        GeoMatch,
        IPMatch,
        RegexMatch,
        SizeConstraint,
        SqlInjectionMatch,
        XSSMatch
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PredicateType = PredicateType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ByteMatch :: PredicateType
pattern ByteMatch = PredicateType' "ByteMatch"

pattern GeoMatch :: PredicateType
pattern GeoMatch = PredicateType' "GeoMatch"

pattern IPMatch :: PredicateType
pattern IPMatch = PredicateType' "IPMatch"

pattern RegexMatch :: PredicateType
pattern RegexMatch = PredicateType' "RegexMatch"

pattern SizeConstraint :: PredicateType
pattern SizeConstraint = PredicateType' "SizeConstraint"

pattern SqlInjectionMatch :: PredicateType
pattern SqlInjectionMatch = PredicateType' "SqlInjectionMatch"

pattern XSSMatch :: PredicateType
pattern XSSMatch = PredicateType' "XssMatch"

{-# COMPLETE
  ByteMatch,
  GeoMatch,
  IPMatch,
  RegexMatch,
  SizeConstraint,
  SqlInjectionMatch,
  XSSMatch,
  PredicateType'
  #-}

instance FromText PredicateType where
  parser = (PredicateType' . mk) <$> takeText

instance ToText PredicateType where
  toText (PredicateType' ci) = original ci

instance Hashable PredicateType

instance NFData PredicateType

instance ToByteString PredicateType

instance ToQuery PredicateType

instance ToHeader PredicateType

instance ToJSON PredicateType where
  toJSON = toJSONText

instance FromJSON PredicateType where
  parseJSON = parseJSONText "PredicateType"
