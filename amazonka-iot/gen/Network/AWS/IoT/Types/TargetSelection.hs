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
-- Module      : Network.AWS.IoT.Types.TargetSelection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.TargetSelection
  ( TargetSelection
      ( ..,
        TargetSelectionCONTINUOUS,
        TargetSelectionSNAPSHOT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TargetSelection = TargetSelection'
  { fromTargetSelection ::
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

pattern TargetSelectionCONTINUOUS :: TargetSelection
pattern TargetSelectionCONTINUOUS = TargetSelection' "CONTINUOUS"

pattern TargetSelectionSNAPSHOT :: TargetSelection
pattern TargetSelectionSNAPSHOT = TargetSelection' "SNAPSHOT"

{-# COMPLETE
  TargetSelectionCONTINUOUS,
  TargetSelectionSNAPSHOT,
  TargetSelection'
  #-}

instance Prelude.FromText TargetSelection where
  parser = TargetSelection' Prelude.<$> Prelude.takeText

instance Prelude.ToText TargetSelection where
  toText (TargetSelection' x) = x

instance Prelude.Hashable TargetSelection

instance Prelude.NFData TargetSelection

instance Prelude.ToByteString TargetSelection

instance Prelude.ToQuery TargetSelection

instance Prelude.ToHeader TargetSelection

instance Prelude.ToJSON TargetSelection where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TargetSelection where
  parseJSON = Prelude.parseJSONText "TargetSelection"
