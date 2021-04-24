{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.FieldLogLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.FieldLogLevel
  ( FieldLogLevel
      ( ..,
        FLLAll,
        FLLError',
        FLLNone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FieldLogLevel = FieldLogLevel' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern FLLAll :: FieldLogLevel
pattern FLLAll = FieldLogLevel' "ALL"

pattern FLLError' :: FieldLogLevel
pattern FLLError' = FieldLogLevel' "ERROR"

pattern FLLNone :: FieldLogLevel
pattern FLLNone = FieldLogLevel' "NONE"

{-# COMPLETE
  FLLAll,
  FLLError',
  FLLNone,
  FieldLogLevel'
  #-}

instance FromText FieldLogLevel where
  parser = (FieldLogLevel' . mk) <$> takeText

instance ToText FieldLogLevel where
  toText (FieldLogLevel' ci) = original ci

instance Hashable FieldLogLevel

instance NFData FieldLogLevel

instance ToByteString FieldLogLevel

instance ToQuery FieldLogLevel

instance ToHeader FieldLogLevel

instance ToJSON FieldLogLevel where
  toJSON = toJSONText

instance FromJSON FieldLogLevel where
  parseJSON = parseJSONText "FieldLogLevel"
