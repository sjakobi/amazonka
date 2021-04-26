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
-- Module      : Network.AWS.AlexaBusiness.Types.SortValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.SortValue
  ( SortValue
      ( ..,
        SortValueASC,
        SortValueDESC
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SortValue = SortValue'
  { fromSortValue ::
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

pattern SortValueASC :: SortValue
pattern SortValueASC = SortValue' "ASC"

pattern SortValueDESC :: SortValue
pattern SortValueDESC = SortValue' "DESC"

{-# COMPLETE
  SortValueASC,
  SortValueDESC,
  SortValue'
  #-}

instance Prelude.FromText SortValue where
  parser = SortValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText SortValue where
  toText (SortValue' x) = x

instance Prelude.Hashable SortValue

instance Prelude.NFData SortValue

instance Prelude.ToByteString SortValue

instance Prelude.ToQuery SortValue

instance Prelude.ToHeader SortValue

instance Prelude.ToJSON SortValue where
  toJSON = Prelude.toJSONText
