{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Organizations.Types.ParentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.ParentType
  ( ParentType
      ( ..,
        OrganizationalUnit,
        Root
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ParentType = ParentType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern OrganizationalUnit :: ParentType
pattern OrganizationalUnit = ParentType' "ORGANIZATIONAL_UNIT"

pattern Root :: ParentType
pattern Root = ParentType' "ROOT"

{-# COMPLETE
  OrganizationalUnit,
  Root,
  ParentType'
  #-}

instance FromText ParentType where
  parser = (ParentType' . mk) <$> takeText

instance ToText ParentType where
  toText (ParentType' ci) = original ci

instance Hashable ParentType

instance NFData ParentType

instance ToByteString ParentType

instance ToQuery ParentType

instance ToHeader ParentType

instance FromJSON ParentType where
  parseJSON = parseJSONText "ParentType"
