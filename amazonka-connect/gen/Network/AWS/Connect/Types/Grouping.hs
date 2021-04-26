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
-- Module      : Network.AWS.Connect.Types.Grouping
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.Grouping
  ( Grouping
      ( ..,
        GroupingCHANNEL,
        GroupingQUEUE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Grouping = Grouping'
  { fromGrouping ::
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

pattern GroupingCHANNEL :: Grouping
pattern GroupingCHANNEL = Grouping' "CHANNEL"

pattern GroupingQUEUE :: Grouping
pattern GroupingQUEUE = Grouping' "QUEUE"

{-# COMPLETE
  GroupingCHANNEL,
  GroupingQUEUE,
  Grouping'
  #-}

instance Prelude.FromText Grouping where
  parser = Grouping' Prelude.<$> Prelude.takeText

instance Prelude.ToText Grouping where
  toText (Grouping' x) = x

instance Prelude.Hashable Grouping

instance Prelude.NFData Grouping

instance Prelude.ToByteString Grouping

instance Prelude.ToQuery Grouping

instance Prelude.ToHeader Grouping

instance Prelude.ToJSON Grouping where
  toJSON = Prelude.toJSONText
