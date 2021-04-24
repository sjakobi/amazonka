{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.ScopeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.ScopeType
  ( ScopeType
      ( ..,
        InstanceId,
        RulesPackageARN
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ScopeType = ScopeType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern InstanceId :: ScopeType
pattern InstanceId = ScopeType' "INSTANCE_ID"

pattern RulesPackageARN :: ScopeType
pattern RulesPackageARN = ScopeType' "RULES_PACKAGE_ARN"

{-# COMPLETE
  InstanceId,
  RulesPackageARN,
  ScopeType'
  #-}

instance FromText ScopeType where
  parser = (ScopeType' . mk) <$> takeText

instance ToText ScopeType where
  toText (ScopeType' ci) = original ci

instance Hashable ScopeType

instance NFData ScopeType

instance ToByteString ScopeType

instance ToQuery ScopeType

instance ToHeader ScopeType

instance FromJSON ScopeType where
  parseJSON = parseJSONText "ScopeType"
