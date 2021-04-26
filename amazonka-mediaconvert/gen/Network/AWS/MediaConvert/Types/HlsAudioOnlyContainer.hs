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
-- Module      : Network.AWS.MediaConvert.Types.HlsAudioOnlyContainer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsAudioOnlyContainer
  ( HlsAudioOnlyContainer
      ( ..,
        HlsAudioOnlyContainerAUTOMATIC,
        HlsAudioOnlyContainerM2TS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Use this setting only in audio-only outputs. Choose MPEG-2 Transport
-- Stream (M2TS) to create a file in an MPEG2-TS container. Keep the
-- default value Automatic (AUTOMATIC) to create a raw audio-only file with
-- no container. Regardless of the value that you specify here, if this
-- output has video, the service will place outputs into an MPEG2-TS
-- container.
newtype HlsAudioOnlyContainer = HlsAudioOnlyContainer'
  { fromHlsAudioOnlyContainer ::
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

pattern HlsAudioOnlyContainerAUTOMATIC :: HlsAudioOnlyContainer
pattern HlsAudioOnlyContainerAUTOMATIC = HlsAudioOnlyContainer' "AUTOMATIC"

pattern HlsAudioOnlyContainerM2TS :: HlsAudioOnlyContainer
pattern HlsAudioOnlyContainerM2TS = HlsAudioOnlyContainer' "M2TS"

{-# COMPLETE
  HlsAudioOnlyContainerAUTOMATIC,
  HlsAudioOnlyContainerM2TS,
  HlsAudioOnlyContainer'
  #-}

instance Prelude.FromText HlsAudioOnlyContainer where
  parser = HlsAudioOnlyContainer' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsAudioOnlyContainer where
  toText (HlsAudioOnlyContainer' x) = x

instance Prelude.Hashable HlsAudioOnlyContainer

instance Prelude.NFData HlsAudioOnlyContainer

instance Prelude.ToByteString HlsAudioOnlyContainer

instance Prelude.ToQuery HlsAudioOnlyContainer

instance Prelude.ToHeader HlsAudioOnlyContainer

instance Prelude.ToJSON HlsAudioOnlyContainer where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsAudioOnlyContainer where
  parseJSON = Prelude.parseJSONText "HlsAudioOnlyContainer"
