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
-- Module      : Network.AWS.SageMaker.Types.TargetPlatformAccelerator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TargetPlatformAccelerator
  ( TargetPlatformAccelerator
      ( ..,
        TargetPlatformAcceleratorINTELGRAPHICS,
        TargetPlatformAcceleratorMALI,
        TargetPlatformAcceleratorNVIDIA
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TargetPlatformAccelerator = TargetPlatformAccelerator'
  { fromTargetPlatformAccelerator ::
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

pattern TargetPlatformAcceleratorINTELGRAPHICS :: TargetPlatformAccelerator
pattern TargetPlatformAcceleratorINTELGRAPHICS = TargetPlatformAccelerator' "INTEL_GRAPHICS"

pattern TargetPlatformAcceleratorMALI :: TargetPlatformAccelerator
pattern TargetPlatformAcceleratorMALI = TargetPlatformAccelerator' "MALI"

pattern TargetPlatformAcceleratorNVIDIA :: TargetPlatformAccelerator
pattern TargetPlatformAcceleratorNVIDIA = TargetPlatformAccelerator' "NVIDIA"

{-# COMPLETE
  TargetPlatformAcceleratorINTELGRAPHICS,
  TargetPlatformAcceleratorMALI,
  TargetPlatformAcceleratorNVIDIA,
  TargetPlatformAccelerator'
  #-}

instance Prelude.FromText TargetPlatformAccelerator where
  parser = TargetPlatformAccelerator' Prelude.<$> Prelude.takeText

instance Prelude.ToText TargetPlatformAccelerator where
  toText (TargetPlatformAccelerator' x) = x

instance Prelude.Hashable TargetPlatformAccelerator

instance Prelude.NFData TargetPlatformAccelerator

instance Prelude.ToByteString TargetPlatformAccelerator

instance Prelude.ToQuery TargetPlatformAccelerator

instance Prelude.ToHeader TargetPlatformAccelerator

instance Prelude.ToJSON TargetPlatformAccelerator where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TargetPlatformAccelerator where
  parseJSON = Prelude.parseJSONText "TargetPlatformAccelerator"
