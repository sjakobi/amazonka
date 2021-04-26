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
-- Module      : Network.AWS.ElastiCache.Types.AuthTokenUpdateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.AuthTokenUpdateStatus
  ( AuthTokenUpdateStatus
      ( ..,
        AuthTokenUpdateStatusROTATING,
        AuthTokenUpdateStatusSETTING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuthTokenUpdateStatus = AuthTokenUpdateStatus'
  { fromAuthTokenUpdateStatus ::
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

pattern AuthTokenUpdateStatusROTATING :: AuthTokenUpdateStatus
pattern AuthTokenUpdateStatusROTATING = AuthTokenUpdateStatus' "ROTATING"

pattern AuthTokenUpdateStatusSETTING :: AuthTokenUpdateStatus
pattern AuthTokenUpdateStatusSETTING = AuthTokenUpdateStatus' "SETTING"

{-# COMPLETE
  AuthTokenUpdateStatusROTATING,
  AuthTokenUpdateStatusSETTING,
  AuthTokenUpdateStatus'
  #-}

instance Prelude.FromText AuthTokenUpdateStatus where
  parser = AuthTokenUpdateStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuthTokenUpdateStatus where
  toText (AuthTokenUpdateStatus' x) = x

instance Prelude.Hashable AuthTokenUpdateStatus

instance Prelude.NFData AuthTokenUpdateStatus

instance Prelude.ToByteString AuthTokenUpdateStatus

instance Prelude.ToQuery AuthTokenUpdateStatus

instance Prelude.ToHeader AuthTokenUpdateStatus

instance Prelude.FromXML AuthTokenUpdateStatus where
  parseXML = Prelude.parseXMLText "AuthTokenUpdateStatus"
