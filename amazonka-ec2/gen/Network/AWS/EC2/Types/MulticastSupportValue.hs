{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.MulticastSupportValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.MulticastSupportValue
  ( MulticastSupportValue
      ( ..,
        MSVDisable,
        MSVEnable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data MulticastSupportValue
  = MulticastSupportValue'
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

pattern MSVDisable :: MulticastSupportValue
pattern MSVDisable = MulticastSupportValue' "disable"

pattern MSVEnable :: MulticastSupportValue
pattern MSVEnable = MulticastSupportValue' "enable"

{-# COMPLETE
  MSVDisable,
  MSVEnable,
  MulticastSupportValue'
  #-}

instance FromText MulticastSupportValue where
  parser = (MulticastSupportValue' . mk) <$> takeText

instance ToText MulticastSupportValue where
  toText (MulticastSupportValue' ci) = original ci

instance Hashable MulticastSupportValue

instance NFData MulticastSupportValue

instance ToByteString MulticastSupportValue

instance ToQuery MulticastSupportValue

instance ToHeader MulticastSupportValue

instance FromXML MulticastSupportValue where
  parseXML = parseXMLText "MulticastSupportValue"
