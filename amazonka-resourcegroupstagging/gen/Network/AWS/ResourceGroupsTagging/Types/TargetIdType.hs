{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroupsTagging.Types.TargetIdType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroupsTagging.Types.TargetIdType
  ( TargetIdType
      ( ..,
        Account,
        OU,
        Root
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TargetIdType = TargetIdType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Account :: TargetIdType
pattern Account = TargetIdType' "ACCOUNT"

pattern OU :: TargetIdType
pattern OU = TargetIdType' "OU"

pattern Root :: TargetIdType
pattern Root = TargetIdType' "ROOT"

{-# COMPLETE
  Account,
  OU,
  Root,
  TargetIdType'
  #-}

instance FromText TargetIdType where
  parser = (TargetIdType' . mk) <$> takeText

instance ToText TargetIdType where
  toText (TargetIdType' ci) = original ci

instance Hashable TargetIdType

instance NFData TargetIdType

instance ToByteString TargetIdType

instance ToQuery TargetIdType

instance ToHeader TargetIdType

instance FromJSON TargetIdType where
  parseJSON = parseJSONText "TargetIdType"
