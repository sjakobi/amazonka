{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Organizations.Types.CreateAccountState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.CreateAccountState
  ( CreateAccountState
      ( ..,
        Failed,
        InProgress,
        Succeeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CreateAccountState
  = CreateAccountState'
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

pattern Failed :: CreateAccountState
pattern Failed = CreateAccountState' "FAILED"

pattern InProgress :: CreateAccountState
pattern InProgress = CreateAccountState' "IN_PROGRESS"

pattern Succeeded :: CreateAccountState
pattern Succeeded = CreateAccountState' "SUCCEEDED"

{-# COMPLETE
  Failed,
  InProgress,
  Succeeded,
  CreateAccountState'
  #-}

instance FromText CreateAccountState where
  parser = (CreateAccountState' . mk) <$> takeText

instance ToText CreateAccountState where
  toText (CreateAccountState' ci) = original ci

instance Hashable CreateAccountState

instance NFData CreateAccountState

instance ToByteString CreateAccountState

instance ToQuery CreateAccountState

instance ToHeader CreateAccountState

instance ToJSON CreateAccountState where
  toJSON = toJSONText

instance FromJSON CreateAccountState where
  parseJSON = parseJSONText "CreateAccountState"
