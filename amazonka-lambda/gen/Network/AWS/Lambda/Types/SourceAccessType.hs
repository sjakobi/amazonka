{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.SourceAccessType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.SourceAccessType
  ( SourceAccessType
      ( ..,
        BasicAuth,
        SaslScram256Auth,
        SaslScram512Auth,
        VPCSecurityGroup,
        VPCSubnet
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SourceAccessType = SourceAccessType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern BasicAuth :: SourceAccessType
pattern BasicAuth = SourceAccessType' "BASIC_AUTH"

pattern SaslScram256Auth :: SourceAccessType
pattern SaslScram256Auth = SourceAccessType' "SASL_SCRAM_256_AUTH"

pattern SaslScram512Auth :: SourceAccessType
pattern SaslScram512Auth = SourceAccessType' "SASL_SCRAM_512_AUTH"

pattern VPCSecurityGroup :: SourceAccessType
pattern VPCSecurityGroup = SourceAccessType' "VPC_SECURITY_GROUP"

pattern VPCSubnet :: SourceAccessType
pattern VPCSubnet = SourceAccessType' "VPC_SUBNET"

{-# COMPLETE
  BasicAuth,
  SaslScram256Auth,
  SaslScram512Auth,
  VPCSecurityGroup,
  VPCSubnet,
  SourceAccessType'
  #-}

instance FromText SourceAccessType where
  parser = (SourceAccessType' . mk) <$> takeText

instance ToText SourceAccessType where
  toText (SourceAccessType' ci) = original ci

instance Hashable SourceAccessType

instance NFData SourceAccessType

instance ToByteString SourceAccessType

instance ToQuery SourceAccessType

instance ToHeader SourceAccessType

instance ToJSON SourceAccessType where
  toJSON = toJSONText

instance FromJSON SourceAccessType where
  parseJSON = parseJSONText "SourceAccessType"
