{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.DescribeActivationsFilterKeys
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DescribeActivationsFilterKeys
  ( DescribeActivationsFilterKeys
      ( ..,
        ActivationIds,
        DefaultInstanceName,
        IAMRole
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DescribeActivationsFilterKeys
  = DescribeActivationsFilterKeys'
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

pattern ActivationIds :: DescribeActivationsFilterKeys
pattern ActivationIds = DescribeActivationsFilterKeys' "ActivationIds"

pattern DefaultInstanceName :: DescribeActivationsFilterKeys
pattern DefaultInstanceName = DescribeActivationsFilterKeys' "DefaultInstanceName"

pattern IAMRole :: DescribeActivationsFilterKeys
pattern IAMRole = DescribeActivationsFilterKeys' "IamRole"

{-# COMPLETE
  ActivationIds,
  DefaultInstanceName,
  IAMRole,
  DescribeActivationsFilterKeys'
  #-}

instance FromText DescribeActivationsFilterKeys where
  parser = (DescribeActivationsFilterKeys' . mk) <$> takeText

instance ToText DescribeActivationsFilterKeys where
  toText (DescribeActivationsFilterKeys' ci) = original ci

instance Hashable DescribeActivationsFilterKeys

instance NFData DescribeActivationsFilterKeys

instance ToByteString DescribeActivationsFilterKeys

instance ToQuery DescribeActivationsFilterKeys

instance ToHeader DescribeActivationsFilterKeys

instance ToJSON DescribeActivationsFilterKeys where
  toJSON = toJSONText
