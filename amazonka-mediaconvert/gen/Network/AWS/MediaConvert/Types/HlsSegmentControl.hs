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
-- Module      : Network.AWS.MediaConvert.Types.HlsSegmentControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsSegmentControl
  ( HlsSegmentControl
      ( ..,
        HlsSegmentControlSEGMENTEDFILES,
        HlsSegmentControlSINGLEFILE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When set to SINGLE_FILE, emits program as a single media resource (.ts)
-- file, uses #EXT-X-BYTERANGE tags to index segment for playback.
newtype HlsSegmentControl = HlsSegmentControl'
  { fromHlsSegmentControl ::
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

pattern HlsSegmentControlSEGMENTEDFILES :: HlsSegmentControl
pattern HlsSegmentControlSEGMENTEDFILES = HlsSegmentControl' "SEGMENTED_FILES"

pattern HlsSegmentControlSINGLEFILE :: HlsSegmentControl
pattern HlsSegmentControlSINGLEFILE = HlsSegmentControl' "SINGLE_FILE"

{-# COMPLETE
  HlsSegmentControlSEGMENTEDFILES,
  HlsSegmentControlSINGLEFILE,
  HlsSegmentControl'
  #-}

instance Prelude.FromText HlsSegmentControl where
  parser = HlsSegmentControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsSegmentControl where
  toText (HlsSegmentControl' x) = x

instance Prelude.Hashable HlsSegmentControl

instance Prelude.NFData HlsSegmentControl

instance Prelude.ToByteString HlsSegmentControl

instance Prelude.ToQuery HlsSegmentControl

instance Prelude.ToHeader HlsSegmentControl

instance Prelude.ToJSON HlsSegmentControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsSegmentControl where
  parseJSON = Prelude.parseJSONText "HlsSegmentControl"
