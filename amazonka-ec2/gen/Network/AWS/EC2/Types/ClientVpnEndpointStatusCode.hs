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
-- Module      : Network.AWS.EC2.Types.ClientVpnEndpointStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ClientVpnEndpointStatusCode
  ( ClientVpnEndpointStatusCode
      ( ..,
        ClientVpnEndpointStatusCodeAvailable,
        ClientVpnEndpointStatusCodeDeleted,
        ClientVpnEndpointStatusCodeDeleting,
        ClientVpnEndpointStatusCodePendingAssociate
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ClientVpnEndpointStatusCode = ClientVpnEndpointStatusCode'
  { fromClientVpnEndpointStatusCode ::
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

pattern ClientVpnEndpointStatusCodeAvailable :: ClientVpnEndpointStatusCode
pattern ClientVpnEndpointStatusCodeAvailable = ClientVpnEndpointStatusCode' "available"

pattern ClientVpnEndpointStatusCodeDeleted :: ClientVpnEndpointStatusCode
pattern ClientVpnEndpointStatusCodeDeleted = ClientVpnEndpointStatusCode' "deleted"

pattern ClientVpnEndpointStatusCodeDeleting :: ClientVpnEndpointStatusCode
pattern ClientVpnEndpointStatusCodeDeleting = ClientVpnEndpointStatusCode' "deleting"

pattern ClientVpnEndpointStatusCodePendingAssociate :: ClientVpnEndpointStatusCode
pattern ClientVpnEndpointStatusCodePendingAssociate = ClientVpnEndpointStatusCode' "pending-associate"

{-# COMPLETE
  ClientVpnEndpointStatusCodeAvailable,
  ClientVpnEndpointStatusCodeDeleted,
  ClientVpnEndpointStatusCodeDeleting,
  ClientVpnEndpointStatusCodePendingAssociate,
  ClientVpnEndpointStatusCode'
  #-}

instance Prelude.FromText ClientVpnEndpointStatusCode where
  parser = ClientVpnEndpointStatusCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ClientVpnEndpointStatusCode where
  toText (ClientVpnEndpointStatusCode' x) = x

instance Prelude.Hashable ClientVpnEndpointStatusCode

instance Prelude.NFData ClientVpnEndpointStatusCode

instance Prelude.ToByteString ClientVpnEndpointStatusCode

instance Prelude.ToQuery ClientVpnEndpointStatusCode

instance Prelude.ToHeader ClientVpnEndpointStatusCode

instance Prelude.FromXML ClientVpnEndpointStatusCode where
  parseXML = Prelude.parseXMLText "ClientVpnEndpointStatusCode"
