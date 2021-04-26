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
-- Module      : Network.AWS.Organizations.Types.AccountStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.AccountStatus
  ( AccountStatus
      ( ..,
        AccountStatusACTIVE,
        AccountStatusSUSPENDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AccountStatus = AccountStatus'
  { fromAccountStatus ::
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

pattern AccountStatusACTIVE :: AccountStatus
pattern AccountStatusACTIVE = AccountStatus' "ACTIVE"

pattern AccountStatusSUSPENDED :: AccountStatus
pattern AccountStatusSUSPENDED = AccountStatus' "SUSPENDED"

{-# COMPLETE
  AccountStatusACTIVE,
  AccountStatusSUSPENDED,
  AccountStatus'
  #-}

instance Prelude.FromText AccountStatus where
  parser = AccountStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AccountStatus where
  toText (AccountStatus' x) = x

instance Prelude.Hashable AccountStatus

instance Prelude.NFData AccountStatus

instance Prelude.ToByteString AccountStatus

instance Prelude.ToQuery AccountStatus

instance Prelude.ToHeader AccountStatus

instance Prelude.FromJSON AccountStatus where
  parseJSON = Prelude.parseJSONText "AccountStatus"
