{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.EbuTtDFillLineGapControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.EbuTtDFillLineGapControl
  ( EbuTtDFillLineGapControl
      ( ..,
        ETDFLGCDisabled,
        ETDFLGCEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Ebu Tt DFill Line Gap Control
data EbuTtDFillLineGapControl
  = EbuTtDFillLineGapControl'
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

pattern ETDFLGCDisabled :: EbuTtDFillLineGapControl
pattern ETDFLGCDisabled = EbuTtDFillLineGapControl' "DISABLED"

pattern ETDFLGCEnabled :: EbuTtDFillLineGapControl
pattern ETDFLGCEnabled = EbuTtDFillLineGapControl' "ENABLED"

{-# COMPLETE
  ETDFLGCDisabled,
  ETDFLGCEnabled,
  EbuTtDFillLineGapControl'
  #-}

instance FromText EbuTtDFillLineGapControl where
  parser = (EbuTtDFillLineGapControl' . mk) <$> takeText

instance ToText EbuTtDFillLineGapControl where
  toText (EbuTtDFillLineGapControl' ci) = original ci

instance Hashable EbuTtDFillLineGapControl

instance NFData EbuTtDFillLineGapControl

instance ToByteString EbuTtDFillLineGapControl

instance ToQuery EbuTtDFillLineGapControl

instance ToHeader EbuTtDFillLineGapControl

instance ToJSON EbuTtDFillLineGapControl where
  toJSON = toJSONText

instance FromJSON EbuTtDFillLineGapControl where
  parseJSON = parseJSONText "EbuTtDFillLineGapControl"
