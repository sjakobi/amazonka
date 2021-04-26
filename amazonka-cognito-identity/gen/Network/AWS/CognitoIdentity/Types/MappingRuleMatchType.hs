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
-- Module      : Network.AWS.CognitoIdentity.Types.MappingRuleMatchType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentity.Types.MappingRuleMatchType
  ( MappingRuleMatchType
      ( ..,
        MappingRuleMatchTypeContains,
        MappingRuleMatchTypeEquals,
        MappingRuleMatchTypeNotEqual,
        MappingRuleMatchTypeStartsWith
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MappingRuleMatchType = MappingRuleMatchType'
  { fromMappingRuleMatchType ::
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

pattern MappingRuleMatchTypeContains :: MappingRuleMatchType
pattern MappingRuleMatchTypeContains = MappingRuleMatchType' "Contains"

pattern MappingRuleMatchTypeEquals :: MappingRuleMatchType
pattern MappingRuleMatchTypeEquals = MappingRuleMatchType' "Equals"

pattern MappingRuleMatchTypeNotEqual :: MappingRuleMatchType
pattern MappingRuleMatchTypeNotEqual = MappingRuleMatchType' "NotEqual"

pattern MappingRuleMatchTypeStartsWith :: MappingRuleMatchType
pattern MappingRuleMatchTypeStartsWith = MappingRuleMatchType' "StartsWith"

{-# COMPLETE
  MappingRuleMatchTypeContains,
  MappingRuleMatchTypeEquals,
  MappingRuleMatchTypeNotEqual,
  MappingRuleMatchTypeStartsWith,
  MappingRuleMatchType'
  #-}

instance Prelude.FromText MappingRuleMatchType where
  parser = MappingRuleMatchType' Prelude.<$> Prelude.takeText

instance Prelude.ToText MappingRuleMatchType where
  toText (MappingRuleMatchType' x) = x

instance Prelude.Hashable MappingRuleMatchType

instance Prelude.NFData MappingRuleMatchType

instance Prelude.ToByteString MappingRuleMatchType

instance Prelude.ToQuery MappingRuleMatchType

instance Prelude.ToHeader MappingRuleMatchType

instance Prelude.ToJSON MappingRuleMatchType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MappingRuleMatchType where
  parseJSON = Prelude.parseJSONText "MappingRuleMatchType"
