{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AssociationStatusName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AssociationStatusName
  ( AssociationStatusName
      ( ..,
        Failed,
        Pending,
        Success
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AssociationStatusName
  = AssociationStatusName'
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

pattern Failed :: AssociationStatusName
pattern Failed = AssociationStatusName' "Failed"

pattern Pending :: AssociationStatusName
pattern Pending = AssociationStatusName' "Pending"

pattern Success :: AssociationStatusName
pattern Success = AssociationStatusName' "Success"

{-# COMPLETE
  Failed,
  Pending,
  Success,
  AssociationStatusName'
  #-}

instance FromText AssociationStatusName where
  parser = (AssociationStatusName' . mk) <$> takeText

instance ToText AssociationStatusName where
  toText (AssociationStatusName' ci) = original ci

instance Hashable AssociationStatusName

instance NFData AssociationStatusName

instance ToByteString AssociationStatusName

instance ToQuery AssociationStatusName

instance ToHeader AssociationStatusName

instance ToJSON AssociationStatusName where
  toJSON = toJSONText

instance FromJSON AssociationStatusName where
  parseJSON = parseJSONText "AssociationStatusName"
