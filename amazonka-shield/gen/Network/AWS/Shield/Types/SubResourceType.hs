{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Shield.Types.SubResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types.SubResourceType
  ( SubResourceType
      ( ..,
        IP,
        URL
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SubResourceType = SubResourceType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern IP :: SubResourceType
pattern IP = SubResourceType' "IP"

pattern URL :: SubResourceType
pattern URL = SubResourceType' "URL"

{-# COMPLETE
  IP,
  URL,
  SubResourceType'
  #-}

instance FromText SubResourceType where
  parser = (SubResourceType' . mk) <$> takeText

instance ToText SubResourceType where
  toText (SubResourceType' ci) = original ci

instance Hashable SubResourceType

instance NFData SubResourceType

instance ToByteString SubResourceType

instance ToQuery SubResourceType

instance ToHeader SubResourceType

instance FromJSON SubResourceType where
  parseJSON = parseJSONText "SubResourceType"
