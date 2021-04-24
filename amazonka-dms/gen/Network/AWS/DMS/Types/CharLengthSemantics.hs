{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.CharLengthSemantics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.CharLengthSemantics
  ( CharLengthSemantics
      ( ..,
        CLSByte,
        CLSChar,
        CLSDefault
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CharLengthSemantics
  = CharLengthSemantics'
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

pattern CLSByte :: CharLengthSemantics
pattern CLSByte = CharLengthSemantics' "byte"

pattern CLSChar :: CharLengthSemantics
pattern CLSChar = CharLengthSemantics' "char"

pattern CLSDefault :: CharLengthSemantics
pattern CLSDefault = CharLengthSemantics' "default"

{-# COMPLETE
  CLSByte,
  CLSChar,
  CLSDefault,
  CharLengthSemantics'
  #-}

instance FromText CharLengthSemantics where
  parser = (CharLengthSemantics' . mk) <$> takeText

instance ToText CharLengthSemantics where
  toText (CharLengthSemantics' ci) = original ci

instance Hashable CharLengthSemantics

instance NFData CharLengthSemantics

instance ToByteString CharLengthSemantics

instance ToQuery CharLengthSemantics

instance ToHeader CharLengthSemantics

instance ToJSON CharLengthSemantics where
  toJSON = toJSONText

instance FromJSON CharLengthSemantics where
  parseJSON = parseJSONText "CharLengthSemantics"
