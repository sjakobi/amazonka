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
-- Module      : Network.AWS.Pricing.Types.FilterType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pricing.Types.FilterType
  ( FilterType
      ( ..,
        FilterTypeTERMMATCH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FilterType = FilterType'
  { fromFilterType ::
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

pattern FilterTypeTERMMATCH :: FilterType
pattern FilterTypeTERMMATCH = FilterType' "TERM_MATCH"

{-# COMPLETE
  FilterTypeTERMMATCH,
  FilterType'
  #-}

instance Prelude.FromText FilterType where
  parser = FilterType' Prelude.<$> Prelude.takeText

instance Prelude.ToText FilterType where
  toText (FilterType' x) = x

instance Prelude.Hashable FilterType

instance Prelude.NFData FilterType

instance Prelude.ToByteString FilterType

instance Prelude.ToQuery FilterType

instance Prelude.ToHeader FilterType

instance Prelude.ToJSON FilterType where
  toJSON = Prelude.toJSONText
