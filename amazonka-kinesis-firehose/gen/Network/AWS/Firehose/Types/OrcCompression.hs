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
-- Module      : Network.AWS.Firehose.Types.OrcCompression
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.OrcCompression
  ( OrcCompression
      ( ..,
        OrcCompressionNONE,
        OrcCompressionSNAPPY,
        OrcCompressionZLIB
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OrcCompression = OrcCompression'
  { fromOrcCompression ::
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

pattern OrcCompressionNONE :: OrcCompression
pattern OrcCompressionNONE = OrcCompression' "NONE"

pattern OrcCompressionSNAPPY :: OrcCompression
pattern OrcCompressionSNAPPY = OrcCompression' "SNAPPY"

pattern OrcCompressionZLIB :: OrcCompression
pattern OrcCompressionZLIB = OrcCompression' "ZLIB"

{-# COMPLETE
  OrcCompressionNONE,
  OrcCompressionSNAPPY,
  OrcCompressionZLIB,
  OrcCompression'
  #-}

instance Prelude.FromText OrcCompression where
  parser = OrcCompression' Prelude.<$> Prelude.takeText

instance Prelude.ToText OrcCompression where
  toText (OrcCompression' x) = x

instance Prelude.Hashable OrcCompression

instance Prelude.NFData OrcCompression

instance Prelude.ToByteString OrcCompression

instance Prelude.ToQuery OrcCompression

instance Prelude.ToHeader OrcCompression

instance Prelude.ToJSON OrcCompression where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON OrcCompression where
  parseJSON = Prelude.parseJSONText "OrcCompression"
