{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.RightsizingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.RightsizingType
  ( RightsizingType
      ( ..,
        Modify,
        Terminate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RightsizingType = RightsizingType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Modify :: RightsizingType
pattern Modify = RightsizingType' "MODIFY"

pattern Terminate :: RightsizingType
pattern Terminate = RightsizingType' "TERMINATE"

{-# COMPLETE
  Modify,
  Terminate,
  RightsizingType'
  #-}

instance FromText RightsizingType where
  parser = (RightsizingType' . mk) <$> takeText

instance ToText RightsizingType where
  toText (RightsizingType' ci) = original ci

instance Hashable RightsizingType

instance NFData RightsizingType

instance ToByteString RightsizingType

instance ToQuery RightsizingType

instance ToHeader RightsizingType

instance FromJSON RightsizingType where
  parseJSON = parseJSONText "RightsizingType"
