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
-- Module      : Network.AWS.CodeDeploy.Types.TagFilterType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.TagFilterType
  ( TagFilterType
      ( ..,
        TagFilterTypeKEYANDVALUE,
        TagFilterTypeKEYONLY,
        TagFilterTypeVALUEONLY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TagFilterType = TagFilterType'
  { fromTagFilterType ::
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

pattern TagFilterTypeKEYANDVALUE :: TagFilterType
pattern TagFilterTypeKEYANDVALUE = TagFilterType' "KEY_AND_VALUE"

pattern TagFilterTypeKEYONLY :: TagFilterType
pattern TagFilterTypeKEYONLY = TagFilterType' "KEY_ONLY"

pattern TagFilterTypeVALUEONLY :: TagFilterType
pattern TagFilterTypeVALUEONLY = TagFilterType' "VALUE_ONLY"

{-# COMPLETE
  TagFilterTypeKEYANDVALUE,
  TagFilterTypeKEYONLY,
  TagFilterTypeVALUEONLY,
  TagFilterType'
  #-}

instance Prelude.FromText TagFilterType where
  parser = TagFilterType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TagFilterType where
  toText (TagFilterType' x) = x

instance Prelude.Hashable TagFilterType

instance Prelude.NFData TagFilterType

instance Prelude.ToByteString TagFilterType

instance Prelude.ToQuery TagFilterType

instance Prelude.ToHeader TagFilterType

instance Prelude.ToJSON TagFilterType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TagFilterType where
  parseJSON = Prelude.parseJSONText "TagFilterType"
