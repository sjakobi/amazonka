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
-- Module      : Network.AWS.MediaLive.Types.SmoothGroupCertificateMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.SmoothGroupCertificateMode
  ( SmoothGroupCertificateMode
      ( ..,
        SmoothGroupCertificateModeSELFSIGNED,
        SmoothGroupCertificateModeVERIFYAUTHENTICITY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Smooth Group Certificate Mode
newtype SmoothGroupCertificateMode = SmoothGroupCertificateMode'
  { fromSmoothGroupCertificateMode ::
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

pattern SmoothGroupCertificateModeSELFSIGNED :: SmoothGroupCertificateMode
pattern SmoothGroupCertificateModeSELFSIGNED = SmoothGroupCertificateMode' "SELF_SIGNED"

pattern SmoothGroupCertificateModeVERIFYAUTHENTICITY :: SmoothGroupCertificateMode
pattern SmoothGroupCertificateModeVERIFYAUTHENTICITY = SmoothGroupCertificateMode' "VERIFY_AUTHENTICITY"

{-# COMPLETE
  SmoothGroupCertificateModeSELFSIGNED,
  SmoothGroupCertificateModeVERIFYAUTHENTICITY,
  SmoothGroupCertificateMode'
  #-}

instance Prelude.FromText SmoothGroupCertificateMode where
  parser = SmoothGroupCertificateMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText SmoothGroupCertificateMode where
  toText (SmoothGroupCertificateMode' x) = x

instance Prelude.Hashable SmoothGroupCertificateMode

instance Prelude.NFData SmoothGroupCertificateMode

instance Prelude.ToByteString SmoothGroupCertificateMode

instance Prelude.ToQuery SmoothGroupCertificateMode

instance Prelude.ToHeader SmoothGroupCertificateMode

instance Prelude.ToJSON SmoothGroupCertificateMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SmoothGroupCertificateMode where
  parseJSON = Prelude.parseJSONText "SmoothGroupCertificateMode"
