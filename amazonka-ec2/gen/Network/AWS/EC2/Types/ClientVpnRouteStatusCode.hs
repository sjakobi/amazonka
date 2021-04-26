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
-- Module      : Network.AWS.EC2.Types.ClientVpnRouteStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ClientVpnRouteStatusCode
  ( ClientVpnRouteStatusCode
      ( ..,
        ClientVpnRouteStatusCodeActive,
        ClientVpnRouteStatusCodeCreating,
        ClientVpnRouteStatusCodeDeleting,
        ClientVpnRouteStatusCodeFailed
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ClientVpnRouteStatusCode = ClientVpnRouteStatusCode'
  { fromClientVpnRouteStatusCode ::
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

pattern ClientVpnRouteStatusCodeActive :: ClientVpnRouteStatusCode
pattern ClientVpnRouteStatusCodeActive = ClientVpnRouteStatusCode' "active"

pattern ClientVpnRouteStatusCodeCreating :: ClientVpnRouteStatusCode
pattern ClientVpnRouteStatusCodeCreating = ClientVpnRouteStatusCode' "creating"

pattern ClientVpnRouteStatusCodeDeleting :: ClientVpnRouteStatusCode
pattern ClientVpnRouteStatusCodeDeleting = ClientVpnRouteStatusCode' "deleting"

pattern ClientVpnRouteStatusCodeFailed :: ClientVpnRouteStatusCode
pattern ClientVpnRouteStatusCodeFailed = ClientVpnRouteStatusCode' "failed"

{-# COMPLETE
  ClientVpnRouteStatusCodeActive,
  ClientVpnRouteStatusCodeCreating,
  ClientVpnRouteStatusCodeDeleting,
  ClientVpnRouteStatusCodeFailed,
  ClientVpnRouteStatusCode'
  #-}

instance Prelude.FromText ClientVpnRouteStatusCode where
  parser = ClientVpnRouteStatusCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ClientVpnRouteStatusCode where
  toText (ClientVpnRouteStatusCode' x) = x

instance Prelude.Hashable ClientVpnRouteStatusCode

instance Prelude.NFData ClientVpnRouteStatusCode

instance Prelude.ToByteString ClientVpnRouteStatusCode

instance Prelude.ToQuery ClientVpnRouteStatusCode

instance Prelude.ToHeader ClientVpnRouteStatusCode

instance Prelude.FromXML ClientVpnRouteStatusCode where
  parseXML = Prelude.parseXMLText "ClientVpnRouteStatusCode"
