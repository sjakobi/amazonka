{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AllowsMultipleInstanceTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AllowsMultipleInstanceTypes
  ( AllowsMultipleInstanceTypes
      ( ..,
        AMITON,
        AMITOff
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data AllowsMultipleInstanceTypes
  = AllowsMultipleInstanceTypes'
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

pattern AMITON :: AllowsMultipleInstanceTypes
pattern AMITON = AllowsMultipleInstanceTypes' "on"

pattern AMITOff :: AllowsMultipleInstanceTypes
pattern AMITOff = AllowsMultipleInstanceTypes' "off"

{-# COMPLETE
  AMITON,
  AMITOff,
  AllowsMultipleInstanceTypes'
  #-}

instance FromText AllowsMultipleInstanceTypes where
  parser = (AllowsMultipleInstanceTypes' . mk) <$> takeText

instance ToText AllowsMultipleInstanceTypes where
  toText (AllowsMultipleInstanceTypes' ci) = original ci

instance Hashable AllowsMultipleInstanceTypes

instance NFData AllowsMultipleInstanceTypes

instance ToByteString AllowsMultipleInstanceTypes

instance ToQuery AllowsMultipleInstanceTypes

instance ToHeader AllowsMultipleInstanceTypes

instance FromXML AllowsMultipleInstanceTypes where
  parseXML = parseXMLText "AllowsMultipleInstanceTypes"
