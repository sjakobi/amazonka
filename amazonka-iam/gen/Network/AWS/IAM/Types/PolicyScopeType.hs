{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.PolicyScopeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.PolicyScopeType
  ( PolicyScopeType
      ( ..,
        AWS,
        All,
        Local
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PolicyScopeType = PolicyScopeType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AWS :: PolicyScopeType
pattern AWS = PolicyScopeType' "AWS"

pattern All :: PolicyScopeType
pattern All = PolicyScopeType' "All"

pattern Local :: PolicyScopeType
pattern Local = PolicyScopeType' "Local"

{-# COMPLETE
  AWS,
  All,
  Local,
  PolicyScopeType'
  #-}

instance FromText PolicyScopeType where
  parser = (PolicyScopeType' . mk) <$> takeText

instance ToText PolicyScopeType where
  toText (PolicyScopeType' ci) = original ci

instance Hashable PolicyScopeType

instance NFData PolicyScopeType

instance ToByteString PolicyScopeType

instance ToQuery PolicyScopeType

instance ToHeader PolicyScopeType
