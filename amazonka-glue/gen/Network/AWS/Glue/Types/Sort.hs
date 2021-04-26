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
-- Module      : Network.AWS.Glue.Types.Sort
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.Sort
  ( Sort
      ( ..,
        SortASC,
        SortDESC
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Sort = Sort' {fromSort :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern SortASC :: Sort
pattern SortASC = Sort' "ASC"

pattern SortDESC :: Sort
pattern SortDESC = Sort' "DESC"

{-# COMPLETE
  SortASC,
  SortDESC,
  Sort'
  #-}

instance Prelude.FromText Sort where
  parser = Sort' Prelude.<$> Prelude.takeText

instance Prelude.ToText Sort where
  toText (Sort' x) = x

instance Prelude.Hashable Sort

instance Prelude.NFData Sort

instance Prelude.ToByteString Sort

instance Prelude.ToQuery Sort

instance Prelude.ToHeader Sort

instance Prelude.ToJSON Sort where
  toJSON = Prelude.toJSONText
