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
-- Module      : Network.AWS.WAFRegional.Types.MatchFieldType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAFRegional.Types.MatchFieldType
  ( MatchFieldType
      ( ..,
        MatchFieldTypeALLQUERYARGS,
        MatchFieldTypeBODY,
        MatchFieldTypeHEADER,
        MatchFieldTypeMETHOD,
        MatchFieldTypeQUERYSTRING,
        MatchFieldTypeSINGLEQUERYARG,
        MatchFieldTypeURI
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MatchFieldType = MatchFieldType'
  { fromMatchFieldType ::
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

pattern MatchFieldTypeALLQUERYARGS :: MatchFieldType
pattern MatchFieldTypeALLQUERYARGS = MatchFieldType' "ALL_QUERY_ARGS"

pattern MatchFieldTypeBODY :: MatchFieldType
pattern MatchFieldTypeBODY = MatchFieldType' "BODY"

pattern MatchFieldTypeHEADER :: MatchFieldType
pattern MatchFieldTypeHEADER = MatchFieldType' "HEADER"

pattern MatchFieldTypeMETHOD :: MatchFieldType
pattern MatchFieldTypeMETHOD = MatchFieldType' "METHOD"

pattern MatchFieldTypeQUERYSTRING :: MatchFieldType
pattern MatchFieldTypeQUERYSTRING = MatchFieldType' "QUERY_STRING"

pattern MatchFieldTypeSINGLEQUERYARG :: MatchFieldType
pattern MatchFieldTypeSINGLEQUERYARG = MatchFieldType' "SINGLE_QUERY_ARG"

pattern MatchFieldTypeURI :: MatchFieldType
pattern MatchFieldTypeURI = MatchFieldType' "URI"

{-# COMPLETE
  MatchFieldTypeALLQUERYARGS,
  MatchFieldTypeBODY,
  MatchFieldTypeHEADER,
  MatchFieldTypeMETHOD,
  MatchFieldTypeQUERYSTRING,
  MatchFieldTypeSINGLEQUERYARG,
  MatchFieldTypeURI,
  MatchFieldType'
  #-}

instance Prelude.FromText MatchFieldType where
  parser = MatchFieldType' Prelude.<$> Prelude.takeText

instance Prelude.ToText MatchFieldType where
  toText (MatchFieldType' x) = x

instance Prelude.Hashable MatchFieldType

instance Prelude.NFData MatchFieldType

instance Prelude.ToByteString MatchFieldType

instance Prelude.ToQuery MatchFieldType

instance Prelude.ToHeader MatchFieldType

instance Prelude.ToJSON MatchFieldType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MatchFieldType where
  parseJSON = Prelude.parseJSONText "MatchFieldType"
