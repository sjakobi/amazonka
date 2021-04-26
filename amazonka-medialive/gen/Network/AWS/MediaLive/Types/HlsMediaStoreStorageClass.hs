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
-- Module      : Network.AWS.MediaLive.Types.HlsMediaStoreStorageClass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsMediaStoreStorageClass
  ( HlsMediaStoreStorageClass
      ( ..,
        HlsMediaStoreStorageClassTEMPORAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Hls Media Store Storage Class
newtype HlsMediaStoreStorageClass = HlsMediaStoreStorageClass'
  { fromHlsMediaStoreStorageClass ::
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

pattern HlsMediaStoreStorageClassTEMPORAL :: HlsMediaStoreStorageClass
pattern HlsMediaStoreStorageClassTEMPORAL = HlsMediaStoreStorageClass' "TEMPORAL"

{-# COMPLETE
  HlsMediaStoreStorageClassTEMPORAL,
  HlsMediaStoreStorageClass'
  #-}

instance Prelude.FromText HlsMediaStoreStorageClass where
  parser = HlsMediaStoreStorageClass' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsMediaStoreStorageClass where
  toText (HlsMediaStoreStorageClass' x) = x

instance Prelude.Hashable HlsMediaStoreStorageClass

instance Prelude.NFData HlsMediaStoreStorageClass

instance Prelude.ToByteString HlsMediaStoreStorageClass

instance Prelude.ToQuery HlsMediaStoreStorageClass

instance Prelude.ToHeader HlsMediaStoreStorageClass

instance Prelude.ToJSON HlsMediaStoreStorageClass where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsMediaStoreStorageClass where
  parseJSON = Prelude.parseJSONText "HlsMediaStoreStorageClass"
