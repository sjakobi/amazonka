{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.Compute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.Compute
  ( Compute
      ( ..,
        Graphics,
        Graphicspro,
        Performance,
        Power,
        Powerpro,
        Standard,
        Value
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Compute = Compute' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Graphics :: Compute
pattern Graphics = Compute' "GRAPHICS"

pattern Graphicspro :: Compute
pattern Graphicspro = Compute' "GRAPHICSPRO"

pattern Performance :: Compute
pattern Performance = Compute' "PERFORMANCE"

pattern Power :: Compute
pattern Power = Compute' "POWER"

pattern Powerpro :: Compute
pattern Powerpro = Compute' "POWERPRO"

pattern Standard :: Compute
pattern Standard = Compute' "STANDARD"

pattern Value :: Compute
pattern Value = Compute' "VALUE"

{-# COMPLETE
  Graphics,
  Graphicspro,
  Performance,
  Power,
  Powerpro,
  Standard,
  Value,
  Compute'
  #-}

instance FromText Compute where
  parser = (Compute' . mk) <$> takeText

instance ToText Compute where
  toText (Compute' ci) = original ci

instance Hashable Compute

instance NFData Compute

instance ToByteString Compute

instance ToQuery Compute

instance ToHeader Compute

instance ToJSON Compute where
  toJSON = toJSONText

instance FromJSON Compute where
  parseJSON = parseJSONText "Compute"
