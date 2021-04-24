{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.ConfigurationOptionValueType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.ConfigurationOptionValueType
  ( ConfigurationOptionValueType
      ( ..,
        List,
        Scalar
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConfigurationOptionValueType
  = ConfigurationOptionValueType'
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

pattern List :: ConfigurationOptionValueType
pattern List = ConfigurationOptionValueType' "List"

pattern Scalar :: ConfigurationOptionValueType
pattern Scalar = ConfigurationOptionValueType' "Scalar"

{-# COMPLETE
  List,
  Scalar,
  ConfigurationOptionValueType'
  #-}

instance FromText ConfigurationOptionValueType where
  parser = (ConfigurationOptionValueType' . mk) <$> takeText

instance ToText ConfigurationOptionValueType where
  toText (ConfigurationOptionValueType' ci) = original ci

instance Hashable ConfigurationOptionValueType

instance NFData ConfigurationOptionValueType

instance ToByteString ConfigurationOptionValueType

instance ToQuery ConfigurationOptionValueType

instance ToHeader ConfigurationOptionValueType

instance FromXML ConfigurationOptionValueType where
  parseXML = parseXMLText "ConfigurationOptionValueType"
