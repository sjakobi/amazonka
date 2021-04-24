{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.Types.LexStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.LexStatus
  ( LexStatus
      ( ..,
        Building,
        Failed,
        NotBuilt,
        Ready,
        ReadyBasicTesting
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LexStatus = LexStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Building :: LexStatus
pattern Building = LexStatus' "BUILDING"

pattern Failed :: LexStatus
pattern Failed = LexStatus' "FAILED"

pattern NotBuilt :: LexStatus
pattern NotBuilt = LexStatus' "NOT_BUILT"

pattern Ready :: LexStatus
pattern Ready = LexStatus' "READY"

pattern ReadyBasicTesting :: LexStatus
pattern ReadyBasicTesting = LexStatus' "READY_BASIC_TESTING"

{-# COMPLETE
  Building,
  Failed,
  NotBuilt,
  Ready,
  ReadyBasicTesting,
  LexStatus'
  #-}

instance FromText LexStatus where
  parser = (LexStatus' . mk) <$> takeText

instance ToText LexStatus where
  toText (LexStatus' ci) = original ci

instance Hashable LexStatus

instance NFData LexStatus

instance ToByteString LexStatus

instance ToQuery LexStatus

instance ToHeader LexStatus

instance FromJSON LexStatus where
  parseJSON = parseJSONText "LexStatus"
