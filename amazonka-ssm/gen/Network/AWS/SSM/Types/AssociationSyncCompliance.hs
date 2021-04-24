{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AssociationSyncCompliance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AssociationSyncCompliance
  ( AssociationSyncCompliance
      ( ..,
        Auto,
        Manual
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AssociationSyncCompliance
  = AssociationSyncCompliance'
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

pattern Auto :: AssociationSyncCompliance
pattern Auto = AssociationSyncCompliance' "AUTO"

pattern Manual :: AssociationSyncCompliance
pattern Manual = AssociationSyncCompliance' "MANUAL"

{-# COMPLETE
  Auto,
  Manual,
  AssociationSyncCompliance'
  #-}

instance FromText AssociationSyncCompliance where
  parser = (AssociationSyncCompliance' . mk) <$> takeText

instance ToText AssociationSyncCompliance where
  toText (AssociationSyncCompliance' ci) = original ci

instance Hashable AssociationSyncCompliance

instance NFData AssociationSyncCompliance

instance ToByteString AssociationSyncCompliance

instance ToQuery AssociationSyncCompliance

instance ToHeader AssociationSyncCompliance

instance ToJSON AssociationSyncCompliance where
  toJSON = toJSONText

instance FromJSON AssociationSyncCompliance where
  parseJSON = parseJSONText "AssociationSyncCompliance"
