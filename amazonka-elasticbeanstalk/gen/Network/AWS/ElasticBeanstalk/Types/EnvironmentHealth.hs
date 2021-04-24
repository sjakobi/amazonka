{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.EnvironmentHealth
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.EnvironmentHealth
  ( EnvironmentHealth
      ( ..,
        Green,
        Grey,
        Red,
        Yellow
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EnvironmentHealth = EnvironmentHealth' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Green :: EnvironmentHealth
pattern Green = EnvironmentHealth' "Green"

pattern Grey :: EnvironmentHealth
pattern Grey = EnvironmentHealth' "Grey"

pattern Red :: EnvironmentHealth
pattern Red = EnvironmentHealth' "Red"

pattern Yellow :: EnvironmentHealth
pattern Yellow = EnvironmentHealth' "Yellow"

{-# COMPLETE
  Green,
  Grey,
  Red,
  Yellow,
  EnvironmentHealth'
  #-}

instance FromText EnvironmentHealth where
  parser = (EnvironmentHealth' . mk) <$> takeText

instance ToText EnvironmentHealth where
  toText (EnvironmentHealth' ci) = original ci

instance Hashable EnvironmentHealth

instance NFData EnvironmentHealth

instance ToByteString EnvironmentHealth

instance ToQuery EnvironmentHealth

instance ToHeader EnvironmentHealth

instance FromXML EnvironmentHealth where
  parseXML = parseXMLText "EnvironmentHealth"
