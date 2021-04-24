{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.ObjectLockMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ObjectLockMode
  ( ObjectLockMode
      ( ..,
        OLMCompliance,
        OLMGovernance
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data ObjectLockMode = ObjectLockMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern OLMCompliance :: ObjectLockMode
pattern OLMCompliance = ObjectLockMode' "COMPLIANCE"

pattern OLMGovernance :: ObjectLockMode
pattern OLMGovernance = ObjectLockMode' "GOVERNANCE"

{-# COMPLETE
  OLMCompliance,
  OLMGovernance,
  ObjectLockMode'
  #-}

instance FromText ObjectLockMode where
  parser = (ObjectLockMode' . mk) <$> takeText

instance ToText ObjectLockMode where
  toText (ObjectLockMode' ci) = original ci

instance Hashable ObjectLockMode

instance NFData ObjectLockMode

instance ToByteString ObjectLockMode

instance ToQuery ObjectLockMode

instance ToHeader ObjectLockMode

instance FromXML ObjectLockMode where
  parseXML = parseXMLText "ObjectLockMode"

instance ToXML ObjectLockMode where
  toXML = toXMLText
