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
-- Module      : Network.AWS.SageMaker.Types.CaptureMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CaptureMode
  ( CaptureMode
      ( ..,
        CaptureModeInput,
        CaptureModeOutput
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CaptureMode = CaptureMode'
  { fromCaptureMode ::
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

pattern CaptureModeInput :: CaptureMode
pattern CaptureModeInput = CaptureMode' "Input"

pattern CaptureModeOutput :: CaptureMode
pattern CaptureModeOutput = CaptureMode' "Output"

{-# COMPLETE
  CaptureModeInput,
  CaptureModeOutput,
  CaptureMode'
  #-}

instance Prelude.FromText CaptureMode where
  parser = CaptureMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText CaptureMode where
  toText (CaptureMode' x) = x

instance Prelude.Hashable CaptureMode

instance Prelude.NFData CaptureMode

instance Prelude.ToByteString CaptureMode

instance Prelude.ToQuery CaptureMode

instance Prelude.ToHeader CaptureMode

instance Prelude.ToJSON CaptureMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CaptureMode where
  parseJSON = Prelude.parseJSONText "CaptureMode"
