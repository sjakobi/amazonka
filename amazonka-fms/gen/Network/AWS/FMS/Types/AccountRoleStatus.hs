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
-- Module      : Network.AWS.FMS.Types.AccountRoleStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.AccountRoleStatus
  ( AccountRoleStatus
      ( ..,
        AccountRoleStatusCREATING,
        AccountRoleStatusDELETED,
        AccountRoleStatusDELETING,
        AccountRoleStatusPENDINGDELETION,
        AccountRoleStatusREADY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AccountRoleStatus = AccountRoleStatus'
  { fromAccountRoleStatus ::
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

pattern AccountRoleStatusCREATING :: AccountRoleStatus
pattern AccountRoleStatusCREATING = AccountRoleStatus' "CREATING"

pattern AccountRoleStatusDELETED :: AccountRoleStatus
pattern AccountRoleStatusDELETED = AccountRoleStatus' "DELETED"

pattern AccountRoleStatusDELETING :: AccountRoleStatus
pattern AccountRoleStatusDELETING = AccountRoleStatus' "DELETING"

pattern AccountRoleStatusPENDINGDELETION :: AccountRoleStatus
pattern AccountRoleStatusPENDINGDELETION = AccountRoleStatus' "PENDING_DELETION"

pattern AccountRoleStatusREADY :: AccountRoleStatus
pattern AccountRoleStatusREADY = AccountRoleStatus' "READY"

{-# COMPLETE
  AccountRoleStatusCREATING,
  AccountRoleStatusDELETED,
  AccountRoleStatusDELETING,
  AccountRoleStatusPENDINGDELETION,
  AccountRoleStatusREADY,
  AccountRoleStatus'
  #-}

instance Prelude.FromText AccountRoleStatus where
  parser = AccountRoleStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AccountRoleStatus where
  toText (AccountRoleStatus' x) = x

instance Prelude.Hashable AccountRoleStatus

instance Prelude.NFData AccountRoleStatus

instance Prelude.ToByteString AccountRoleStatus

instance Prelude.ToQuery AccountRoleStatus

instance Prelude.ToHeader AccountRoleStatus

instance Prelude.FromJSON AccountRoleStatus where
  parseJSON = Prelude.parseJSONText "AccountRoleStatus"
