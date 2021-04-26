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
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2RateControlMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2RateControlMode
  ( Mpeg2RateControlMode
      ( ..,
        Mpeg2RateControlModeCBR,
        Mpeg2RateControlModeVBR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Use Rate control mode (Mpeg2RateControlMode) to specify whether the
-- bitrate is variable (vbr) or constant (cbr).
newtype Mpeg2RateControlMode = Mpeg2RateControlMode'
  { fromMpeg2RateControlMode ::
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

pattern Mpeg2RateControlModeCBR :: Mpeg2RateControlMode
pattern Mpeg2RateControlModeCBR = Mpeg2RateControlMode' "CBR"

pattern Mpeg2RateControlModeVBR :: Mpeg2RateControlMode
pattern Mpeg2RateControlModeVBR = Mpeg2RateControlMode' "VBR"

{-# COMPLETE
  Mpeg2RateControlModeCBR,
  Mpeg2RateControlModeVBR,
  Mpeg2RateControlMode'
  #-}

instance Prelude.FromText Mpeg2RateControlMode where
  parser = Mpeg2RateControlMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2RateControlMode where
  toText (Mpeg2RateControlMode' x) = x

instance Prelude.Hashable Mpeg2RateControlMode

instance Prelude.NFData Mpeg2RateControlMode

instance Prelude.ToByteString Mpeg2RateControlMode

instance Prelude.ToQuery Mpeg2RateControlMode

instance Prelude.ToHeader Mpeg2RateControlMode

instance Prelude.ToJSON Mpeg2RateControlMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2RateControlMode where
  parseJSON = Prelude.parseJSONText "Mpeg2RateControlMode"
