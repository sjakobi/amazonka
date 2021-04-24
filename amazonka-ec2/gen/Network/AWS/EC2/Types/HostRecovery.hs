{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.HostRecovery
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.HostRecovery
  ( HostRecovery
      ( ..,
        HRON,
        HROff
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data HostRecovery = HostRecovery' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HRON :: HostRecovery
pattern HRON = HostRecovery' "on"

pattern HROff :: HostRecovery
pattern HROff = HostRecovery' "off"

{-# COMPLETE
  HRON,
  HROff,
  HostRecovery'
  #-}

instance FromText HostRecovery where
  parser = (HostRecovery' . mk) <$> takeText

instance ToText HostRecovery where
  toText (HostRecovery' ci) = original ci

instance Hashable HostRecovery

instance NFData HostRecovery

instance ToByteString HostRecovery

instance ToQuery HostRecovery

instance ToHeader HostRecovery

instance FromXML HostRecovery where
  parseXML = parseXMLText "HostRecovery"
