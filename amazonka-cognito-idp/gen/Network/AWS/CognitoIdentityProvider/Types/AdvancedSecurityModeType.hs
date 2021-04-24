{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.AdvancedSecurityModeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.AdvancedSecurityModeType
  ( AdvancedSecurityModeType
      ( ..,
        ASMTAudit,
        ASMTEnforced,
        ASMTOff
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AdvancedSecurityModeType
  = AdvancedSecurityModeType'
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

pattern ASMTAudit :: AdvancedSecurityModeType
pattern ASMTAudit = AdvancedSecurityModeType' "AUDIT"

pattern ASMTEnforced :: AdvancedSecurityModeType
pattern ASMTEnforced = AdvancedSecurityModeType' "ENFORCED"

pattern ASMTOff :: AdvancedSecurityModeType
pattern ASMTOff = AdvancedSecurityModeType' "OFF"

{-# COMPLETE
  ASMTAudit,
  ASMTEnforced,
  ASMTOff,
  AdvancedSecurityModeType'
  #-}

instance FromText AdvancedSecurityModeType where
  parser = (AdvancedSecurityModeType' . mk) <$> takeText

instance ToText AdvancedSecurityModeType where
  toText (AdvancedSecurityModeType' ci) = original ci

instance Hashable AdvancedSecurityModeType

instance NFData AdvancedSecurityModeType

instance ToByteString AdvancedSecurityModeType

instance ToQuery AdvancedSecurityModeType

instance ToHeader AdvancedSecurityModeType

instance ToJSON AdvancedSecurityModeType where
  toJSON = toJSONText

instance FromJSON AdvancedSecurityModeType where
  parseJSON = parseJSONText "AdvancedSecurityModeType"
