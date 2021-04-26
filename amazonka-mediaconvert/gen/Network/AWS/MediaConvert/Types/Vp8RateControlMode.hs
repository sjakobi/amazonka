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
-- Module      : Network.AWS.MediaConvert.Types.Vp8RateControlMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vp8RateControlMode
  ( Vp8RateControlMode
      ( ..,
        Vp8RateControlModeVBR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | With the VP8 codec, you can use only the variable bitrate (VBR) rate
-- control mode.
newtype Vp8RateControlMode = Vp8RateControlMode'
  { fromVp8RateControlMode ::
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

pattern Vp8RateControlModeVBR :: Vp8RateControlMode
pattern Vp8RateControlModeVBR = Vp8RateControlMode' "VBR"

{-# COMPLETE
  Vp8RateControlModeVBR,
  Vp8RateControlMode'
  #-}

instance Prelude.FromText Vp8RateControlMode where
  parser = Vp8RateControlMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText Vp8RateControlMode where
  toText (Vp8RateControlMode' x) = x

instance Prelude.Hashable Vp8RateControlMode

instance Prelude.NFData Vp8RateControlMode

instance Prelude.ToByteString Vp8RateControlMode

instance Prelude.ToQuery Vp8RateControlMode

instance Prelude.ToHeader Vp8RateControlMode

instance Prelude.ToJSON Vp8RateControlMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Vp8RateControlMode where
  parseJSON = Prelude.parseJSONText "Vp8RateControlMode"
