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
-- Module      : Network.AWS.WAF.Types.PredicateType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAF.Types.PredicateType
  ( PredicateType
      ( ..,
        PredicateTypeByteMatch,
        PredicateTypeGeoMatch,
        PredicateTypeIPMatch,
        PredicateTypeRegexMatch,
        PredicateTypeSizeConstraint,
        PredicateTypeSqlInjectionMatch,
        PredicateTypeXssMatch
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PredicateType = PredicateType'
  { fromPredicateType ::
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

pattern PredicateTypeByteMatch :: PredicateType
pattern PredicateTypeByteMatch = PredicateType' "ByteMatch"

pattern PredicateTypeGeoMatch :: PredicateType
pattern PredicateTypeGeoMatch = PredicateType' "GeoMatch"

pattern PredicateTypeIPMatch :: PredicateType
pattern PredicateTypeIPMatch = PredicateType' "IPMatch"

pattern PredicateTypeRegexMatch :: PredicateType
pattern PredicateTypeRegexMatch = PredicateType' "RegexMatch"

pattern PredicateTypeSizeConstraint :: PredicateType
pattern PredicateTypeSizeConstraint = PredicateType' "SizeConstraint"

pattern PredicateTypeSqlInjectionMatch :: PredicateType
pattern PredicateTypeSqlInjectionMatch = PredicateType' "SqlInjectionMatch"

pattern PredicateTypeXssMatch :: PredicateType
pattern PredicateTypeXssMatch = PredicateType' "XssMatch"

{-# COMPLETE
  PredicateTypeByteMatch,
  PredicateTypeGeoMatch,
  PredicateTypeIPMatch,
  PredicateTypeRegexMatch,
  PredicateTypeSizeConstraint,
  PredicateTypeSqlInjectionMatch,
  PredicateTypeXssMatch,
  PredicateType'
  #-}

instance Prelude.FromText PredicateType where
  parser = PredicateType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PredicateType where
  toText (PredicateType' x) = x

instance Prelude.Hashable PredicateType

instance Prelude.NFData PredicateType

instance Prelude.ToByteString PredicateType

instance Prelude.ToQuery PredicateType

instance Prelude.ToHeader PredicateType

instance Prelude.ToJSON PredicateType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PredicateType where
  parseJSON = Prelude.parseJSONText "PredicateType"
