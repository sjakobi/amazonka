{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.InstanceLifecycle
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceLifecycle
  ( InstanceLifecycle
      ( ..,
        ILOnDemand,
        ILSpot
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data InstanceLifecycle = InstanceLifecycle' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ILOnDemand :: InstanceLifecycle
pattern ILOnDemand = InstanceLifecycle' "on-demand"

pattern ILSpot :: InstanceLifecycle
pattern ILSpot = InstanceLifecycle' "spot"

{-# COMPLETE
  ILOnDemand,
  ILSpot,
  InstanceLifecycle'
  #-}

instance FromText InstanceLifecycle where
  parser = (InstanceLifecycle' . mk) <$> takeText

instance ToText InstanceLifecycle where
  toText (InstanceLifecycle' ci) = original ci

instance Hashable InstanceLifecycle

instance NFData InstanceLifecycle

instance ToByteString InstanceLifecycle

instance ToQuery InstanceLifecycle

instance ToHeader InstanceLifecycle

instance FromXML InstanceLifecycle where
  parseXML = parseXMLText "InstanceLifecycle"
