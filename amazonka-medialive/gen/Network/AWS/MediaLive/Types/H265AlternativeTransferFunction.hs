{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H265AlternativeTransferFunction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265AlternativeTransferFunction
  ( H265AlternativeTransferFunction
      ( ..,
        HATFInsert,
        HATFOmit
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H265 Alternative Transfer Function
data H265AlternativeTransferFunction
  = H265AlternativeTransferFunction'
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

pattern HATFInsert :: H265AlternativeTransferFunction
pattern HATFInsert = H265AlternativeTransferFunction' "INSERT"

pattern HATFOmit :: H265AlternativeTransferFunction
pattern HATFOmit = H265AlternativeTransferFunction' "OMIT"

{-# COMPLETE
  HATFInsert,
  HATFOmit,
  H265AlternativeTransferFunction'
  #-}

instance FromText H265AlternativeTransferFunction where
  parser = (H265AlternativeTransferFunction' . mk) <$> takeText

instance ToText H265AlternativeTransferFunction where
  toText (H265AlternativeTransferFunction' ci) = original ci

instance Hashable H265AlternativeTransferFunction

instance NFData H265AlternativeTransferFunction

instance ToByteString H265AlternativeTransferFunction

instance ToQuery H265AlternativeTransferFunction

instance ToHeader H265AlternativeTransferFunction

instance ToJSON H265AlternativeTransferFunction where
  toJSON = toJSONText

instance FromJSON H265AlternativeTransferFunction where
  parseJSON = parseJSONText "H265AlternativeTransferFunction"
