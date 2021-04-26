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
-- Module      : Network.AWS.ElastiCache.Types.ServiceUpdateType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.ServiceUpdateType
  ( ServiceUpdateType
      ( ..,
        ServiceUpdateTypeSecurityUpdate
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ServiceUpdateType = ServiceUpdateType'
  { fromServiceUpdateType ::
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

pattern ServiceUpdateTypeSecurityUpdate :: ServiceUpdateType
pattern ServiceUpdateTypeSecurityUpdate = ServiceUpdateType' "security-update"

{-# COMPLETE
  ServiceUpdateTypeSecurityUpdate,
  ServiceUpdateType'
  #-}

instance Prelude.FromText ServiceUpdateType where
  parser = ServiceUpdateType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ServiceUpdateType where
  toText (ServiceUpdateType' x) = x

instance Prelude.Hashable ServiceUpdateType

instance Prelude.NFData ServiceUpdateType

instance Prelude.ToByteString ServiceUpdateType

instance Prelude.ToQuery ServiceUpdateType

instance Prelude.ToHeader ServiceUpdateType

instance Prelude.FromXML ServiceUpdateType where
  parseXML = Prelude.parseXMLText "ServiceUpdateType"
