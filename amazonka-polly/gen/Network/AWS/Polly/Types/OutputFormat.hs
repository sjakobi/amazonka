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
-- Module      : Network.AWS.Polly.Types.OutputFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Polly.Types.OutputFormat
  ( OutputFormat
      ( ..,
        OutputFormatJson,
        OutputFormatMP3,
        OutputFormatOggVorbis,
        OutputFormatPcm
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OutputFormat = OutputFormat'
  { fromOutputFormat ::
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

pattern OutputFormatJson :: OutputFormat
pattern OutputFormatJson = OutputFormat' "json"

pattern OutputFormatMP3 :: OutputFormat
pattern OutputFormatMP3 = OutputFormat' "mp3"

pattern OutputFormatOggVorbis :: OutputFormat
pattern OutputFormatOggVorbis = OutputFormat' "ogg_vorbis"

pattern OutputFormatPcm :: OutputFormat
pattern OutputFormatPcm = OutputFormat' "pcm"

{-# COMPLETE
  OutputFormatJson,
  OutputFormatMP3,
  OutputFormatOggVorbis,
  OutputFormatPcm,
  OutputFormat'
  #-}

instance Prelude.FromText OutputFormat where
  parser = OutputFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText OutputFormat where
  toText (OutputFormat' x) = x

instance Prelude.Hashable OutputFormat

instance Prelude.NFData OutputFormat

instance Prelude.ToByteString OutputFormat

instance Prelude.ToQuery OutputFormat

instance Prelude.ToHeader OutputFormat

instance Prelude.ToJSON OutputFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON OutputFormat where
  parseJSON = Prelude.parseJSONText "OutputFormat"
