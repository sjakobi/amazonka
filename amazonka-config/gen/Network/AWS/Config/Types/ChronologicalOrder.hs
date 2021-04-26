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
-- Module      : Network.AWS.Config.Types.ChronologicalOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ChronologicalOrder
  ( ChronologicalOrder
      ( ..,
        ChronologicalOrderForward,
        ChronologicalOrderReverse
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ChronologicalOrder = ChronologicalOrder'
  { fromChronologicalOrder ::
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

pattern ChronologicalOrderForward :: ChronologicalOrder
pattern ChronologicalOrderForward = ChronologicalOrder' "Forward"

pattern ChronologicalOrderReverse :: ChronologicalOrder
pattern ChronologicalOrderReverse = ChronologicalOrder' "Reverse"

{-# COMPLETE
  ChronologicalOrderForward,
  ChronologicalOrderReverse,
  ChronologicalOrder'
  #-}

instance Prelude.FromText ChronologicalOrder where
  parser = ChronologicalOrder' Prelude.<$> Prelude.takeText

instance Prelude.ToText ChronologicalOrder where
  toText (ChronologicalOrder' x) = x

instance Prelude.Hashable ChronologicalOrder

instance Prelude.NFData ChronologicalOrder

instance Prelude.ToByteString ChronologicalOrder

instance Prelude.ToQuery ChronologicalOrder

instance Prelude.ToHeader ChronologicalOrder

instance Prelude.ToJSON ChronologicalOrder where
  toJSON = Prelude.toJSONText
