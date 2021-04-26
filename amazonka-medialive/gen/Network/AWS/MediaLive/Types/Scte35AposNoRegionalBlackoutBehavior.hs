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
-- Module      : Network.AWS.MediaLive.Types.Scte35AposNoRegionalBlackoutBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Scte35AposNoRegionalBlackoutBehavior
  ( Scte35AposNoRegionalBlackoutBehavior
      ( ..,
        Scte35AposNoRegionalBlackoutBehaviorFOLLOW,
        Scte35AposNoRegionalBlackoutBehaviorIGNORE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Scte35 Apos No Regional Blackout Behavior
newtype Scte35AposNoRegionalBlackoutBehavior = Scte35AposNoRegionalBlackoutBehavior'
  { fromScte35AposNoRegionalBlackoutBehavior ::
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

pattern Scte35AposNoRegionalBlackoutBehaviorFOLLOW :: Scte35AposNoRegionalBlackoutBehavior
pattern Scte35AposNoRegionalBlackoutBehaviorFOLLOW = Scte35AposNoRegionalBlackoutBehavior' "FOLLOW"

pattern Scte35AposNoRegionalBlackoutBehaviorIGNORE :: Scte35AposNoRegionalBlackoutBehavior
pattern Scte35AposNoRegionalBlackoutBehaviorIGNORE = Scte35AposNoRegionalBlackoutBehavior' "IGNORE"

{-# COMPLETE
  Scte35AposNoRegionalBlackoutBehaviorFOLLOW,
  Scte35AposNoRegionalBlackoutBehaviorIGNORE,
  Scte35AposNoRegionalBlackoutBehavior'
  #-}

instance Prelude.FromText Scte35AposNoRegionalBlackoutBehavior where
  parser = Scte35AposNoRegionalBlackoutBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText Scte35AposNoRegionalBlackoutBehavior where
  toText (Scte35AposNoRegionalBlackoutBehavior' x) = x

instance Prelude.Hashable Scte35AposNoRegionalBlackoutBehavior

instance Prelude.NFData Scte35AposNoRegionalBlackoutBehavior

instance Prelude.ToByteString Scte35AposNoRegionalBlackoutBehavior

instance Prelude.ToQuery Scte35AposNoRegionalBlackoutBehavior

instance Prelude.ToHeader Scte35AposNoRegionalBlackoutBehavior

instance Prelude.ToJSON Scte35AposNoRegionalBlackoutBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Scte35AposNoRegionalBlackoutBehavior where
  parseJSON = Prelude.parseJSONText "Scte35AposNoRegionalBlackoutBehavior"
