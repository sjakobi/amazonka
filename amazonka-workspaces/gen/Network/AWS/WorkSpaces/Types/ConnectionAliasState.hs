{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        ConnectionAliasStateCREATED,
        ConnectionAliasStateCREATING,
        ConnectionAliasStateDELETING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConnectionAliasState = ConnectionAliasState'
  { fromConnectionAliasState ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ConnectionAliasStateCREATED :: ConnectionAliasState
pattern ConnectionAliasStateCREATED = ConnectionAliasState' "CREATED"

pattern ConnectionAliasStateCREATING :: ConnectionAliasState
pattern ConnectionAliasStateCREATING = ConnectionAliasState' "CREATING"

pattern ConnectionAliasStateDELETING :: ConnectionAliasState
pattern ConnectionAliasStateDELETING = ConnectionAliasState' "DELETING"

{-# COMPLETE
  ConnectionAliasStateCREATED,
  ConnectionAliasStateCREATING,
  ConnectionAliasStateDELETING,
  ConnectionAliasState'
  #-}

instance Prelude.FromText ConnectionAliasState where
  parser = ConnectionAliasState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConnectionAliasState where
  toText (ConnectionAliasState' x) = x

instance Prelude.Hashable ConnectionAliasState

instance Prelude.NFData ConnectionAliasState

instance Prelude.ToByteString ConnectionAliasState

instance Prelude.ToQuery ConnectionAliasState

instance Prelude.ToHeader ConnectionAliasState

instance Prelude.FromJSON ConnectionAliasState where
  parseJSON = Prelude.parseJSONText "ConnectionAliasState"
