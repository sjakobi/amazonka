{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VPCCidrBlockStateCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VPCCidrBlockStateCode
  ( VPCCidrBlockStateCode
      ( ..,
        Associated,
        Associating,
        Disassociated,
        Disassociating,
        Failed,
        Failing
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data VPCCidrBlockStateCode
  = VPCCidrBlockStateCode'
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

pattern Associated :: VPCCidrBlockStateCode
pattern Associated = VPCCidrBlockStateCode' "associated"

pattern Associating :: VPCCidrBlockStateCode
pattern Associating = VPCCidrBlockStateCode' "associating"

pattern Disassociated :: VPCCidrBlockStateCode
pattern Disassociated = VPCCidrBlockStateCode' "disassociated"

pattern Disassociating :: VPCCidrBlockStateCode
pattern Disassociating = VPCCidrBlockStateCode' "disassociating"

pattern Failed :: VPCCidrBlockStateCode
pattern Failed = VPCCidrBlockStateCode' "failed"

pattern Failing :: VPCCidrBlockStateCode
pattern Failing = VPCCidrBlockStateCode' "failing"

{-# COMPLETE
  Associated,
  Associating,
  Disassociated,
  Disassociating,
  Failed,
  Failing,
  VPCCidrBlockStateCode'
  #-}

instance FromText VPCCidrBlockStateCode where
  parser = (VPCCidrBlockStateCode' . mk) <$> takeText

instance ToText VPCCidrBlockStateCode where
  toText (VPCCidrBlockStateCode' ci) = original ci

instance Hashable VPCCidrBlockStateCode

instance NFData VPCCidrBlockStateCode

instance ToByteString VPCCidrBlockStateCode

instance ToQuery VPCCidrBlockStateCode

instance ToHeader VPCCidrBlockStateCode

instance FromXML VPCCidrBlockStateCode where
  parseXML = parseXMLText "VPCCidrBlockStateCode"
