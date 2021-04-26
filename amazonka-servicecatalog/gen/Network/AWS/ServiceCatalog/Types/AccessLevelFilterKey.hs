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
-- Module      : Network.AWS.ServiceCatalog.Types.AccessLevelFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.AccessLevelFilterKey
  ( AccessLevelFilterKey
      ( ..,
        AccessLevelFilterKeyAccount,
        AccessLevelFilterKeyRole,
        AccessLevelFilterKeyUser
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AccessLevelFilterKey = AccessLevelFilterKey'
  { fromAccessLevelFilterKey ::
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

pattern AccessLevelFilterKeyAccount :: AccessLevelFilterKey
pattern AccessLevelFilterKeyAccount = AccessLevelFilterKey' "Account"

pattern AccessLevelFilterKeyRole :: AccessLevelFilterKey
pattern AccessLevelFilterKeyRole = AccessLevelFilterKey' "Role"

pattern AccessLevelFilterKeyUser :: AccessLevelFilterKey
pattern AccessLevelFilterKeyUser = AccessLevelFilterKey' "User"

{-# COMPLETE
  AccessLevelFilterKeyAccount,
  AccessLevelFilterKeyRole,
  AccessLevelFilterKeyUser,
  AccessLevelFilterKey'
  #-}

instance Prelude.FromText AccessLevelFilterKey where
  parser = AccessLevelFilterKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText AccessLevelFilterKey where
  toText (AccessLevelFilterKey' x) = x

instance Prelude.Hashable AccessLevelFilterKey

instance Prelude.NFData AccessLevelFilterKey

instance Prelude.ToByteString AccessLevelFilterKey

instance Prelude.ToQuery AccessLevelFilterKey

instance Prelude.ToHeader AccessLevelFilterKey

instance Prelude.ToJSON AccessLevelFilterKey where
  toJSON = Prelude.toJSONText
