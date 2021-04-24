{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.RootDeviceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.RootDeviceType
  ( RootDeviceType
      ( ..,
        EBS,
        InstanceStore
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data RootDeviceType = RootDeviceType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern EBS :: RootDeviceType
pattern EBS = RootDeviceType' "ebs"

pattern InstanceStore :: RootDeviceType
pattern InstanceStore = RootDeviceType' "instance-store"

{-# COMPLETE
  EBS,
  InstanceStore,
  RootDeviceType'
  #-}

instance FromText RootDeviceType where
  parser = (RootDeviceType' . mk) <$> takeText

instance ToText RootDeviceType where
  toText (RootDeviceType' ci) = original ci

instance Hashable RootDeviceType

instance NFData RootDeviceType

instance ToByteString RootDeviceType

instance ToQuery RootDeviceType

instance ToHeader RootDeviceType

instance FromXML RootDeviceType where
  parseXML = parseXMLText "RootDeviceType"
