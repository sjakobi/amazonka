{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.ExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.ExecutionStatus
  ( ExecutionStatus
      ( ..,
        Closed,
        Open
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExecutionStatus = ExecutionStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Closed :: ExecutionStatus
pattern Closed = ExecutionStatus' "CLOSED"

pattern Open :: ExecutionStatus
pattern Open = ExecutionStatus' "OPEN"

{-# COMPLETE
  Closed,
  Open,
  ExecutionStatus'
  #-}

instance FromText ExecutionStatus where
  parser = (ExecutionStatus' . mk) <$> takeText

instance ToText ExecutionStatus where
  toText (ExecutionStatus' ci) = original ci

instance Hashable ExecutionStatus

instance NFData ExecutionStatus

instance ToByteString ExecutionStatus

instance ToQuery ExecutionStatus

instance ToHeader ExecutionStatus

instance FromJSON ExecutionStatus where
  parseJSON = parseJSONText "ExecutionStatus"
