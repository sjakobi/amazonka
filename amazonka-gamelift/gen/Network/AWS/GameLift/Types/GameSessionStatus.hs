{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.GameSessionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.GameSessionStatus
  ( GameSessionStatus
      ( ..,
        GSSActivating,
        GSSActive,
        GSSError',
        GSSTerminated,
        GSSTerminating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GameSessionStatus = GameSessionStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern GSSActivating :: GameSessionStatus
pattern GSSActivating = GameSessionStatus' "ACTIVATING"

pattern GSSActive :: GameSessionStatus
pattern GSSActive = GameSessionStatus' "ACTIVE"

pattern GSSError' :: GameSessionStatus
pattern GSSError' = GameSessionStatus' "ERROR"

pattern GSSTerminated :: GameSessionStatus
pattern GSSTerminated = GameSessionStatus' "TERMINATED"

pattern GSSTerminating :: GameSessionStatus
pattern GSSTerminating = GameSessionStatus' "TERMINATING"

{-# COMPLETE
  GSSActivating,
  GSSActive,
  GSSError',
  GSSTerminated,
  GSSTerminating,
  GameSessionStatus'
  #-}

instance FromText GameSessionStatus where
  parser = (GameSessionStatus' . mk) <$> takeText

instance ToText GameSessionStatus where
  toText (GameSessionStatus' ci) = original ci

instance Hashable GameSessionStatus

instance NFData GameSessionStatus

instance ToByteString GameSessionStatus

instance ToQuery GameSessionStatus

instance ToHeader GameSessionStatus

instance FromJSON GameSessionStatus where
  parseJSON = parseJSONText "GameSessionStatus"
