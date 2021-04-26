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
-- Module      : Network.AWS.MediaConvert.Types.Vp9RateControlMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vp9RateControlMode
  ( Vp9RateControlMode
      ( ..,
        Vp9RateControlModeVBR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | With the VP9 codec, you can use only the variable bitrate (VBR) rate
-- control mode.
newtype Vp9RateControlMode = Vp9RateControlMode'
  { fromVp9RateControlMode ::
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

pattern Vp9RateControlModeVBR :: Vp9RateControlMode
pattern Vp9RateControlModeVBR = Vp9RateControlMode' "VBR"

{-# COMPLETE
  Vp9RateControlModeVBR,
  Vp9RateControlMode'
  #-}

instance Prelude.FromText Vp9RateControlMode where
  parser = Vp9RateControlMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText Vp9RateControlMode where
  toText (Vp9RateControlMode' x) = x

instance Prelude.Hashable Vp9RateControlMode

instance Prelude.NFData Vp9RateControlMode

instance Prelude.ToByteString Vp9RateControlMode

instance Prelude.ToQuery Vp9RateControlMode

instance Prelude.ToHeader Vp9RateControlMode

instance Prelude.ToJSON Vp9RateControlMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Vp9RateControlMode where
  parseJSON = Prelude.parseJSONText "Vp9RateControlMode"
