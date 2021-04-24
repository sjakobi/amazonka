{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        UTF16,
        UTF8
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Use Manifest encoding (MsSmoothManifestEncoding) to specify the encoding format for the server and client manifest. Valid options are utf8 and utf16.
data MsSmoothManifestEncoding
  = MsSmoothManifestEncoding'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern UTF16 :: MsSmoothManifestEncoding
pattern UTF16 = MsSmoothManifestEncoding' "UTF16"

pattern UTF8 :: MsSmoothManifestEncoding
pattern UTF8 = MsSmoothManifestEncoding' "UTF8"

{-# COMPLETE
  UTF16,
  UTF8,
  MsSmoothManifestEncoding'
  #-}

instance FromText MsSmoothManifestEncoding where
  parser = (MsSmoothManifestEncoding' . mk) <$> takeText

instance ToText MsSmoothManifestEncoding where
  toText (MsSmoothManifestEncoding' ci) = original ci

instance Hashable MsSmoothManifestEncoding

instance NFData MsSmoothManifestEncoding

instance ToByteString MsSmoothManifestEncoding

instance ToQuery MsSmoothManifestEncoding

instance ToHeader MsSmoothManifestEncoding

instance ToJSON MsSmoothManifestEncoding where
  toJSON = toJSONText

instance FromJSON MsSmoothManifestEncoding where
  parseJSON = parseJSONText "MsSmoothManifestEncoding"
