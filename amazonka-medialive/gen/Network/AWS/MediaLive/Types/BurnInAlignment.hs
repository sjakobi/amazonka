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
-- Module      : Network.AWS.MediaLive.Types.BurnInAlignment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.BurnInAlignment
  ( BurnInAlignment
      ( ..,
        BurnInAlignmentCENTERED,
        BurnInAlignmentLEFT,
        BurnInAlignmentSMART
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Burn In Alignment
newtype BurnInAlignment = BurnInAlignment'
  { fromBurnInAlignment ::
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

pattern BurnInAlignmentCENTERED :: BurnInAlignment
pattern BurnInAlignmentCENTERED = BurnInAlignment' "CENTERED"

pattern BurnInAlignmentLEFT :: BurnInAlignment
pattern BurnInAlignmentLEFT = BurnInAlignment' "LEFT"

pattern BurnInAlignmentSMART :: BurnInAlignment
pattern BurnInAlignmentSMART = BurnInAlignment' "SMART"

{-# COMPLETE
  BurnInAlignmentCENTERED,
  BurnInAlignmentLEFT,
  BurnInAlignmentSMART,
  BurnInAlignment'
  #-}

instance Prelude.FromText BurnInAlignment where
  parser = BurnInAlignment' Prelude.<$> Prelude.takeText

instance Prelude.ToText BurnInAlignment where
  toText (BurnInAlignment' x) = x

instance Prelude.Hashable BurnInAlignment

instance Prelude.NFData BurnInAlignment

instance Prelude.ToByteString BurnInAlignment

instance Prelude.ToQuery BurnInAlignment

instance Prelude.ToHeader BurnInAlignment

instance Prelude.ToJSON BurnInAlignment where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BurnInAlignment where
  parseJSON = Prelude.parseJSONText "BurnInAlignment"
