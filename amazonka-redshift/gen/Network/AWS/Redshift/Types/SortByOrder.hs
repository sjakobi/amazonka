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
-- Module      : Network.AWS.Redshift.Types.SortByOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.SortByOrder
  ( SortByOrder
      ( ..,
        SortByOrderASC,
        SortByOrderDESC
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Internal

newtype SortByOrder = SortByOrder'
  { fromSortByOrder ::
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

pattern SortByOrderASC :: SortByOrder
pattern SortByOrderASC = SortByOrder' "ASC"

pattern SortByOrderDESC :: SortByOrder
pattern SortByOrderDESC = SortByOrder' "DESC"

{-# COMPLETE
  SortByOrderASC,
  SortByOrderDESC,
  SortByOrder'
  #-}

instance Prelude.FromText SortByOrder where
  parser = SortByOrder' Prelude.<$> Prelude.takeText

instance Prelude.ToText SortByOrder where
  toText (SortByOrder' x) = x

instance Prelude.Hashable SortByOrder

instance Prelude.NFData SortByOrder

instance Prelude.ToByteString SortByOrder

instance Prelude.ToQuery SortByOrder

instance Prelude.ToHeader SortByOrder
