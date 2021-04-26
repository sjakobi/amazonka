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
-- Module      : Network.AWS.MediaLive.Types.RtmpOutputCertificateMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.RtmpOutputCertificateMode
  ( RtmpOutputCertificateMode
      ( ..,
        RtmpOutputCertificateModeSELFSIGNED,
        RtmpOutputCertificateModeVERIFYAUTHENTICITY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Rtmp Output Certificate Mode
newtype RtmpOutputCertificateMode = RtmpOutputCertificateMode'
  { fromRtmpOutputCertificateMode ::
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

pattern RtmpOutputCertificateModeSELFSIGNED :: RtmpOutputCertificateMode
pattern RtmpOutputCertificateModeSELFSIGNED = RtmpOutputCertificateMode' "SELF_SIGNED"

pattern RtmpOutputCertificateModeVERIFYAUTHENTICITY :: RtmpOutputCertificateMode
pattern RtmpOutputCertificateModeVERIFYAUTHENTICITY = RtmpOutputCertificateMode' "VERIFY_AUTHENTICITY"

{-# COMPLETE
  RtmpOutputCertificateModeSELFSIGNED,
  RtmpOutputCertificateModeVERIFYAUTHENTICITY,
  RtmpOutputCertificateMode'
  #-}

instance Prelude.FromText RtmpOutputCertificateMode where
  parser = RtmpOutputCertificateMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText RtmpOutputCertificateMode where
  toText (RtmpOutputCertificateMode' x) = x

instance Prelude.Hashable RtmpOutputCertificateMode

instance Prelude.NFData RtmpOutputCertificateMode

instance Prelude.ToByteString RtmpOutputCertificateMode

instance Prelude.ToQuery RtmpOutputCertificateMode

instance Prelude.ToHeader RtmpOutputCertificateMode

instance Prelude.ToJSON RtmpOutputCertificateMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RtmpOutputCertificateMode where
  parseJSON = Prelude.parseJSONText "RtmpOutputCertificateMode"
