{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.NetworkInterfaceAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.NetworkInterfaceAttribute
  ( NetworkInterfaceAttribute
      ( ..,
        Attachment,
        Description,
        GroupSet,
        SourceDestCheck
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data NetworkInterfaceAttribute
  = NetworkInterfaceAttribute'
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

pattern Attachment :: NetworkInterfaceAttribute
pattern Attachment = NetworkInterfaceAttribute' "attachment"

pattern Description :: NetworkInterfaceAttribute
pattern Description = NetworkInterfaceAttribute' "description"

pattern GroupSet :: NetworkInterfaceAttribute
pattern GroupSet = NetworkInterfaceAttribute' "groupSet"

pattern SourceDestCheck :: NetworkInterfaceAttribute
pattern SourceDestCheck = NetworkInterfaceAttribute' "sourceDestCheck"

{-# COMPLETE
  Attachment,
  Description,
  GroupSet,
  SourceDestCheck,
  NetworkInterfaceAttribute'
  #-}

instance FromText NetworkInterfaceAttribute where
  parser = (NetworkInterfaceAttribute' . mk) <$> takeText

instance ToText NetworkInterfaceAttribute where
  toText (NetworkInterfaceAttribute' ci) = original ci

instance Hashable NetworkInterfaceAttribute

instance NFData NetworkInterfaceAttribute

instance ToByteString NetworkInterfaceAttribute

instance ToQuery NetworkInterfaceAttribute

instance ToHeader NetworkInterfaceAttribute
