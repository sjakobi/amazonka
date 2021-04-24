{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.CmfcScte35Source
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmfcScte35Source
  ( CmfcScte35Source
      ( ..,
        CSSNone,
        CSSPassthrough
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Ignore this setting unless you have SCTE-35 markers in your input video file. Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want those SCTE-35 markers in this output.
data CmfcScte35Source = CmfcScte35Source' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CSSNone :: CmfcScte35Source
pattern CSSNone = CmfcScte35Source' "NONE"

pattern CSSPassthrough :: CmfcScte35Source
pattern CSSPassthrough = CmfcScte35Source' "PASSTHROUGH"

{-# COMPLETE
  CSSNone,
  CSSPassthrough,
  CmfcScte35Source'
  #-}

instance FromText CmfcScte35Source where
  parser = (CmfcScte35Source' . mk) <$> takeText

instance ToText CmfcScte35Source where
  toText (CmfcScte35Source' ci) = original ci

instance Hashable CmfcScte35Source

instance NFData CmfcScte35Source

instance ToByteString CmfcScte35Source

instance ToQuery CmfcScte35Source

instance ToHeader CmfcScte35Source

instance ToJSON CmfcScte35Source where
  toJSON = toJSONText

instance FromJSON CmfcScte35Source where
  parseJSON = parseJSONText "CmfcScte35Source"
