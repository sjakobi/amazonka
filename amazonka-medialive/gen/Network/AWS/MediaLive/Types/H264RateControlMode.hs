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
-- Module      : Network.AWS.MediaLive.Types.H264RateControlMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264RateControlMode
  ( H264RateControlMode
      ( ..,
        H264RateControlModeCBR,
        H264RateControlModeMULTIPLEX,
        H264RateControlModeQVBR,
        H264RateControlModeVBR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H264 Rate Control Mode
newtype H264RateControlMode = H264RateControlMode'
  { fromH264RateControlMode ::
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

pattern H264RateControlModeCBR :: H264RateControlMode
pattern H264RateControlModeCBR = H264RateControlMode' "CBR"

pattern H264RateControlModeMULTIPLEX :: H264RateControlMode
pattern H264RateControlModeMULTIPLEX = H264RateControlMode' "MULTIPLEX"

pattern H264RateControlModeQVBR :: H264RateControlMode
pattern H264RateControlModeQVBR = H264RateControlMode' "QVBR"

pattern H264RateControlModeVBR :: H264RateControlMode
pattern H264RateControlModeVBR = H264RateControlMode' "VBR"

{-# COMPLETE
  H264RateControlModeCBR,
  H264RateControlModeMULTIPLEX,
  H264RateControlModeQVBR,
  H264RateControlModeVBR,
  H264RateControlMode'
  #-}

instance Prelude.FromText H264RateControlMode where
  parser = H264RateControlMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264RateControlMode where
  toText (H264RateControlMode' x) = x

instance Prelude.Hashable H264RateControlMode

instance Prelude.NFData H264RateControlMode

instance Prelude.ToByteString H264RateControlMode

instance Prelude.ToQuery H264RateControlMode

instance Prelude.ToHeader H264RateControlMode

instance Prelude.ToJSON H264RateControlMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264RateControlMode where
  parseJSON = Prelude.parseJSONText "H264RateControlMode"
