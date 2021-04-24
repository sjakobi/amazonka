{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.EnvironmentInfoType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.EnvironmentInfoType
  ( EnvironmentInfoType
      ( ..,
        Bundle,
        Tail
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EnvironmentInfoType
  = EnvironmentInfoType'
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

pattern Bundle :: EnvironmentInfoType
pattern Bundle = EnvironmentInfoType' "bundle"

pattern Tail :: EnvironmentInfoType
pattern Tail = EnvironmentInfoType' "tail"

{-# COMPLETE
  Bundle,
  Tail,
  EnvironmentInfoType'
  #-}

instance FromText EnvironmentInfoType where
  parser = (EnvironmentInfoType' . mk) <$> takeText

instance ToText EnvironmentInfoType where
  toText (EnvironmentInfoType' ci) = original ci

instance Hashable EnvironmentInfoType

instance NFData EnvironmentInfoType

instance ToByteString EnvironmentInfoType

instance ToQuery EnvironmentInfoType

instance ToHeader EnvironmentInfoType

instance FromXML EnvironmentInfoType where
  parseXML = parseXMLText "EnvironmentInfoType"
