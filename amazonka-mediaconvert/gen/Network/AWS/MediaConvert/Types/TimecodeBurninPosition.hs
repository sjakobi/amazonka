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
-- Module      : Network.AWS.MediaConvert.Types.TimecodeBurninPosition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.TimecodeBurninPosition
  ( TimecodeBurninPosition
      ( ..,
        TimecodeBurninPositionBOTTOMCENTER,
        TimecodeBurninPositionBOTTOMLEFT,
        TimecodeBurninPositionBOTTOMRIGHT,
        TimecodeBurninPositionMIDDLECENTER,
        TimecodeBurninPositionMIDDLELEFT,
        TimecodeBurninPositionMIDDLERIGHT,
        TimecodeBurninPositionTOPCENTER,
        TimecodeBurninPositionTOPLEFT,
        TimecodeBurninPositionTOPRIGHT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Use Position (Position) under under Timecode burn-in (TimecodeBurnIn) to
-- specify the location the burned-in timecode on output video.
newtype TimecodeBurninPosition = TimecodeBurninPosition'
  { fromTimecodeBurninPosition ::
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

pattern TimecodeBurninPositionBOTTOMCENTER :: TimecodeBurninPosition
pattern TimecodeBurninPositionBOTTOMCENTER = TimecodeBurninPosition' "BOTTOM_CENTER"

pattern TimecodeBurninPositionBOTTOMLEFT :: TimecodeBurninPosition
pattern TimecodeBurninPositionBOTTOMLEFT = TimecodeBurninPosition' "BOTTOM_LEFT"

pattern TimecodeBurninPositionBOTTOMRIGHT :: TimecodeBurninPosition
pattern TimecodeBurninPositionBOTTOMRIGHT = TimecodeBurninPosition' "BOTTOM_RIGHT"

pattern TimecodeBurninPositionMIDDLECENTER :: TimecodeBurninPosition
pattern TimecodeBurninPositionMIDDLECENTER = TimecodeBurninPosition' "MIDDLE_CENTER"

pattern TimecodeBurninPositionMIDDLELEFT :: TimecodeBurninPosition
pattern TimecodeBurninPositionMIDDLELEFT = TimecodeBurninPosition' "MIDDLE_LEFT"

pattern TimecodeBurninPositionMIDDLERIGHT :: TimecodeBurninPosition
pattern TimecodeBurninPositionMIDDLERIGHT = TimecodeBurninPosition' "MIDDLE_RIGHT"

pattern TimecodeBurninPositionTOPCENTER :: TimecodeBurninPosition
pattern TimecodeBurninPositionTOPCENTER = TimecodeBurninPosition' "TOP_CENTER"

pattern TimecodeBurninPositionTOPLEFT :: TimecodeBurninPosition
pattern TimecodeBurninPositionTOPLEFT = TimecodeBurninPosition' "TOP_LEFT"

pattern TimecodeBurninPositionTOPRIGHT :: TimecodeBurninPosition
pattern TimecodeBurninPositionTOPRIGHT = TimecodeBurninPosition' "TOP_RIGHT"

{-# COMPLETE
  TimecodeBurninPositionBOTTOMCENTER,
  TimecodeBurninPositionBOTTOMLEFT,
  TimecodeBurninPositionBOTTOMRIGHT,
  TimecodeBurninPositionMIDDLECENTER,
  TimecodeBurninPositionMIDDLELEFT,
  TimecodeBurninPositionMIDDLERIGHT,
  TimecodeBurninPositionTOPCENTER,
  TimecodeBurninPositionTOPLEFT,
  TimecodeBurninPositionTOPRIGHT,
  TimecodeBurninPosition'
  #-}

instance Prelude.FromText TimecodeBurninPosition where
  parser = TimecodeBurninPosition' Prelude.<$> Prelude.takeText

instance Prelude.ToText TimecodeBurninPosition where
  toText (TimecodeBurninPosition' x) = x

instance Prelude.Hashable TimecodeBurninPosition

instance Prelude.NFData TimecodeBurninPosition

instance Prelude.ToByteString TimecodeBurninPosition

instance Prelude.ToQuery TimecodeBurninPosition

instance Prelude.ToHeader TimecodeBurninPosition

instance Prelude.ToJSON TimecodeBurninPosition where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TimecodeBurninPosition where
  parseJSON = Prelude.parseJSONText "TimecodeBurninPosition"
