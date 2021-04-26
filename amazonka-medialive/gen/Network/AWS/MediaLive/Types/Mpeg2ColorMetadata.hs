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
-- Module      : Network.AWS.MediaLive.Types.Mpeg2ColorMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Mpeg2ColorMetadata
  ( Mpeg2ColorMetadata
      ( ..,
        Mpeg2ColorMetadataIGNORE,
        Mpeg2ColorMetadataINSERT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Mpeg2 Color Metadata
newtype Mpeg2ColorMetadata = Mpeg2ColorMetadata'
  { fromMpeg2ColorMetadata ::
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

pattern Mpeg2ColorMetadataIGNORE :: Mpeg2ColorMetadata
pattern Mpeg2ColorMetadataIGNORE = Mpeg2ColorMetadata' "IGNORE"

pattern Mpeg2ColorMetadataINSERT :: Mpeg2ColorMetadata
pattern Mpeg2ColorMetadataINSERT = Mpeg2ColorMetadata' "INSERT"

{-# COMPLETE
  Mpeg2ColorMetadataIGNORE,
  Mpeg2ColorMetadataINSERT,
  Mpeg2ColorMetadata'
  #-}

instance Prelude.FromText Mpeg2ColorMetadata where
  parser = Mpeg2ColorMetadata' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2ColorMetadata where
  toText (Mpeg2ColorMetadata' x) = x

instance Prelude.Hashable Mpeg2ColorMetadata

instance Prelude.NFData Mpeg2ColorMetadata

instance Prelude.ToByteString Mpeg2ColorMetadata

instance Prelude.ToQuery Mpeg2ColorMetadata

instance Prelude.ToHeader Mpeg2ColorMetadata

instance Prelude.ToJSON Mpeg2ColorMetadata where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2ColorMetadata where
  parseJSON = Prelude.parseJSONText "Mpeg2ColorMetadata"
