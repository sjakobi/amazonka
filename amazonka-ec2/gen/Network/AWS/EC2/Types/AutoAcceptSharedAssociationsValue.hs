{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AutoAcceptSharedAssociationsValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AutoAcceptSharedAssociationsValue
  ( AutoAcceptSharedAssociationsValue
      ( ..,
        ADisable,
        AEnable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data AutoAcceptSharedAssociationsValue
  = AutoAcceptSharedAssociationsValue'
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

pattern ADisable :: AutoAcceptSharedAssociationsValue
pattern ADisable = AutoAcceptSharedAssociationsValue' "disable"

pattern AEnable :: AutoAcceptSharedAssociationsValue
pattern AEnable = AutoAcceptSharedAssociationsValue' "enable"

{-# COMPLETE
  ADisable,
  AEnable,
  AutoAcceptSharedAssociationsValue'
  #-}

instance FromText AutoAcceptSharedAssociationsValue where
  parser = (AutoAcceptSharedAssociationsValue' . mk) <$> takeText

instance ToText AutoAcceptSharedAssociationsValue where
  toText (AutoAcceptSharedAssociationsValue' ci) = original ci

instance Hashable AutoAcceptSharedAssociationsValue

instance NFData AutoAcceptSharedAssociationsValue

instance ToByteString AutoAcceptSharedAssociationsValue

instance ToQuery AutoAcceptSharedAssociationsValue

instance ToHeader AutoAcceptSharedAssociationsValue

instance FromXML AutoAcceptSharedAssociationsValue where
  parseXML = parseXMLText "AutoAcceptSharedAssociationsValue"
