{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ClientVPNEndpointAttributeStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ClientVPNEndpointAttributeStatusCode
  ( ClientVPNEndpointAttributeStatusCode
      ( ..,
        Applied,
        Applying
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ClientVPNEndpointAttributeStatusCode
  = ClientVPNEndpointAttributeStatusCode'
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

pattern Applied :: ClientVPNEndpointAttributeStatusCode
pattern Applied = ClientVPNEndpointAttributeStatusCode' "applied"

pattern Applying :: ClientVPNEndpointAttributeStatusCode
pattern Applying = ClientVPNEndpointAttributeStatusCode' "applying"

{-# COMPLETE
  Applied,
  Applying,
  ClientVPNEndpointAttributeStatusCode'
  #-}

instance FromText ClientVPNEndpointAttributeStatusCode where
  parser = (ClientVPNEndpointAttributeStatusCode' . mk) <$> takeText

instance ToText ClientVPNEndpointAttributeStatusCode where
  toText (ClientVPNEndpointAttributeStatusCode' ci) = original ci

instance Hashable ClientVPNEndpointAttributeStatusCode

instance NFData ClientVPNEndpointAttributeStatusCode

instance ToByteString ClientVPNEndpointAttributeStatusCode

instance ToQuery ClientVPNEndpointAttributeStatusCode

instance ToHeader ClientVPNEndpointAttributeStatusCode

instance FromXML ClientVPNEndpointAttributeStatusCode where
  parseXML = parseXMLText "ClientVPNEndpointAttributeStatusCode"
