{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265AlternateTransferFunctionSei
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265AlternateTransferFunctionSei
  ( H265AlternateTransferFunctionSei
      ( ..,
        HATFSDisabled,
        HATFSEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Enables Alternate Transfer Function SEI message for outputs using Hybrid Log Gamma (HLG) Electro-Optical Transfer Function (EOTF).
data H265AlternateTransferFunctionSei
  = H265AlternateTransferFunctionSei'
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

pattern HATFSDisabled :: H265AlternateTransferFunctionSei
pattern HATFSDisabled = H265AlternateTransferFunctionSei' "DISABLED"

pattern HATFSEnabled :: H265AlternateTransferFunctionSei
pattern HATFSEnabled = H265AlternateTransferFunctionSei' "ENABLED"

{-# COMPLETE
  HATFSDisabled,
  HATFSEnabled,
  H265AlternateTransferFunctionSei'
  #-}

instance FromText H265AlternateTransferFunctionSei where
  parser = (H265AlternateTransferFunctionSei' . mk) <$> takeText

instance ToText H265AlternateTransferFunctionSei where
  toText (H265AlternateTransferFunctionSei' ci) = original ci

instance Hashable H265AlternateTransferFunctionSei

instance NFData H265AlternateTransferFunctionSei

instance ToByteString H265AlternateTransferFunctionSei

instance ToQuery H265AlternateTransferFunctionSei

instance ToHeader H265AlternateTransferFunctionSei

instance ToJSON H265AlternateTransferFunctionSei where
  toJSON = toJSONText

instance FromJSON H265AlternateTransferFunctionSei where
  parseJSON = parseJSONText "H265AlternateTransferFunctionSei"
