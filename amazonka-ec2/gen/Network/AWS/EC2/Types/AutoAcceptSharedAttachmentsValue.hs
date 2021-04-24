{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AutoAcceptSharedAttachmentsValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AutoAcceptSharedAttachmentsValue
  ( AutoAcceptSharedAttachmentsValue
      ( ..,
        AASAVDisable,
        AASAVEnable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data AutoAcceptSharedAttachmentsValue
  = AutoAcceptSharedAttachmentsValue'
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

pattern AASAVDisable :: AutoAcceptSharedAttachmentsValue
pattern AASAVDisable = AutoAcceptSharedAttachmentsValue' "disable"

pattern AASAVEnable :: AutoAcceptSharedAttachmentsValue
pattern AASAVEnable = AutoAcceptSharedAttachmentsValue' "enable"

{-# COMPLETE
  AASAVDisable,
  AASAVEnable,
  AutoAcceptSharedAttachmentsValue'
  #-}

instance FromText AutoAcceptSharedAttachmentsValue where
  parser = (AutoAcceptSharedAttachmentsValue' . mk) <$> takeText

instance ToText AutoAcceptSharedAttachmentsValue where
  toText (AutoAcceptSharedAttachmentsValue' ci) = original ci

instance Hashable AutoAcceptSharedAttachmentsValue

instance NFData AutoAcceptSharedAttachmentsValue

instance ToByteString AutoAcceptSharedAttachmentsValue

instance ToQuery AutoAcceptSharedAttachmentsValue

instance ToHeader AutoAcceptSharedAttachmentsValue

instance FromXML AutoAcceptSharedAttachmentsValue where
  parseXML = parseXMLText "AutoAcceptSharedAttachmentsValue"
