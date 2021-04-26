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
-- Module      : Network.AWS.DeviceFarm.Types.SampleType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.SampleType
  ( SampleType
      ( ..,
        SampleTypeCPU,
        SampleTypeMEMORY,
        SampleTypeNATIVEAVGDRAWTIME,
        SampleTypeNATIVEFPS,
        SampleTypeNATIVEFRAMES,
        SampleTypeNATIVEMAXDRAWTIME,
        SampleTypeNATIVEMINDRAWTIME,
        SampleTypeOPENGLAVGDRAWTIME,
        SampleTypeOPENGLFPS,
        SampleTypeOPENGLFRAMES,
        SampleTypeOPENGLMAXDRAWTIME,
        SampleTypeOPENGLMINDRAWTIME,
        SampleTypeRX,
        SampleTypeRXRATE,
        SampleTypeTHREADS,
        SampleTypeTX,
        SampleTypeTXRATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SampleType = SampleType'
  { fromSampleType ::
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

pattern SampleTypeCPU :: SampleType
pattern SampleTypeCPU = SampleType' "CPU"

pattern SampleTypeMEMORY :: SampleType
pattern SampleTypeMEMORY = SampleType' "MEMORY"

pattern SampleTypeNATIVEAVGDRAWTIME :: SampleType
pattern SampleTypeNATIVEAVGDRAWTIME = SampleType' "NATIVE_AVG_DRAWTIME"

pattern SampleTypeNATIVEFPS :: SampleType
pattern SampleTypeNATIVEFPS = SampleType' "NATIVE_FPS"

pattern SampleTypeNATIVEFRAMES :: SampleType
pattern SampleTypeNATIVEFRAMES = SampleType' "NATIVE_FRAMES"

pattern SampleTypeNATIVEMAXDRAWTIME :: SampleType
pattern SampleTypeNATIVEMAXDRAWTIME = SampleType' "NATIVE_MAX_DRAWTIME"

pattern SampleTypeNATIVEMINDRAWTIME :: SampleType
pattern SampleTypeNATIVEMINDRAWTIME = SampleType' "NATIVE_MIN_DRAWTIME"

pattern SampleTypeOPENGLAVGDRAWTIME :: SampleType
pattern SampleTypeOPENGLAVGDRAWTIME = SampleType' "OPENGL_AVG_DRAWTIME"

pattern SampleTypeOPENGLFPS :: SampleType
pattern SampleTypeOPENGLFPS = SampleType' "OPENGL_FPS"

pattern SampleTypeOPENGLFRAMES :: SampleType
pattern SampleTypeOPENGLFRAMES = SampleType' "OPENGL_FRAMES"

pattern SampleTypeOPENGLMAXDRAWTIME :: SampleType
pattern SampleTypeOPENGLMAXDRAWTIME = SampleType' "OPENGL_MAX_DRAWTIME"

pattern SampleTypeOPENGLMINDRAWTIME :: SampleType
pattern SampleTypeOPENGLMINDRAWTIME = SampleType' "OPENGL_MIN_DRAWTIME"

pattern SampleTypeRX :: SampleType
pattern SampleTypeRX = SampleType' "RX"

pattern SampleTypeRXRATE :: SampleType
pattern SampleTypeRXRATE = SampleType' "RX_RATE"

pattern SampleTypeTHREADS :: SampleType
pattern SampleTypeTHREADS = SampleType' "THREADS"

pattern SampleTypeTX :: SampleType
pattern SampleTypeTX = SampleType' "TX"

pattern SampleTypeTXRATE :: SampleType
pattern SampleTypeTXRATE = SampleType' "TX_RATE"

{-# COMPLETE
  SampleTypeCPU,
  SampleTypeMEMORY,
  SampleTypeNATIVEAVGDRAWTIME,
  SampleTypeNATIVEFPS,
  SampleTypeNATIVEFRAMES,
  SampleTypeNATIVEMAXDRAWTIME,
  SampleTypeNATIVEMINDRAWTIME,
  SampleTypeOPENGLAVGDRAWTIME,
  SampleTypeOPENGLFPS,
  SampleTypeOPENGLFRAMES,
  SampleTypeOPENGLMAXDRAWTIME,
  SampleTypeOPENGLMINDRAWTIME,
  SampleTypeRX,
  SampleTypeRXRATE,
  SampleTypeTHREADS,
  SampleTypeTX,
  SampleTypeTXRATE,
  SampleType'
  #-}

instance Prelude.FromText SampleType where
  parser = SampleType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SampleType where
  toText (SampleType' x) = x

instance Prelude.Hashable SampleType

instance Prelude.NFData SampleType

instance Prelude.ToByteString SampleType

instance Prelude.ToQuery SampleType

instance Prelude.ToHeader SampleType

instance Prelude.FromJSON SampleType where
  parseJSON = Prelude.parseJSONText "SampleType"
