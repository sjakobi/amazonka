{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ExportEnvironment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ExportEnvironment
  ( ExportEnvironment
      ( ..,
        Citrix,
        Microsoft,
        VMware
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ExportEnvironment = ExportEnvironment' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Citrix :: ExportEnvironment
pattern Citrix = ExportEnvironment' "citrix"

pattern Microsoft :: ExportEnvironment
pattern Microsoft = ExportEnvironment' "microsoft"

pattern VMware :: ExportEnvironment
pattern VMware = ExportEnvironment' "vmware"

{-# COMPLETE
  Citrix,
  Microsoft,
  VMware,
  ExportEnvironment'
  #-}

instance FromText ExportEnvironment where
  parser = (ExportEnvironment' . mk) <$> takeText

instance ToText ExportEnvironment where
  toText (ExportEnvironment' ci) = original ci

instance Hashable ExportEnvironment

instance NFData ExportEnvironment

instance ToByteString ExportEnvironment

instance ToQuery ExportEnvironment

instance ToHeader ExportEnvironment

instance FromXML ExportEnvironment where
  parseXML = parseXMLText "ExportEnvironment"
