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
-- Module      : Network.AWS.MediaLive.Types.HlsTsFileMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsTsFileMode
  ( HlsTsFileMode
      ( ..,
        HlsTsFileModeSEGMENTEDFILES,
        HlsTsFileModeSINGLEFILE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Hls Ts File Mode
newtype HlsTsFileMode = HlsTsFileMode'
  { fromHlsTsFileMode ::
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

pattern HlsTsFileModeSEGMENTEDFILES :: HlsTsFileMode
pattern HlsTsFileModeSEGMENTEDFILES = HlsTsFileMode' "SEGMENTED_FILES"

pattern HlsTsFileModeSINGLEFILE :: HlsTsFileMode
pattern HlsTsFileModeSINGLEFILE = HlsTsFileMode' "SINGLE_FILE"

{-# COMPLETE
  HlsTsFileModeSEGMENTEDFILES,
  HlsTsFileModeSINGLEFILE,
  HlsTsFileMode'
  #-}

instance Prelude.FromText HlsTsFileMode where
  parser = HlsTsFileMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsTsFileMode where
  toText (HlsTsFileMode' x) = x

instance Prelude.Hashable HlsTsFileMode

instance Prelude.NFData HlsTsFileMode

instance Prelude.ToByteString HlsTsFileMode

instance Prelude.ToQuery HlsTsFileMode

instance Prelude.ToHeader HlsTsFileMode

instance Prelude.ToJSON HlsTsFileMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsTsFileMode where
  parseJSON = Prelude.parseJSONText "HlsTsFileMode"
