{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.PermissionModels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.PermissionModels
  ( PermissionModels
      ( ..,
        SelfManaged,
        ServiceManaged
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PermissionModels = PermissionModels' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SelfManaged :: PermissionModels
pattern SelfManaged = PermissionModels' "SELF_MANAGED"

pattern ServiceManaged :: PermissionModels
pattern ServiceManaged = PermissionModels' "SERVICE_MANAGED"

{-# COMPLETE
  SelfManaged,
  ServiceManaged,
  PermissionModels'
  #-}

instance FromText PermissionModels where
  parser = (PermissionModels' . mk) <$> takeText

instance ToText PermissionModels where
  toText (PermissionModels' ci) = original ci

instance Hashable PermissionModels

instance NFData PermissionModels

instance ToByteString PermissionModels

instance ToQuery PermissionModels

instance ToHeader PermissionModels

instance FromXML PermissionModels where
  parseXML = parseXMLText "PermissionModels"
