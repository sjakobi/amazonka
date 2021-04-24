{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.SubnetCidrBlockStateCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SubnetCidrBlockStateCode
  ( SubnetCidrBlockStateCode
      ( ..,
        SCBSCAssociated,
        SCBSCAssociating,
        SCBSCDisassociated,
        SCBSCDisassociating,
        SCBSCFailed,
        SCBSCFailing
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data SubnetCidrBlockStateCode
  = SubnetCidrBlockStateCode'
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

pattern SCBSCAssociated :: SubnetCidrBlockStateCode
pattern SCBSCAssociated = SubnetCidrBlockStateCode' "associated"

pattern SCBSCAssociating :: SubnetCidrBlockStateCode
pattern SCBSCAssociating = SubnetCidrBlockStateCode' "associating"

pattern SCBSCDisassociated :: SubnetCidrBlockStateCode
pattern SCBSCDisassociated = SubnetCidrBlockStateCode' "disassociated"

pattern SCBSCDisassociating :: SubnetCidrBlockStateCode
pattern SCBSCDisassociating = SubnetCidrBlockStateCode' "disassociating"

pattern SCBSCFailed :: SubnetCidrBlockStateCode
pattern SCBSCFailed = SubnetCidrBlockStateCode' "failed"

pattern SCBSCFailing :: SubnetCidrBlockStateCode
pattern SCBSCFailing = SubnetCidrBlockStateCode' "failing"

{-# COMPLETE
  SCBSCAssociated,
  SCBSCAssociating,
  SCBSCDisassociated,
  SCBSCDisassociating,
  SCBSCFailed,
  SCBSCFailing,
  SubnetCidrBlockStateCode'
  #-}

instance FromText SubnetCidrBlockStateCode where
  parser = (SubnetCidrBlockStateCode' . mk) <$> takeText

instance ToText SubnetCidrBlockStateCode where
  toText (SubnetCidrBlockStateCode' ci) = original ci

instance Hashable SubnetCidrBlockStateCode

instance NFData SubnetCidrBlockStateCode

instance ToByteString SubnetCidrBlockStateCode

instance ToQuery SubnetCidrBlockStateCode

instance ToHeader SubnetCidrBlockStateCode

instance FromXML SubnetCidrBlockStateCode where
  parseXML = parseXMLText "SubnetCidrBlockStateCode"
