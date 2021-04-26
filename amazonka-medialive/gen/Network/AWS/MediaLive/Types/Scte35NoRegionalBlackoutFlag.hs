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
-- Module      : Network.AWS.MediaLive.Types.Scte35NoRegionalBlackoutFlag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Scte35NoRegionalBlackoutFlag
  ( Scte35NoRegionalBlackoutFlag
      ( ..,
        Scte35NoRegionalBlackoutFlagNOREGIONALBLACKOUT,
        Scte35NoRegionalBlackoutFlagREGIONALBLACKOUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Corresponds to the no_regional_blackout_flag parameter. A value of
-- REGIONAL_BLACKOUT corresponds to 0 (false) in the SCTE-35 specification.
-- If you include one of the \"restriction\" flags then you must include
-- all four of them.
newtype Scte35NoRegionalBlackoutFlag = Scte35NoRegionalBlackoutFlag'
  { fromScte35NoRegionalBlackoutFlag ::
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

pattern Scte35NoRegionalBlackoutFlagNOREGIONALBLACKOUT :: Scte35NoRegionalBlackoutFlag
pattern Scte35NoRegionalBlackoutFlagNOREGIONALBLACKOUT = Scte35NoRegionalBlackoutFlag' "NO_REGIONAL_BLACKOUT"

pattern Scte35NoRegionalBlackoutFlagREGIONALBLACKOUT :: Scte35NoRegionalBlackoutFlag
pattern Scte35NoRegionalBlackoutFlagREGIONALBLACKOUT = Scte35NoRegionalBlackoutFlag' "REGIONAL_BLACKOUT"

{-# COMPLETE
  Scte35NoRegionalBlackoutFlagNOREGIONALBLACKOUT,
  Scte35NoRegionalBlackoutFlagREGIONALBLACKOUT,
  Scte35NoRegionalBlackoutFlag'
  #-}

instance Prelude.FromText Scte35NoRegionalBlackoutFlag where
  parser = Scte35NoRegionalBlackoutFlag' Prelude.<$> Prelude.takeText

instance Prelude.ToText Scte35NoRegionalBlackoutFlag where
  toText (Scte35NoRegionalBlackoutFlag' x) = x

instance Prelude.Hashable Scte35NoRegionalBlackoutFlag

instance Prelude.NFData Scte35NoRegionalBlackoutFlag

instance Prelude.ToByteString Scte35NoRegionalBlackoutFlag

instance Prelude.ToQuery Scte35NoRegionalBlackoutFlag

instance Prelude.ToHeader Scte35NoRegionalBlackoutFlag

instance Prelude.ToJSON Scte35NoRegionalBlackoutFlag where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Scte35NoRegionalBlackoutFlag where
  parseJSON = Prelude.parseJSONText "Scte35NoRegionalBlackoutFlag"
