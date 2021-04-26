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
-- Module      : Network.AWS.MediaConvert.Types.DeinterlacerMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DeinterlacerMode
  ( DeinterlacerMode
      ( ..,
        DeinterlacerModeADAPTIVE,
        DeinterlacerModeDEINTERLACE,
        DeinterlacerModeINVERSETELECINE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Use Deinterlacer (DeinterlaceMode) to choose how the service will do
-- deinterlacing. Default is Deinterlace. - Deinterlace converts interlaced
-- to progressive. - Inverse telecine converts Hard Telecine 29.97i to
-- progressive 23.976p. - Adaptive auto-detects and converts to
-- progressive.
newtype DeinterlacerMode = DeinterlacerMode'
  { fromDeinterlacerMode ::
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

pattern DeinterlacerModeADAPTIVE :: DeinterlacerMode
pattern DeinterlacerModeADAPTIVE = DeinterlacerMode' "ADAPTIVE"

pattern DeinterlacerModeDEINTERLACE :: DeinterlacerMode
pattern DeinterlacerModeDEINTERLACE = DeinterlacerMode' "DEINTERLACE"

pattern DeinterlacerModeINVERSETELECINE :: DeinterlacerMode
pattern DeinterlacerModeINVERSETELECINE = DeinterlacerMode' "INVERSE_TELECINE"

{-# COMPLETE
  DeinterlacerModeADAPTIVE,
  DeinterlacerModeDEINTERLACE,
  DeinterlacerModeINVERSETELECINE,
  DeinterlacerMode'
  #-}

instance Prelude.FromText DeinterlacerMode where
  parser = DeinterlacerMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeinterlacerMode where
  toText (DeinterlacerMode' x) = x

instance Prelude.Hashable DeinterlacerMode

instance Prelude.NFData DeinterlacerMode

instance Prelude.ToByteString DeinterlacerMode

instance Prelude.ToQuery DeinterlacerMode

instance Prelude.ToHeader DeinterlacerMode

instance Prelude.ToJSON DeinterlacerMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DeinterlacerMode where
  parseJSON = Prelude.parseJSONText "DeinterlacerMode"
