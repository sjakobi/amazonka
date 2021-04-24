{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ResourceAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ResourceAttribute
  ( ResourceAttribute
      ( ..,
        Creationpolicy,
        Deletionpolicy,
        Metadata,
        Properties,
        Tags,
        Updatepolicy
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ResourceAttribute = ResourceAttribute' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Creationpolicy :: ResourceAttribute
pattern Creationpolicy = ResourceAttribute' "CREATIONPOLICY"

pattern Deletionpolicy :: ResourceAttribute
pattern Deletionpolicy = ResourceAttribute' "DELETIONPOLICY"

pattern Metadata :: ResourceAttribute
pattern Metadata = ResourceAttribute' "METADATA"

pattern Properties :: ResourceAttribute
pattern Properties = ResourceAttribute' "PROPERTIES"

pattern Tags :: ResourceAttribute
pattern Tags = ResourceAttribute' "TAGS"

pattern Updatepolicy :: ResourceAttribute
pattern Updatepolicy = ResourceAttribute' "UPDATEPOLICY"

{-# COMPLETE
  Creationpolicy,
  Deletionpolicy,
  Metadata,
  Properties,
  Tags,
  Updatepolicy,
  ResourceAttribute'
  #-}

instance FromText ResourceAttribute where
  parser = (ResourceAttribute' . mk) <$> takeText

instance ToText ResourceAttribute where
  toText (ResourceAttribute' ci) = original ci

instance Hashable ResourceAttribute

instance NFData ResourceAttribute

instance ToByteString ResourceAttribute

instance ToQuery ResourceAttribute

instance ToHeader ResourceAttribute

instance FromJSON ResourceAttribute where
  parseJSON = parseJSONText "ResourceAttribute"
