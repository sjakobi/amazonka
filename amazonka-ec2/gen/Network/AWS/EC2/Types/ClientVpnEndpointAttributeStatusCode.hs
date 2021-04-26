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
-- Module      : Network.AWS.EC2.Types.ClientVpnEndpointAttributeStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ClientVpnEndpointAttributeStatusCode
  ( ClientVpnEndpointAttributeStatusCode
      ( ..,
        ClientVpnEndpointAttributeStatusCodeApplied,
        ClientVpnEndpointAttributeStatusCodeApplying
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ClientVpnEndpointAttributeStatusCode = ClientVpnEndpointAttributeStatusCode'
  { fromClientVpnEndpointAttributeStatusCode ::
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

pattern ClientVpnEndpointAttributeStatusCodeApplied :: ClientVpnEndpointAttributeStatusCode
pattern ClientVpnEndpointAttributeStatusCodeApplied = ClientVpnEndpointAttributeStatusCode' "applied"

pattern ClientVpnEndpointAttributeStatusCodeApplying :: ClientVpnEndpointAttributeStatusCode
pattern ClientVpnEndpointAttributeStatusCodeApplying = ClientVpnEndpointAttributeStatusCode' "applying"

{-# COMPLETE
  ClientVpnEndpointAttributeStatusCodeApplied,
  ClientVpnEndpointAttributeStatusCodeApplying,
  ClientVpnEndpointAttributeStatusCode'
  #-}

instance Prelude.FromText ClientVpnEndpointAttributeStatusCode where
  parser = ClientVpnEndpointAttributeStatusCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ClientVpnEndpointAttributeStatusCode where
  toText (ClientVpnEndpointAttributeStatusCode' x) = x

instance Prelude.Hashable ClientVpnEndpointAttributeStatusCode

instance Prelude.NFData ClientVpnEndpointAttributeStatusCode

instance Prelude.ToByteString ClientVpnEndpointAttributeStatusCode

instance Prelude.ToQuery ClientVpnEndpointAttributeStatusCode

instance Prelude.ToHeader ClientVpnEndpointAttributeStatusCode

instance Prelude.FromXML ClientVpnEndpointAttributeStatusCode where
  parseXML = Prelude.parseXMLText "ClientVpnEndpointAttributeStatusCode"
