{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.ParameterApplyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ParameterApplyType
  ( ParameterApplyType
      ( ..,
        Dynamic,
        Static
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

data ParameterApplyType
  = ParameterApplyType'
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

pattern Dynamic :: ParameterApplyType
pattern Dynamic = ParameterApplyType' "dynamic"

pattern Static :: ParameterApplyType
pattern Static = ParameterApplyType' "static"

{-# COMPLETE
  Dynamic,
  Static,
  ParameterApplyType'
  #-}

instance FromText ParameterApplyType where
  parser = (ParameterApplyType' . mk) <$> takeText

instance ToText ParameterApplyType where
  toText (ParameterApplyType' ci) = original ci

instance Hashable ParameterApplyType

instance NFData ParameterApplyType

instance ToByteString ParameterApplyType

instance ToQuery ParameterApplyType

instance ToHeader ParameterApplyType

instance FromXML ParameterApplyType where
  parseXML = parseXMLText "ParameterApplyType"
