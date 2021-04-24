{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.PolicyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.PolicyType
  ( PolicyType
      ( ..,
        Inline,
        Managed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PolicyType = PolicyType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Inline :: PolicyType
pattern Inline = PolicyType' "INLINE"

pattern Managed :: PolicyType
pattern Managed = PolicyType' "MANAGED"

{-# COMPLETE
  Inline,
  Managed,
  PolicyType'
  #-}

instance FromText PolicyType where
  parser = (PolicyType' . mk) <$> takeText

instance ToText PolicyType where
  toText (PolicyType' ci) = original ci

instance Hashable PolicyType

instance NFData PolicyType

instance ToByteString PolicyType

instance ToQuery PolicyType

instance ToHeader PolicyType

instance FromXML PolicyType where
  parseXML = parseXMLText "PolicyType"
