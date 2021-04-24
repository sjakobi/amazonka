{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.EmbeddedConvert608To708
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.EmbeddedConvert608To708
  ( EmbeddedConvert608To708
      ( ..,
        ECTDisabled,
        ECTUpconvert
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Embedded Convert608 To708
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
