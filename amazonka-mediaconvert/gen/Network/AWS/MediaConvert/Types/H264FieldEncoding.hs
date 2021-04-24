{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264FieldEncoding
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264FieldEncoding
  ( H264FieldEncoding
      ( ..,
        ForceField,
        Paff
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Keep the default value, PAFF, to have MediaConvert use PAFF encoding for interlaced outputs. Choose Force field (FORCE_FIELD) to disable PAFF encoding and create separate interlaced fields.
data H264FieldEncoding = H264FieldEncoding' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ForceField :: H264FieldEncoding
pattern ForceField = H264FieldEncoding' "FORCE_FIELD"

pattern Paff :: H264FieldEncoding
pattern Paff = H264FieldEncoding' "PAFF"

{-# COMPLETE
  ForceField,
  Paff,
  H264FieldEncoding'
  #-}

instance FromText H264FieldEncoding where
  parser = (H264FieldEncoding' . mk) <$> takeText

instance ToText H264FieldEncoding where
  toText (H264FieldEncoding' ci) = original ci

instance Hashable H264FieldEncoding

instance NFData H264FieldEncoding

instance ToByteString H264FieldEncoding

instance ToQuery H264FieldEncoding

instance ToHeader H264FieldEncoding

instance ToJSON H264FieldEncoding where
  toJSON = toJSONText

instance FromJSON H264FieldEncoding where
  parseJSON = parseJSONText "H264FieldEncoding"
