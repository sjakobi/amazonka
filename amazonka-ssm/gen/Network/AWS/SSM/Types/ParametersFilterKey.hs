{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.ParametersFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ParametersFilterKey
  ( ParametersFilterKey
      ( ..,
        PKeyId,
        PName,
        PType
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ParametersFilterKey
  = ParametersFilterKey'
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

pattern PKeyId :: ParametersFilterKey
pattern PKeyId = ParametersFilterKey' "KeyId"

pattern PName :: ParametersFilterKey
pattern PName = ParametersFilterKey' "Name"

pattern PType :: ParametersFilterKey
pattern PType = ParametersFilterKey' "Type"

{-# COMPLETE
  PKeyId,
  PName,
  PType,
  ParametersFilterKey'
  #-}

instance FromText ParametersFilterKey where
  parser = (ParametersFilterKey' . mk) <$> takeText

instance ToText ParametersFilterKey where
  toText (ParametersFilterKey' ci) = original ci

instance Hashable ParametersFilterKey

instance NFData ParametersFilterKey

instance ToByteString ParametersFilterKey

instance ToQuery ParametersFilterKey

instance ToHeader ParametersFilterKey

instance ToJSON ParametersFilterKey where
  toJSON = toJSONText
