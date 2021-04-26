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
-- Module      : Network.AWS.MediaLive.Types.Scte35SpliceInsertNoRegionalBlackoutBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Scte35SpliceInsertNoRegionalBlackoutBehavior
  ( Scte35SpliceInsertNoRegionalBlackoutBehavior
      ( ..,
        Scte35SpliceInsertNoRegionalBlackoutBehaviorFOLLOW,
        Scte35SpliceInsertNoRegionalBlackoutBehaviorIGNORE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Scte35 Splice Insert No Regional Blackout Behavior
newtype Scte35SpliceInsertNoRegionalBlackoutBehavior = Scte35SpliceInsertNoRegionalBlackoutBehavior'
  { fromScte35SpliceInsertNoRegionalBlackoutBehavior ::
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

pattern Scte35SpliceInsertNoRegionalBlackoutBehaviorFOLLOW :: Scte35SpliceInsertNoRegionalBlackoutBehavior
pattern Scte35SpliceInsertNoRegionalBlackoutBehaviorFOLLOW = Scte35SpliceInsertNoRegionalBlackoutBehavior' "FOLLOW"

pattern Scte35SpliceInsertNoRegionalBlackoutBehaviorIGNORE :: Scte35SpliceInsertNoRegionalBlackoutBehavior
pattern Scte35SpliceInsertNoRegionalBlackoutBehaviorIGNORE = Scte35SpliceInsertNoRegionalBlackoutBehavior' "IGNORE"

{-# COMPLETE
  Scte35SpliceInsertNoRegionalBlackoutBehaviorFOLLOW,
  Scte35SpliceInsertNoRegionalBlackoutBehaviorIGNORE,
  Scte35SpliceInsertNoRegionalBlackoutBehavior'
  #-}

instance Prelude.FromText Scte35SpliceInsertNoRegionalBlackoutBehavior where
  parser = Scte35SpliceInsertNoRegionalBlackoutBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText Scte35SpliceInsertNoRegionalBlackoutBehavior where
  toText (Scte35SpliceInsertNoRegionalBlackoutBehavior' x) = x

instance Prelude.Hashable Scte35SpliceInsertNoRegionalBlackoutBehavior

instance Prelude.NFData Scte35SpliceInsertNoRegionalBlackoutBehavior

instance Prelude.ToByteString Scte35SpliceInsertNoRegionalBlackoutBehavior

instance Prelude.ToQuery Scte35SpliceInsertNoRegionalBlackoutBehavior

instance Prelude.ToHeader Scte35SpliceInsertNoRegionalBlackoutBehavior

instance Prelude.ToJSON Scte35SpliceInsertNoRegionalBlackoutBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Scte35SpliceInsertNoRegionalBlackoutBehavior where
  parseJSON = Prelude.parseJSONText "Scte35SpliceInsertNoRegionalBlackoutBehavior"
