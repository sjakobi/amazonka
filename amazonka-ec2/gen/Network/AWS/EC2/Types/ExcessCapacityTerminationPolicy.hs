{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ExcessCapacityTerminationPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ExcessCapacityTerminationPolicy
  ( ExcessCapacityTerminationPolicy
      ( ..,
        ECTPDefault,
        ECTPNoTermination
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ExcessCapacityTerminationPolicy
  = ExcessCapacityTerminationPolicy'
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

pattern ECTPDefault :: ExcessCapacityTerminationPolicy
pattern ECTPDefault = ExcessCapacityTerminationPolicy' "default"

pattern ECTPNoTermination :: ExcessCapacityTerminationPolicy
pattern ECTPNoTermination = ExcessCapacityTerminationPolicy' "noTermination"

{-# COMPLETE
  ECTPDefault,
  ECTPNoTermination,
  ExcessCapacityTerminationPolicy'
  #-}

instance FromText ExcessCapacityTerminationPolicy where
  parser = (ExcessCapacityTerminationPolicy' . mk) <$> takeText

instance ToText ExcessCapacityTerminationPolicy where
  toText (ExcessCapacityTerminationPolicy' ci) = original ci

instance Hashable ExcessCapacityTerminationPolicy

instance NFData ExcessCapacityTerminationPolicy

instance ToByteString ExcessCapacityTerminationPolicy

instance ToQuery ExcessCapacityTerminationPolicy

instance ToHeader ExcessCapacityTerminationPolicy

instance FromXML ExcessCapacityTerminationPolicy where
  parseXML = parseXMLText "ExcessCapacityTerminationPolicy"
