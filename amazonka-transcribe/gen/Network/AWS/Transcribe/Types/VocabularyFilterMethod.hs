{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.VocabularyFilterMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.VocabularyFilterMethod
  ( VocabularyFilterMethod
      ( ..,
        Mask,
        Remove
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data VocabularyFilterMethod
  = VocabularyFilterMethod'
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

pattern Mask :: VocabularyFilterMethod
pattern Mask = VocabularyFilterMethod' "mask"

pattern Remove :: VocabularyFilterMethod
pattern Remove = VocabularyFilterMethod' "remove"

{-# COMPLETE
  Mask,
  Remove,
  VocabularyFilterMethod'
  #-}

instance FromText VocabularyFilterMethod where
  parser = (VocabularyFilterMethod' . mk) <$> takeText

instance ToText VocabularyFilterMethod where
  toText (VocabularyFilterMethod' ci) = original ci

instance Hashable VocabularyFilterMethod

instance NFData VocabularyFilterMethod

instance ToByteString VocabularyFilterMethod

instance ToQuery VocabularyFilterMethod

instance ToHeader VocabularyFilterMethod

instance ToJSON VocabularyFilterMethod where
  toJSON = toJSONText

instance FromJSON VocabularyFilterMethod where
  parseJSON = parseJSONText "VocabularyFilterMethod"
