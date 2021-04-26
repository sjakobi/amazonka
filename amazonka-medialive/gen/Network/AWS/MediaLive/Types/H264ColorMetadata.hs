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
-- Module      : Network.AWS.MediaLive.Types.H264ColorMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264ColorMetadata
  ( H264ColorMetadata
      ( ..,
        H264ColorMetadataIGNORE,
        H264ColorMetadataINSERT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H264 Color Metadata
newtype H264ColorMetadata = H264ColorMetadata'
  { fromH264ColorMetadata ::
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

pattern H264ColorMetadataIGNORE :: H264ColorMetadata
pattern H264ColorMetadataIGNORE = H264ColorMetadata' "IGNORE"

pattern H264ColorMetadataINSERT :: H264ColorMetadata
pattern H264ColorMetadataINSERT = H264ColorMetadata' "INSERT"

{-# COMPLETE
  H264ColorMetadataIGNORE,
  H264ColorMetadataINSERT,
  H264ColorMetadata'
  #-}

instance Prelude.FromText H264ColorMetadata where
  parser = H264ColorMetadata' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264ColorMetadata where
  toText (H264ColorMetadata' x) = x

instance Prelude.Hashable H264ColorMetadata

instance Prelude.NFData H264ColorMetadata

instance Prelude.ToByteString H264ColorMetadata

instance Prelude.ToQuery H264ColorMetadata

instance Prelude.ToHeader H264ColorMetadata

instance Prelude.ToJSON H264ColorMetadata where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264ColorMetadata where
  parseJSON = Prelude.parseJSONText "H264ColorMetadata"
