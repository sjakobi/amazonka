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
-- Module      : Network.AWS.EC2.Types.ClientVpnConnectionStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ClientVpnConnectionStatusCode
  ( ClientVpnConnectionStatusCode
      ( ..,
        ClientVpnConnectionStatusCodeActive,
        ClientVpnConnectionStatusCodeFailedToTerminate,
        ClientVpnConnectionStatusCodeTerminated,
        ClientVpnConnectionStatusCodeTerminating
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ClientVpnConnectionStatusCode = ClientVpnConnectionStatusCode'
  { fromClientVpnConnectionStatusCode ::
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

pattern ClientVpnConnectionStatusCodeActive :: ClientVpnConnectionStatusCode
pattern ClientVpnConnectionStatusCodeActive = ClientVpnConnectionStatusCode' "active"

pattern ClientVpnConnectionStatusCodeFailedToTerminate :: ClientVpnConnectionStatusCode
pattern ClientVpnConnectionStatusCodeFailedToTerminate = ClientVpnConnectionStatusCode' "failed-to-terminate"

pattern ClientVpnConnectionStatusCodeTerminated :: ClientVpnConnectionStatusCode
pattern ClientVpnConnectionStatusCodeTerminated = ClientVpnConnectionStatusCode' "terminated"

pattern ClientVpnConnectionStatusCodeTerminating :: ClientVpnConnectionStatusCode
pattern ClientVpnConnectionStatusCodeTerminating = ClientVpnConnectionStatusCode' "terminating"

{-# COMPLETE
  ClientVpnConnectionStatusCodeActive,
  ClientVpnConnectionStatusCodeFailedToTerminate,
  ClientVpnConnectionStatusCodeTerminated,
  ClientVpnConnectionStatusCodeTerminating,
  ClientVpnConnectionStatusCode'
  #-}

instance Prelude.FromText ClientVpnConnectionStatusCode where
  parser = ClientVpnConnectionStatusCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ClientVpnConnectionStatusCode where
  toText (ClientVpnConnectionStatusCode' x) = x

instance Prelude.Hashable ClientVpnConnectionStatusCode

instance Prelude.NFData ClientVpnConnectionStatusCode

instance Prelude.ToByteString ClientVpnConnectionStatusCode

instance Prelude.ToQuery ClientVpnConnectionStatusCode

instance Prelude.ToHeader ClientVpnConnectionStatusCode

instance Prelude.FromXML ClientVpnConnectionStatusCode where
  parseXML = Prelude.parseXMLText "ClientVpnConnectionStatusCode"
