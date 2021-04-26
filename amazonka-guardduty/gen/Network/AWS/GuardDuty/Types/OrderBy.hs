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
-- Module      : Network.AWS.GuardDuty.Types.OrderBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.OrderBy
  ( OrderBy
      ( ..,
        OrderByASC,
        OrderByDESC
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OrderBy = OrderBy'
  { fromOrderBy ::
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

pattern OrderByASC :: OrderBy
pattern OrderByASC = OrderBy' "ASC"

pattern OrderByDESC :: OrderBy
pattern OrderByDESC = OrderBy' "DESC"

{-# COMPLETE
  OrderByASC,
  OrderByDESC,
  OrderBy'
  #-}

instance Prelude.FromText OrderBy where
  parser = OrderBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText OrderBy where
  toText (OrderBy' x) = x

instance Prelude.Hashable OrderBy

instance Prelude.NFData OrderBy

instance Prelude.ToByteString OrderBy

instance Prelude.ToQuery OrderBy

instance Prelude.ToHeader OrderBy

instance Prelude.ToJSON OrderBy where
  toJSON = Prelude.toJSONText
