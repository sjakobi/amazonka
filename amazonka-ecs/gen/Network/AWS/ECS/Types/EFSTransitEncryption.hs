{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.EFSTransitEncryption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.EFSTransitEncryption
  ( EFSTransitEncryption
      ( ..,
        EFSTEDisabled,
        EFSTEEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EFSTransitEncryption
  = EFSTransitEncryption'
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

pattern EFSTEDisabled :: EFSTransitEncryption
pattern EFSTEDisabled = EFSTransitEncryption' "DISABLED"

pattern EFSTEEnabled :: EFSTransitEncryption
pattern EFSTEEnabled = EFSTransitEncryption' "ENABLED"

{-# COMPLETE
  EFSTEDisabled,
  EFSTEEnabled,
  EFSTransitEncryption'
  #-}

instance FromText EFSTransitEncryption where
  parser = (EFSTransitEncryption' . mk) <$> takeText

instance ToText EFSTransitEncryption where
  toText (EFSTransitEncryption' ci) = original ci

instance Hashable EFSTransitEncryption

instance NFData EFSTransitEncryption

instance ToByteString EFSTransitEncryption

instance ToQuery EFSTransitEncryption

instance ToHeader EFSTransitEncryption

instance ToJSON EFSTransitEncryption where
  toJSON = toJSONText

instance FromJSON EFSTransitEncryption where
  parseJSON = parseJSONText "EFSTransitEncryption"
