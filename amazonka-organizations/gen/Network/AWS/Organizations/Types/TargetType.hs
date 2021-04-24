{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Organizations.Types.TargetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.TargetType
  ( TargetType
      ( ..,
        TTAccount,
        TTOrganizationalUnit,
        TTRoot
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TargetType = TargetType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TTAccount :: TargetType
pattern TTAccount = TargetType' "ACCOUNT"

pattern TTOrganizationalUnit :: TargetType
pattern TTOrganizationalUnit = TargetType' "ORGANIZATIONAL_UNIT"

pattern TTRoot :: TargetType
pattern TTRoot = TargetType' "ROOT"

{-# COMPLETE
  TTAccount,
  TTOrganizationalUnit,
  TTRoot,
  TargetType'
  #-}

instance FromText TargetType where
  parser = (TargetType' . mk) <$> takeText

instance ToText TargetType where
  toText (TargetType' ci) = original ci

instance Hashable TargetType

instance NFData TargetType

instance ToByteString TargetType

instance ToQuery TargetType

instance ToHeader TargetType

instance FromJSON TargetType where
  parseJSON = parseJSONText "TargetType"
