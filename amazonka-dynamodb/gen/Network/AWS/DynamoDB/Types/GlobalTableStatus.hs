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
-- Module      : Network.AWS.DynamoDB.Types.GlobalTableStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.GlobalTableStatus
  ( GlobalTableStatus
      ( ..,
        GlobalTableStatusACTIVE,
        GlobalTableStatusCREATING,
        GlobalTableStatusDELETING,
        GlobalTableStatusUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GlobalTableStatus = GlobalTableStatus'
  { fromGlobalTableStatus ::
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

pattern GlobalTableStatusACTIVE :: GlobalTableStatus
pattern GlobalTableStatusACTIVE = GlobalTableStatus' "ACTIVE"

pattern GlobalTableStatusCREATING :: GlobalTableStatus
pattern GlobalTableStatusCREATING = GlobalTableStatus' "CREATING"

pattern GlobalTableStatusDELETING :: GlobalTableStatus
pattern GlobalTableStatusDELETING = GlobalTableStatus' "DELETING"

pattern GlobalTableStatusUPDATING :: GlobalTableStatus
pattern GlobalTableStatusUPDATING = GlobalTableStatus' "UPDATING"

{-# COMPLETE
  GlobalTableStatusACTIVE,
  GlobalTableStatusCREATING,
  GlobalTableStatusDELETING,
  GlobalTableStatusUPDATING,
  GlobalTableStatus'
  #-}

instance Prelude.FromText GlobalTableStatus where
  parser = GlobalTableStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText GlobalTableStatus where
  toText (GlobalTableStatus' x) = x

instance Prelude.Hashable GlobalTableStatus

instance Prelude.NFData GlobalTableStatus

instance Prelude.ToByteString GlobalTableStatus

instance Prelude.ToQuery GlobalTableStatus

instance Prelude.ToHeader GlobalTableStatus

instance Prelude.FromJSON GlobalTableStatus where
  parseJSON = Prelude.parseJSONText "GlobalTableStatus"
