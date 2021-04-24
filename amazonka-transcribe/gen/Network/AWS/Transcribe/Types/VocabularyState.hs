{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.VocabularyState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.VocabularyState
  ( VocabularyState
      ( ..,
        VSFailed,
        VSPending,
        VSReady
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data VocabularyState = VocabularyState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern VSFailed :: VocabularyState
pattern VSFailed = VocabularyState' "FAILED"

pattern VSPending :: VocabularyState
pattern VSPending = VocabularyState' "PENDING"

pattern VSReady :: VocabularyState
pattern VSReady = VocabularyState' "READY"

{-# COMPLETE
  VSFailed,
  VSPending,
  VSReady,
  VocabularyState'
  #-}

instance FromText VocabularyState where
  parser = (VocabularyState' . mk) <$> takeText

instance ToText VocabularyState where
  toText (VocabularyState' ci) = original ci

instance Hashable VocabularyState

instance NFData VocabularyState

instance ToByteString VocabularyState

instance ToQuery VocabularyState

instance ToHeader VocabularyState

instance ToJSON VocabularyState where
  toJSON = toJSONText

instance FromJSON VocabularyState where
  parseJSON = parseJSONText "VocabularyState"
