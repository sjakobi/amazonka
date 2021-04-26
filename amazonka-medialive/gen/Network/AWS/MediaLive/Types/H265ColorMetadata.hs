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
-- Module      : Network.AWS.MediaLive.Types.H265ColorMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265ColorMetadata
  ( H265ColorMetadata
      ( ..,
        H265ColorMetadataIGNORE,
        H265ColorMetadataINSERT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H265 Color Metadata
newtype H265ColorMetadata = H265ColorMetadata'
  { fromH265ColorMetadata ::
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

pattern H265ColorMetadataIGNORE :: H265ColorMetadata
pattern H265ColorMetadataIGNORE = H265ColorMetadata' "IGNORE"

pattern H265ColorMetadataINSERT :: H265ColorMetadata
pattern H265ColorMetadataINSERT = H265ColorMetadata' "INSERT"

{-# COMPLETE
  H265ColorMetadataIGNORE,
  H265ColorMetadataINSERT,
  H265ColorMetadata'
  #-}

instance Prelude.FromText H265ColorMetadata where
  parser = H265ColorMetadata' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265ColorMetadata where
  toText (H265ColorMetadata' x) = x

instance Prelude.Hashable H265ColorMetadata

instance Prelude.NFData H265ColorMetadata

instance Prelude.ToByteString H265ColorMetadata

instance Prelude.ToQuery H265ColorMetadata

instance Prelude.ToHeader H265ColorMetadata

instance Prelude.ToJSON H265ColorMetadata where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265ColorMetadata where
  parseJSON = Prelude.parseJSONText "H265ColorMetadata"
