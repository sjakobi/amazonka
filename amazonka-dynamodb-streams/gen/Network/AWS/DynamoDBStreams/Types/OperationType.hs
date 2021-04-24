{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDBStreams.Types.OperationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDBStreams.Types.OperationType
  ( OperationType
      ( ..,
        Insert,
        Modify,
        Remove
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OperationType = OperationType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Insert :: OperationType
pattern Insert = OperationType' "INSERT"

pattern Modify :: OperationType
pattern Modify = OperationType' "MODIFY"

pattern Remove :: OperationType
pattern Remove = OperationType' "REMOVE"

{-# COMPLETE
  Insert,
  Modify,
  Remove,
  OperationType'
  #-}

instance FromText OperationType where
  parser = (OperationType' . mk) <$> takeText

instance ToText OperationType where
  toText (OperationType' ci) = original ci

instance Hashable OperationType

instance NFData OperationType

instance ToByteString OperationType

instance ToQuery OperationType

instance ToHeader OperationType

instance FromJSON OperationType where
  parseJSON = parseJSONText "OperationType"
