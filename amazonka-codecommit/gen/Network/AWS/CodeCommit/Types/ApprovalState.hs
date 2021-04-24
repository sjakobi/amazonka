{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.ApprovalState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.ApprovalState
  ( ApprovalState
      ( ..,
        Approve,
        Revoke
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ApprovalState = ApprovalState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Approve :: ApprovalState
pattern Approve = ApprovalState' "APPROVE"

pattern Revoke :: ApprovalState
pattern Revoke = ApprovalState' "REVOKE"

{-# COMPLETE
  Approve,
  Revoke,
  ApprovalState'
  #-}

instance FromText ApprovalState where
  parser = (ApprovalState' . mk) <$> takeText

instance ToText ApprovalState where
  toText (ApprovalState' ci) = original ci

instance Hashable ApprovalState

instance NFData ApprovalState

instance ToByteString ApprovalState

instance ToQuery ApprovalState

instance ToHeader ApprovalState

instance ToJSON ApprovalState where
  toJSON = toJSONText

instance FromJSON ApprovalState where
  parseJSON = parseJSONText "ApprovalState"
