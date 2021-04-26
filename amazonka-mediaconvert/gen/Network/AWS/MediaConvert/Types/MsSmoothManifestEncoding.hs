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
-- Module      : Network.AWS.MediaConvert.Types.MsSmoothManifestEncoding
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MsSmoothManifestEncoding
  ( MsSmoothManifestEncoding
      ( ..,
        MsSmoothManifestEncodingUTF16,
        MsSmoothManifestEncodingUTF8
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Use Manifest encoding (MsSmoothManifestEncoding) to specify the encoding
-- format for the server and client manifest. Valid options are utf8 and
-- utf16.
newtype MsSmoothManifestEncoding = MsSmoothManifestEncoding'
  { fromMsSmoothManifestEncoding ::
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

pattern MsSmoothManifestEncodingUTF16 :: MsSmoothManifestEncoding
pattern MsSmoothManifestEncodingUTF16 = MsSmoothManifestEncoding' "UTF16"

pattern MsSmoothManifestEncodingUTF8 :: MsSmoothManifestEncoding
pattern MsSmoothManifestEncodingUTF8 = MsSmoothManifestEncoding' "UTF8"

{-# COMPLETE
  MsSmoothManifestEncodingUTF16,
  MsSmoothManifestEncodingUTF8,
  MsSmoothManifestEncoding'
  #-}

instance Prelude.FromText MsSmoothManifestEncoding where
  parser = MsSmoothManifestEncoding' Prelude.<$> Prelude.takeText

instance Prelude.ToText MsSmoothManifestEncoding where
  toText (MsSmoothManifestEncoding' x) = x

instance Prelude.Hashable MsSmoothManifestEncoding

instance Prelude.NFData MsSmoothManifestEncoding

instance Prelude.ToByteString MsSmoothManifestEncoding

instance Prelude.ToQuery MsSmoothManifestEncoding

instance Prelude.ToHeader MsSmoothManifestEncoding

instance Prelude.ToJSON MsSmoothManifestEncoding where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MsSmoothManifestEncoding where
  parseJSON = Prelude.parseJSONText "MsSmoothManifestEncoding"
