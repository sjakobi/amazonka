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
-- Module      : Network.AWS.MediaConvert.Types.ColorMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.ColorMetadata
  ( ColorMetadata
      ( ..,
        ColorMetadataIGNORE,
        ColorMetadataINSERT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Choose Insert (INSERT) for this setting to include color metadata in
-- this output. Choose Ignore (IGNORE) to exclude color metadata from this
-- output. If you don\'t specify a value, the service sets this to Insert
-- by default.
newtype ColorMetadata = ColorMetadata'
  { fromColorMetadata ::
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

pattern ColorMetadataIGNORE :: ColorMetadata
pattern ColorMetadataIGNORE = ColorMetadata' "IGNORE"

pattern ColorMetadataINSERT :: ColorMetadata
pattern ColorMetadataINSERT = ColorMetadata' "INSERT"

{-# COMPLETE
  ColorMetadataIGNORE,
  ColorMetadataINSERT,
  ColorMetadata'
  #-}

instance Prelude.FromText ColorMetadata where
  parser = ColorMetadata' Prelude.<$> Prelude.takeText

instance Prelude.ToText ColorMetadata where
  toText (ColorMetadata' x) = x

instance Prelude.Hashable ColorMetadata

instance Prelude.NFData ColorMetadata

instance Prelude.ToByteString ColorMetadata

instance Prelude.ToQuery ColorMetadata

instance Prelude.ToHeader ColorMetadata

instance Prelude.ToJSON ColorMetadata where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ColorMetadata where
  parseJSON = Prelude.parseJSONText "ColorMetadata"
