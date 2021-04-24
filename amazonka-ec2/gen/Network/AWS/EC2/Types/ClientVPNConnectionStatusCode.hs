{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ClientVPNConnectionStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ClientVPNConnectionStatusCode
  ( ClientVPNConnectionStatusCode
      ( ..,
        CVCSCActive,
        CVCSCFailedToTerminate,
        CVCSCTerminated,
        CVCSCTerminating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ClientVPNConnectionStatusCode
  = ClientVPNConnectionStatusCode'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CVCSCActive :: ClientVPNConnectionStatusCode
pattern CVCSCActive = ClientVPNConnectionStatusCode' "active"

pattern CVCSCFailedToTerminate :: ClientVPNConnectionStatusCode
pattern CVCSCFailedToTerminate = ClientVPNConnectionStatusCode' "failed-to-terminate"

pattern CVCSCTerminated :: ClientVPNConnectionStatusCode
pattern CVCSCTerminated = ClientVPNConnectionStatusCode' "terminated"

pattern CVCSCTerminating :: ClientVPNConnectionStatusCode
pattern CVCSCTerminating = ClientVPNConnectionStatusCode' "terminating"

{-# COMPLETE
  CVCSCActive,
  CVCSCFailedToTerminate,
  CVCSCTerminated,
  CVCSCTerminating,
  ClientVPNConnectionStatusCode'
  #-}

instance FromText ClientVPNConnectionStatusCode where
  parser = (ClientVPNConnectionStatusCode' . mk) <$> takeText

instance ToText ClientVPNConnectionStatusCode where
  toText (ClientVPNConnectionStatusCode' ci) = original ci

instance Hashable ClientVPNConnectionStatusCode

instance NFData ClientVPNConnectionStatusCode

instance ToByteString ClientVPNConnectionStatusCode

instance ToQuery ClientVPNConnectionStatusCode

instance ToHeader ClientVPNConnectionStatusCode

instance FromXML ClientVPNConnectionStatusCode where
  parseXML = parseXMLText "ClientVPNConnectionStatusCode"
