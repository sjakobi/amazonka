{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.EmbeddedConvert608To708
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.EmbeddedConvert608To708
  ( EmbeddedConvert608To708
      ( ..,
        ECTDisabled,
        ECTUpconvert
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specify whether this set of input captions appears in your outputs in both 608 and 708 format. If you choose Upconvert (UPCONVERT), MediaConvert includes the captions data in two ways: it passes the 608 data through using the 608 compatibility bytes fields of the 708 wrapper, and it also translates the 608 data into 708.
data EmbeddedConvert608To708
  = EmbeddedConvert608To708'
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

pattern ECTDisabled :: EmbeddedConvert608To708
pattern ECTDisabled = EmbeddedConvert608To708' "DISABLED"

pattern ECTUpconvert :: EmbeddedConvert608To708
pattern ECTUpconvert = EmbeddedConvert608To708' "UPCONVERT"

{-# COMPLETE
  ECTDisabled,
  ECTUpconvert,
  EmbeddedConvert608To708'
  #-}

instance FromText EmbeddedConvert608To708 where
  parser = (EmbeddedConvert608To708' . mk) <$> takeText

instance ToText EmbeddedConvert608To708 where
  toText (EmbeddedConvert608To708' ci) = original ci

instance Hashable EmbeddedConvert608To708

instance NFData EmbeddedConvert608To708

instance ToByteString EmbeddedConvert608To708

instance ToQuery EmbeddedConvert608To708

instance ToHeader EmbeddedConvert608To708

instance ToJSON EmbeddedConvert608To708 where
  toJSON = toJSONText

instance FromJSON EmbeddedConvert608To708 where
  parseJSON = parseJSONText "EmbeddedConvert608To708"
