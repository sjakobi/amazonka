{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.ConnectionAliasState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.ConnectionAliasState
  ( ConnectionAliasState
      ( ..,
        Created,
        Creating,
        Deleting
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConnectionAliasState
  = ConnectionAliasState'
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

pattern Created :: ConnectionAliasState
pattern Created = ConnectionAliasState' "CREATED"

pattern Creating :: ConnectionAliasState
pattern Creating = ConnectionAliasState' "CREATING"

pattern Deleting :: ConnectionAliasState
pattern Deleting = ConnectionAliasState' "DELETING"

{-# COMPLETE
  Created,
  Creating,
  Deleting,
  ConnectionAliasState'
  #-}

instance FromText ConnectionAliasState where
  parser = (ConnectionAliasState' . mk) <$> takeText

instance ToText ConnectionAliasState where
  toText (ConnectionAliasState' ci) = original ci

instance Hashable ConnectionAliasState

instance NFData ConnectionAliasState

instance ToByteString ConnectionAliasState

instance ToQuery ConnectionAliasState

instance ToHeader ConnectionAliasState

instance FromJSON ConnectionAliasState where
  parseJSON = parseJSONText "ConnectionAliasState"
