{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.DifferenceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.DifferenceType
  ( DifferenceType
      ( ..,
        Add,
        NotEqual,
        Remove
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DifferenceType = DifferenceType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Add :: DifferenceType
pattern Add = DifferenceType' "ADD"

pattern NotEqual :: DifferenceType
pattern NotEqual = DifferenceType' "NOT_EQUAL"

pattern Remove :: DifferenceType
pattern Remove = DifferenceType' "REMOVE"

{-# COMPLETE
  Add,
  NotEqual,
  Remove,
  DifferenceType'
  #-}

instance FromText DifferenceType where
  parser = (DifferenceType' . mk) <$> takeText

instance ToText DifferenceType where
  toText (DifferenceType' ci) = original ci

instance Hashable DifferenceType

instance NFData DifferenceType

instance ToByteString DifferenceType

instance ToQuery DifferenceType

instance ToHeader DifferenceType

instance FromXML DifferenceType where
  parseXML = parseXMLText "DifferenceType"
