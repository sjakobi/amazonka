{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.StackInstanceFilterName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackInstanceFilterName
  ( StackInstanceFilterName
      ( ..,
        DetailedStatus
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StackInstanceFilterName
  = StackInstanceFilterName'
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

pattern DetailedStatus :: StackInstanceFilterName
pattern DetailedStatus = StackInstanceFilterName' "DETAILED_STATUS"

{-# COMPLETE
  DetailedStatus,
  StackInstanceFilterName'
  #-}

instance FromText StackInstanceFilterName where
  parser = (StackInstanceFilterName' . mk) <$> takeText

instance ToText StackInstanceFilterName where
  toText (StackInstanceFilterName' ci) = original ci

instance Hashable StackInstanceFilterName

instance NFData StackInstanceFilterName

instance ToByteString StackInstanceFilterName

instance ToQuery StackInstanceFilterName

instance ToHeader StackInstanceFilterName
