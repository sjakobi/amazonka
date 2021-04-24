{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Organizations.Types.ChildType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.ChildType
  ( ChildType
      ( ..,
        CTAccount,
        CTOrganizationalUnit
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ChildType = ChildType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CTAccount :: ChildType
pattern CTAccount = ChildType' "ACCOUNT"

pattern CTOrganizationalUnit :: ChildType
pattern CTOrganizationalUnit = ChildType' "ORGANIZATIONAL_UNIT"

{-# COMPLETE
  CTAccount,
  CTOrganizationalUnit,
  ChildType'
  #-}

instance FromText ChildType where
  parser = (ChildType' . mk) <$> takeText

instance ToText ChildType where
  toText (ChildType' ci) = original ci

instance Hashable ChildType

instance NFData ChildType

instance ToByteString ChildType

instance ToQuery ChildType

instance ToHeader ChildType

instance ToJSON ChildType where
  toJSON = toJSONText

instance FromJSON ChildType where
  parseJSON = parseJSONText "ChildType"
