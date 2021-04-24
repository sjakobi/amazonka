{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.LayerAvailability
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.LayerAvailability
  ( LayerAvailability
      ( ..,
        Available,
        Unavailable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LayerAvailability = LayerAvailability' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Available :: LayerAvailability
pattern Available = LayerAvailability' "AVAILABLE"

pattern Unavailable :: LayerAvailability
pattern Unavailable = LayerAvailability' "UNAVAILABLE"

{-# COMPLETE
  Available,
  Unavailable,
  LayerAvailability'
  #-}

instance FromText LayerAvailability where
  parser = (LayerAvailability' . mk) <$> takeText

instance ToText LayerAvailability where
  toText (LayerAvailability' ci) = original ci

instance Hashable LayerAvailability

instance NFData LayerAvailability

instance ToByteString LayerAvailability

instance ToQuery LayerAvailability

instance ToHeader LayerAvailability

instance FromJSON LayerAvailability where
  parseJSON = parseJSONText "LayerAvailability"
