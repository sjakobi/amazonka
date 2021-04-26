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
-- Module      : Network.AWS.CloudDirectory.Types.FacetStyle
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.FacetStyle
  ( FacetStyle
      ( ..,
        FacetStyleDYNAMIC,
        FacetStyleSTATIC
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FacetStyle = FacetStyle'
  { fromFacetStyle ::
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

pattern FacetStyleDYNAMIC :: FacetStyle
pattern FacetStyleDYNAMIC = FacetStyle' "DYNAMIC"

pattern FacetStyleSTATIC :: FacetStyle
pattern FacetStyleSTATIC = FacetStyle' "STATIC"

{-# COMPLETE
  FacetStyleDYNAMIC,
  FacetStyleSTATIC,
  FacetStyle'
  #-}

instance Prelude.FromText FacetStyle where
  parser = FacetStyle' Prelude.<$> Prelude.takeText

instance Prelude.ToText FacetStyle where
  toText (FacetStyle' x) = x

instance Prelude.Hashable FacetStyle

instance Prelude.NFData FacetStyle

instance Prelude.ToByteString FacetStyle

instance Prelude.ToQuery FacetStyle

instance Prelude.ToHeader FacetStyle

instance Prelude.ToJSON FacetStyle where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FacetStyle where
  parseJSON = Prelude.parseJSONText "FacetStyle"
