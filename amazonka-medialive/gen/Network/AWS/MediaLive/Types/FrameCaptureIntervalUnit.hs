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
-- Module      : Network.AWS.MediaLive.Types.FrameCaptureIntervalUnit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.FrameCaptureIntervalUnit
  ( FrameCaptureIntervalUnit
      ( ..,
        FrameCaptureIntervalUnitMILLISECONDS,
        FrameCaptureIntervalUnitSECONDS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Frame Capture Interval Unit
newtype FrameCaptureIntervalUnit = FrameCaptureIntervalUnit'
  { fromFrameCaptureIntervalUnit ::
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

pattern FrameCaptureIntervalUnitMILLISECONDS :: FrameCaptureIntervalUnit
pattern FrameCaptureIntervalUnitMILLISECONDS = FrameCaptureIntervalUnit' "MILLISECONDS"

pattern FrameCaptureIntervalUnitSECONDS :: FrameCaptureIntervalUnit
pattern FrameCaptureIntervalUnitSECONDS = FrameCaptureIntervalUnit' "SECONDS"

{-# COMPLETE
  FrameCaptureIntervalUnitMILLISECONDS,
  FrameCaptureIntervalUnitSECONDS,
  FrameCaptureIntervalUnit'
  #-}

instance Prelude.FromText FrameCaptureIntervalUnit where
  parser = FrameCaptureIntervalUnit' Prelude.<$> Prelude.takeText

instance Prelude.ToText FrameCaptureIntervalUnit where
  toText (FrameCaptureIntervalUnit' x) = x

instance Prelude.Hashable FrameCaptureIntervalUnit

instance Prelude.NFData FrameCaptureIntervalUnit

instance Prelude.ToByteString FrameCaptureIntervalUnit

instance Prelude.ToQuery FrameCaptureIntervalUnit

instance Prelude.ToHeader FrameCaptureIntervalUnit

instance Prelude.ToJSON FrameCaptureIntervalUnit where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FrameCaptureIntervalUnit where
  parseJSON = Prelude.parseJSONText "FrameCaptureIntervalUnit"
